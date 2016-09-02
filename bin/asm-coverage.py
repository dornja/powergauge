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

    parser = OptionParser( usage = "%prog [options] [--] command [args...]" )
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
    parser.add_option(
        "-r", "--repeat", metavar = "N", type = int, default = 1,
        help = "run the command N times"
    )
    parser.add_option(
        "-s", "--smooth", metavar = "width", type = int,
        help = "apply Gaussian smoothing with standard deviation = width"
    )
    options, args = parser.parse_args()

    if len( args ) < 1:
        parser.print_help()
        exit()

stmt_cvg = re.compile( r"^\s+(\d+(\.\d+)) :\s+[0-9a-fA-F]+:\s+(.*)$" )
ant_sec  = re.compile( r"^\s+:\s+[0-9a-fA-F]+ <([^>]+)>:" )
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

def perf_report_rows( lines, sep = "," ):
    origin = re.compile( "\[[^\]]*\] " )
    def split( line ):
        return [ field.strip() for field in line[ 1: ].split( sep ) ]

    prev = None
    header = None
    for line in lines:
        if len( line ) == 0 or line.startswith( "#" ):
            prev = line
            continue
        if header is None:
            header = split( prev )
        row = dict( zip( header, split( line ) ) )
        if "Symbol" in row:
            row[ "Symbol" ] = origin.sub( "", row[ "Symbol" ] )
        yield row

def perf_annotate_instrs( lines ):
    for line in lines:
        if "Source code & Disassembly" in line:
            print line
            obj = line.split()[ 7 ]
            print obj
            fun = None
            continue
        m = stmt_cvg.match( line )
        if m:
            weight = float( m.group( 1 ) )
            instr  = m.group( 3 ).split()
            yield obj, fun, weight, instr
            continue
        m = ant_sec.match( line )
        if m:
            fun = m.group( 1 )

def assembly_instrs( fname ):
    p = Popen( [ "c++filt" ], stdin = PIPE, stdout = PIPE )

    with open( fname ) as fh:
        fun = None
        linenum = 0
        for line in fh:
            linenum += 1
            if line.strip()[ 0 ] == ".":
                terms = line.split()
                if terms[ 0 ] == ".type" and terms[ 2 ] == "@function":
                    fun = terms[ 1 ].rstrip( "," )
                    p.stdin.write( fun + "\n" )
                    p.stdin.flush()
                    fun = p.stdout.readline().strip()
            elif not label.match( line ):
                yield fname, fun, linenum, line.split()

    p.stdin.close()
    p.stdout.close()
    p.wait()

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

def get_metrics( data_file = "perf.data" ):
    # Use `perf report` to get cycle counts for each function. Rescale to get
    # fraction of reported time spent in each function.

    sep = ","
    cmd = [
        "perf", "report",
            "--input", data_file,
            "--stdio",
            "--show-total-period",
            "--field-separator", sep
    ]
    p = Popen( cmd, stdout = PIPE, stderr = PIPE )
    stdout, stderr = p.communicate()
    if p.returncode != 0:
        infomsg( stderr, file = sys.stderr )
        raise CalledProcessError( p.returncode, cmd )

    cycles = dict()
    scale = 0.0
    for row in perf_report_rows( stdout.splitlines(), sep ):
        key = row[ "Shared Object" ], row[ "Symbol" ].split( "@@" )[ 0 ]
        count = int( row[ "Period" ])
        cycles[ key ] = count
        scale += count
    if scale > 0:
        scale = 1 / scale

    # Use `perf annotate` to get percentages for each instruction in each
    # function. These percentages are relative to the function as a whole (i.e.,
    # the total for each function is 100%) so we have to rescale using the
    # fractions we just collected to get the correct fraction of execution time.

    cmd = [
        "perf", "annotate",
            "--input", data_file,
            "--no-source",
    ]
    p = Popen( cmd, stdout = PIPE, stderr = PIPE )
    stdout, stderr = p.communicate()
    if p.returncode != 0:
        infomsg( stderr, file = sys.stderr )
        raise CalledProcessError( p.returncode, cmd )

    symbols = defaultdict( list )
    sources = defaultdict( list )
    for obj, fun, weight, instr in perf_annotate_instrs( stdout.splitlines() ):
        key = obj, fun
        if not key in cycles:
            continue
        if not obj in sources[ fun ]:
            sources[ fun ].append( obj )
        symbols[ key ].append( ( weight * cycles[ key ] * scale, instr ) )

    # Sanity check that each function shows up in one and only one object file.

    metrics = dict()
    for fun in sources:
        if len( sources[ fun ] ) > 1:
            infomsg(
                "Warning: function", fun,
                "profiled in more than one object:", *sources[ fun ],
                file = sys.stderr
            )
            infomsg( "Warning: using first occurrence", file = sys.stderr )
        metrics[ fun ] = symbols[ ( sources[ fun ][ 0 ], fun ) ]
    return metrics

synonyms = {
    "je":   "jz",
    "jne":  "jnz",
    "jb":   "jnae",
    "jc":   "jnae",
    "jae":  "jnc",
    "jnb":  "jnc",
    "jbe":  "jna",
    "ja":   "jnbe",
    "jl":   "jnge",
    "jge":  "jnl",
    "jle":  "jng",
    "jg":   "jnle",
    "jp":   "jpe",
    "jnp":  "jpo",
    "jcxz": "jecxz",
}

def isnop( instr ):
    return instr[ 0 ].startswith( "nop" )

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

def align_functions( f1, f2 ):
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

def smooth( lines, sd ):
    width = 3 * sd
    kernel = map( float, range( -width, width + 1 ) )
    kernel = [ exp(- x*x / (2*sd*sd)) / (sd * sqrt(2*pi)) for x in kernel ]

    new_lines = list()
    for i, ( x, _, y, z ) in enumerate( lines ):
        n, d = 0.0, 0.0
        k = i - width
        for j, w in enumerate( kernel ):
            if 0 <= j + k and j + k < len( lines ):
                n += w * lines[ j + k ][ 1 ]
                d += w
        new_lines.append( ( x, n / d, y, z ) )
    return new_lines

def get_line_coverage( metrics, asmfuns, gauss_width = None ):

    for fname in asmfiles:
        for ( fname, fun ), instrs in assembly_funs( fname ):
            if not fun in metrics:
                infomsg(
                    "Warning: no annotations for %s:%s" % ( fname, fun ),
                    file = sys.stderr
                )
                continue
            try:
                lines = list( align_functions( instrs, metrics[ fun ] ) )
            except MisalignedCodeError as e:
                infomsg( "ERROR:", e )
                continue
            if gauss_width is not None:
                lines = smooth( lines, gauss_width )
            for line, cvg, _, _ in lines:
                yield fname, line, cvg

def profile( cmd, **kw ):
    f = 0
    while f < 100 or 1900 < f:
        f = int( random.gauss( 1000, 100 ) )
    with mktemp() as tmp:
        record = [
            "perf", "record",
                "--freq", str( f ),
                "--quiet",
                "--output", tmp,
                "--"
        ] + cmd
        check_call( record, **kw )

        return get_metrics( tmp )

def get_localization( cmd, asmfiles, repeat = 1, smooth = None ):
    asmfuns = defaultdict( dict )
    for fname in asmfiles:
        for ( fname, fun ), instrs in assembly_funs( fname ):
            asmfuns[ fun ][ fname ] = instrs

    accum = defaultdict( lambda: 0.0 )
    stdout = sys.stdout
    stderr = sys.stderr
    with open( "/dev/null", 'w' ) as fh:
        for i in range( repeat ):
            if i > 0:
                infomsg( "profiling run", i + 1 )
            metrics = profile( args, stdout = stdout, stderr = stderr )
            for fname, line, cvg in get_line_coverage( metrics, asmfuns, smooth ):
                accum[ fname, line ] += cvg
            stdout = fh
            stderr = fh

    localization = list()
    for fname, line in sorted( accum ):
        localization.append( ( fname, line, accum[ fname, line ] / repeat ) )
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

    localization = get_localization(
        args, asmfiles, options.repeat, options.smooth
    )

    with open( options.output, 'w' ) as fh:
        writer = csv.writer( fh )
        for row in localization:
            writer.writerow( map( str, list( row ) ) )

