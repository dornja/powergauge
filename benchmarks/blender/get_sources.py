#!/usr/bin/env python

from __future__ import print_function

from contextlib import contextmanager
from optparse import OptionParser
import os
import pipes
import shlex
from subprocess import check_call, Popen, PIPE
import sys
import tarfile

root = os.path.abspath( sys.argv[ 0 ] )
for i in range( 3 ):
    root = os.path.dirname( root )
sys.path.append( os.path.join( root, "lib" ) )
from util import infomsg, mktemp, pipeline

parser = OptionParser( usage = "%prog [options] blender.tar.gz inputs.zip" )
options, args = parser.parse_args()

if len( args ) < 2:
    parser.print_help()
    exit()

tarball = os.path.abspath( args[ 0 ] )

if sys.version_info[ 0 ] < 3:
    quote = pipes.quote
else:
    quote = shlex.quote

@contextmanager
def chdir( dname ):
    cwd = os.getcwd()
    os.chdir( dname )
    try:
        yield
    finally:
        os.chdir( cwd )

numerrs = 0
def error( *msg, **kw):
    global numerrs
    infomsg( "ERROR:", *msg, **kw )
    numerrs += 1

def get_root( fname ):
    while fname != "/":
        fname, base = os.path.split( fname )
        if fname == "":
            return base
    return fname

def splitcmd( line ):
    lex = shlex.shlex( line, "stdin", True )
    lex.whitespace_split = True
    return list( lex )

infomsg( "INFO: extracting tarball" )

roots = set()
with tarfile.open( tarball ) as tarball:
    for fname in tarball.getnames():
        roots.add( get_root( fname ) )
    if len( roots ) == 1:
        tarball.extractall( "." )
        tardir = os.path.join( os.getcwd(), roots.pop() )
    else:
        tardir, ext = os.path.splitext( tarball )
        while ext != "":
            tardir, ext = os.path.splitext( tardir )
        tardir = os.path.join(
            os.getcwd(), os.path.basename( tardir )
        )
        if os.path.exists( tardir ):
            check_call( [ "rm", "-rf", tardir ] )
        os.makedirs( tardir )
        tarball.extractall( tardir )

buildir = os.path.abspath( "build" )
infomsg( "INFO: running CMake" )
os.makedirs( buildir )
with chdir( buildir ):
    check_call( [ "cmake", tardir ] )

infomsg( "INFO: updating flags to include -save-temps" )
for d, dnames, fnames in os.walk( buildir ):
    for fname in fnames:
        if fname != "flags.make":
            continue
        fname = os.path.join( d, fname )
        with open( fname ) as fh:
            lines = fh.readlines()
        with open( fname, 'w' ) as fh:
            for line in lines:
                line = line.rstrip()
                if line.startswith( "C_FLAGS" ) or line.startswith( "CXX_FLAGS" ):
                    line = line + " -save-temps=obj"
                print( line, file = fh )

infomsg( "INFO: running make" )
with mktemp() as log:
    pipeline( [
        [ "make", "-C", buildir, "VERBOSE=1", "V=1", "install" ],
        [ "tee", log ]
    ] )
    check_call( [ "cp", log, "compile.log" ] )

    infomsg( "INFO: collecting assembly files" )
    asmfiles = dict()
    with open( "multi.txt", 'w' ) as fh:
        for d, dnames, fnames in os.walk( buildir ):
            for fname in fnames:
                if os.path.splitext( fname )[ 1 ] == ".s":
                    fname = os.path.join( d, fname )
                    print( fname, file = fh )
                    objname = os.path.splitext( fname )[ 0 ] + ".o"
                    asmfiles[ objname ] = fname

    depgraph = dict()
    argflags = [ "-o", "-isystem" ]

    cwd = None
    def fixpath( path ):
        if cwd is not None:
            return os.path.normpath( os.path.join( cwd, path ) )
        return path

    infomsg( "INFO: parsing compile commands" )
    with open( log ) as fh:
        for line in fh:
            line = splitcmd( line )
            if line[ 0 ] == "cd":
                cwd = line[ 1 ]
                line = line[ 3: ]

            if line[ 0 ] in [ "/usr/bin/ar" ]:
                archive = fixpath( line[ 2 ] )
                line[ 2 ] = archive
                depgraph[ archive ] = [ fixpath(p) for p in args[3:] ], [ line ]
            if line[ 0 ] in [ "/usr/bin/cc", "/usr/bin/c++" ]:
                outfile = fixpath( line[ line.index( "-o" ) + 1 ] )
                srcs = list()
                for i, arg in enumerate( line ):
                    if arg[ 0 ] == "-":
                        continue
                    if i > 0 and line[ i - 1 ] not in argflags:
                        srcs.append( i )
                if "-c" in line:
                    if outfile not in asmfiles:
                        error( "missing object:", outfile )
                        continue
                    if len( srcs ) != 1:
                        error( "could not determine source for", outfile )
                        continue
                    line[ srcs[ 0 ] ] = asmfiles[ outfile ]
                    line[ line.index( "-o" ) + 1 ] = outfile
                    depgraph[ outfile ] = [ asmfiles[ outfile ] ], [ line ]
                    del asmfiles[ outfile ]
                else:
                    fixed = list()
                    for i in srcs:
                        line[ i ] = fixpath( line[ i ] )
                        fixed.append( line[ i ] )
                    line[ line.index( "-o" ) + 1 ] = outfile
                    depgraph[ outfile ] = fixed, [ line ]
            if line[ 0 ] in [ "/usr/bin/ranlib" ]:
                archive = fixpath( line[ 1 ] )
                line[ 1 ] = archive
                deps, cmds = depgraph[ archive ]
                depgraph[ archive ] = deps, cmds + [ line ]
for fname in sorted( asmfiles ):
    error( "leftover object:", fname )

infomsg( "INFO: generating makefile" )
makefile = os.path.join( buildir, "reassemble.mk" )
with open( makefile, 'w' ) as fh:
    for target in sorted( depgraph ):
        deps, cmds = depgraph[ target ]
        for dep in deps:
            print( target, ":", dep, file = fh )
        print( "%s:" % target, file = fh )
        for cmd in cmds:
            print( "\t%s" % " ".join( [ quote( arg ) for arg in cmd ] ), file = fh )

infomsg( "INFO: cleaning up" )
if os.path.exists( "src" ):
    check_call( [ "rm", "-rf", "src" ] )
check_call( [ "mv", buildir, "src" ] )
check_call( [ "chmod", "-R", "a-w", "src" ] )
check_call( [ "rm", "-rf", tardir ] )

if numerrs > 0:
    exit( 1 )

