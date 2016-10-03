#!/usr/bin/python

from contextlib import contextmanager
from collections import defaultdict
import csv
from math import exp, pi, sqrt
import os
import random
import re
from subprocess import check_call, Popen, PIPE, CalledProcessError
import sys
import tempfile

root = os.path.dirname( os.path.dirname( os.path.abspath( sys.argv[ 0 ] ) ) )
sys.path.append( os.path.join( root, "lib" ) )
from util import infomsg, mktemp

if __name__ != "__main__":
    __all__ = [ "get_localization" ]
else:
    from optparse import OptionParser

    parser = OptionParser( usage = "%prog [options]" )
    parser.disable_interspersed_args()
    parser.add_option(
        "-a", "--asm", metavar = "file", action = "append", default = list(),
        help = "assembly file to include in coverage"
    )
    parser.add_option(
        "--asm-files", metavar = "file",
        help = "read names of assembly files from a file"
    )
    parser.add_option(
        "-o", "--output", metavar = "file", default = "/dev/stdout",
        help = "write profile info to named file"
    )
    # parser.add_option(
    #     "-r", "--repeat", metavar = "N", type = int, default = 1,
    #     help = "run the command N times"
    # )
    # parser.add_option(
    #     "-s", "--smooth", metavar = "width", type = int,
    #     help = "apply Gaussian smoothing with standard deviation = width"
    # )
    options, args = parser.parse_args()

label    = re.compile( r"^[._A-Za-z0-9]+:" )

class MisalignedCodeError(Exception):
    def __init__( self, message, lhs = None, rhs = None ):
        self.message = message
        self.lhs     = lhs
        self.rhs     = rhs

    def __repr__( self ):
        rep = "MisalignedCodeError(" + repr( self.message )
        if self.lhs is not None:
            rep += "," + repr( self.lhs )
        if self.rhs is not None:
            rep += "," + repr( self.rhs )
        rep += ")"
        return rep

    def __str__( self ):
        s = self.message
        if self.lhs is not None:
            s += "\n    " + str( self.lhs )
        if self.rhs is not None:
            s += "\n    " + str( self.rhs )
        return s

synonyms = {
    "cmovnb": "cmovae",
    "je":     "jz",
    "jne":    "jnz",
    "jb":     "jnae",
    "jc":     "jnae",
    "jae":    "jnc",
    "jnb":    "jnc",
    "jbe":    "jna",
    "ja":     "jnbe",
    "jl":     "jnge",
    "jge":    "jnl",
    "jle":    "jng",
    "jg":     "jnle",
    "jp":     "jpe",
    "jnp":    "jpo",
    "jcxz":   "jecxz",
    "setnb":  "setae",
}

def isnop( instr ):
    while instr[ 0 ].startswith( "data32" ):
        instr.pop(0)
    if instr[ 0 ].startswith( "nop" ):
        return True
    if instr[ 0 ].startswith( "xchg" ) and instr[ 1 ].startswith( "%ax,%ax" ):
        return True
    return False

def instreq( instr1, instr2 ):
    op1, op2 = instr1[ 0 ], instr2[ 0 ]

    op1 = synonyms.get( op1, op1 )
    op2 = synonyms.get( op2, op2 )

    # X86 sal and shl instructions are the same
    if op1.startswith( "sal" ):
        op1 = op1.replace( "a", "h", 1 )
    if op2.startswith( "sal" ):
        op2 = op2.replace( "a", "h", 1 )

    if op1 == op2:
        return True
    if op1.startswith( op2 ) or op2.startswith( op1 ):
        return True
    return False

def align_functions( f1, f2, name ):
    aligned = list()
    i, j = 0, 0
    failure = None
    while i < len( f1 ) and j < len( f2 ):
        d1, s1 = f1[ i ]
        d2, s2 = f2[ j ]
        if instreq( s1, s2 ):
            aligned.append( ( d1, d2, s1, s2 ) )
            i += 1
            j += 1
        elif isnop( s1 ):
            i += 1
        elif isnop( s2 ):
            j += 1
        else:
            failure = MisalignedCodeError(
                "unexpected instruction pair:", f1[ i ], f2[ j ]
            )
            infomsg( "ERROR: unexpected instruction pair:" )
            infomsg( "   ", i, ":", f1[ i ] )
            infomsg( "   ", j, ":", f2[ j ] )
            infomsg( "in function", name )
            i+=1
            j+=1
    if failure is not None:
        raise failure
    for k, f in [ ( i, f1 ), ( j, f2 ) ]:
        while k < len( f ):
            if not isnop( f[ k ][ 1 ] ):
                raise MisalignedCodeError(
                    "unexpected final instruction:", f[ k ][ 1 ]
                )
            k += 1
    return aligned

def get_line_coverage( metrics, asmfuns ):
    for fname in asmfiles:
        for ( fname, fun ), instrs in assembly_funs( fname ):
            if not fun in metrics:
                infomsg(
                    "Warning: no annotations for %s:%s" % ( fname, fun ),
                    file = sys.stderr
                )
                continue
            try:
                lines = list( align_functions( instrs, metrics[ fun ], fun ) )
            except MisalignedCodeError as e:
                infomsg( "ERROR:", e )
                continue
            for line, cvg, _, _ in lines:
                yield fname, line, cvg

def assembly_instrs( fname ):
    with open( fname ) as fh:
        fun = None
        linenum = 0
        for line in fh:
            linenum += 1
            if line.strip()[ 0 ] == ".":
                terms = line.split()
                if terms[ 0 ] == ".type" and terms[ 2 ] == "@function":
                    fun = terms[ 1 ].rstrip( "," )
            elif not label.match( line ):
                yield fname, fun, linenum, line.split()

def assembly_funs( fname ):
    key = None
    instrs = list()
    for fname, fun, linenum, instr in assembly_instrs( fname ):
        if key != ( fname, fun ):
            if len( instrs ) > 0:
                yield key, instrs
            key = fname, fun
            instrs = list()
        instrs.append( ( linenum, instr ) )
    if len( instrs ) > 0:
        yield key, instrs

def report_rows( lines, sep = "\t" ):
    def split( line ):
        return tuple([ field.strip() for field in line.split( sep ) ])

    for line in lines:
        count, addr, fun, ins = split(line)
        yield count, addr, fun, ins
        
def get_metrics( data_file = "coverage.data" ):
    # Metrics maps functions to lists of ( count, instruction ) tuples
    metrics = defaultdict( list )
    # STATIC FUNCTIONS BAD, NEED TO FIX
    with open( data_file, 'r') as fh:
        for count, addr, fun, ins in report_rows( fh.readlines() ):
            metrics[ fun ].append( ( count, ins.split() ) )
    return metrics

    
def get_localization( asmfiles ):
    asmfuns = defaultdict( dict )
    for fname in asmfiles:
        for ( fname, fun ), instrs in assembly_funs( fname ):
            asmfuns[ fun ][ fname ] = instrs

    accum = defaultdict( lambda: 0.0 )
    
    localization = list()
    metrics = get_metrics()
    for fname, line, cvg in get_line_coverage( metrics, asmfuns ):
        accum[ fname, line ] += int(cvg)

    for fname, line in sorted( accum ):
        localization.append( ( fname, line, accum[ fname, line ] ) )

    return localization

if __name__ == "__main__":
    asmfiles = options.asm
    if options.asm_files is not None:
        with open( options.asm_files ) as fh:
            asmfiles += [ line.strip() for line in fh.readlines() ]
    unique = list()
    for fname in asmfiles:
        if not fname in unique:
            unique.append( fname )
    asmfiles = unique

    if len( asmfiles ) == 0:
        infomsg( "ERROR: no assembly files given" )
        exit( 1 )

    localization = get_localization( asmfiles )

    with open( options.output, 'w' ) as outfh:
        for asmfile in asmfiles:
            with open( asmfile, 'r' ) as asmfh:
                writer = csv.writer( outfh, lineterminator="\n")
                for row in localization:
                    writer.writerow( map( str, list( row ) ) )
        
    # get_localization(asmfiles)
    # localization = get_localization(
    #     args, asmfiles, options.repeat, options.smooth
    # )

    # with open( options.output, 'w' ) as fh:
    #     writer = csv.writer( fh )
    #     for row in localization:
    #         writer.writerow( map( str, list( row ) ) )
