#!/usr/bin/python

from __future__ import print_function

from collections import defaultdict
from contextlib import contextmanager
import csv
from datetime import datetime
from math import floor
from optparse import OptionParser
import os
import random
import re
from subprocess import call, check_call
import sys

root = os.path.dirname( os.path.dirname( os.path.abspath( sys.argv[ 0 ] ) ) )
sys.path.append( os.path.join( root, "lib" ) )
from genprogutil import Config
from util import infomsg, mktemp

parser = OptionParser( usage = "%prog [options] configuration" )
parser.add_option(
    "-n", "--num", metavar = "N", type = int, default = 2,
    help = "number of partitions to create"
)
parser.add_option(
    "--output", metavar = "file", default = "localization",
    help = "base of localization filenames to output appended with group number"
)
parser.add_option(
    "--pin-root", metavar = "dir",
    help = "Pin directory to use (default: PIN_ROOT)"
)
parser.add_option(
    "--source", metavar = "dir", default = "src",
    help = "directory containing program source"
)
parser.add_option(
    "--compiler-command", metavar = "cmd",
    help = "run command to compile program"
)
parser.add_option(
    "--test-command", metavar = "cmd", 
    help = "run command to determine which functions to partition"
)
options, args = parser.parse_args()

if len( args ) < 1:
    parser.print_help()
    exit()

@contextmanager
def save_temp( fname ):
    if not os.path.exists( fname ):
        raise OSError( 2, "No such file or directory", fname )

    with mktemp( dir = os.path.dirname( fname ) ) as tmp:
        os.rename( fname, tmp )

        try:
            yield tmp
        finally:
            if os.path.exists( fname ):
                call( [ "rm", "-rf", fname ] )
            if os.path.exists( tmp ):
                os.rename( tmp, fname )

@contextmanager
def renumber_files( fnames ):
    label = re.compile( r"^[.\w]*:" )
    directive = re.compile( r"\s+\.(\w+)\s+(.*)" )

    src = fnames[ 0 ]
    with save_temp( src ) as tmp:
        with open( tmp ) as fh:
            with open( src, 'w' ) as out:
                print( '\t.file 1 "%s"' % os.path.basename( src ), file = out )
                for num, line in enumerate( fh, 1 ):
                    if label.match( line ):
                        print( line.rstrip(), file = out )
                        continue
                    m = directive.match( line )
                    if not m or m.group( 1 ) not in [ "file", "loc" ]:
                        print( '\t.loc 1 %d 0' % num, file = out )
                        print( line.rstrip(), file = out )

        if len( fnames ) > 1:
            with renumber_files( fnames[ 1: ] ):
                yield
        else:
            yield

config = Config()
config.load( args[ 0 ] )
if options.compiler_command is not None:
    config[ "--compiler-command" ] = options.compiler_command
if options.test_command is not None:
    config[ "--test-command" ] = options.test_command

if options.pin_root is not None:
    os.environ[ "PIN_ROOT" ] = options.pin_root
if not "PIN_ROOT" in os.environ:
    print( "ERROR: you must use --pin-root or set PIN_ROOT", file = sys.stderr )
    exit( 1 )
pin = os.path.join( os.environ[ "PIN_ROOT" ], "pin" )

check_call( [ "make", "-C", os.path.join( root, "pintool" ) ] )

pintool = os.path.join( root, "pintool", "obj-intel64", "print_lines.so" )

sources = list()
for d, dnames, fnames in os.walk( options.source ):
    for fname in fnames:
        fname = os.path.join( d, fname )
        if os.path.splitext( fname )[ 1 ] == ".s":
            sources.append( fname )

with mktemp() as exe:
    infomsg( "INFO: relabeling source files" )
    with renumber_files( sources ):
        cmd = config[ "--compiler-command" ]
        cmd = cmd.replace( "__SOURCE_NAME__", sources[ 0 ] )
        cmd = cmd.replace( "__EXE_NAME__", exe )

        infomsg( "INFO: compiling binary" )
        check_call( [ "sh", "-c", cmd ] )

    cmd = config[ "--test-command" ]
    cmd = cmd.replace( "__EXE_NAME__", exe )
    cmd = cmd.replace( "__FITNESS_FILE__", "/dev/null" )
    with mktemp() as lines_file:
        prefix = [
            pin, "-injection", "child",
                "-follow_execv",
                "-t", pintool,
                "-file", lines_file,
        ]
        for source in sources:
            prefix += [ "-allow", os.path.basename( source ) ]

        infomsg( "INFO: running pintool (this may take a while)" )
        start = datetime.now()
        call( prefix + [ "--", "sh", "-c", cmd ] )
        delta = datetime.now() - start
        infomsg( "(%5.2fs)" % ( delta.seconds + delta.microseconds * 1.0e-6 ) )

        funcs = defaultdict( dict )
        with open( lines_file ) as fh:
            method = None
            fname  = None
            for line in fh:
                if line.startswith( "method:" ):
                    method = line.split()[ 1 ]
                if line.startswith( "file:" ):
                    fname = os.path.basename( line.split()[ 1 ] )
                if line.startswith( "lines:" ):
                    funcs[ method ][ fname ] = line.split()[ 1: ]

infomsg( "INFO: generating localization files" )
methods = list( funcs.keys() )
random.shuffle( methods )
for i in range( options.num ):
    pivot = int( floor( len( methods ) / ( options.num - i ) ) )
    current, methods = methods[ :pivot ], methods[ pivot: ]

    fnames = set()
    for method in current:
        fnames = fnames.union( funcs[ method ].keys() )
    fnames = sorted( fnames )
    with open( "%s.%d" % ( options.output, i ), 'w' ) as fh:
        dialect = csv.excel()
        dialect.lineterminator = '\n'
        writer = csv.writer( fh, dialect = dialect )
        for fname in fnames:
            for method in current:
                if not fname in funcs[ method ]:
                    continue
                for line in funcs[ method ][ fname ]:
                    writer.writerow( [ fname, line, "1" ] )

