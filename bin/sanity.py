#!/usr/bin/python

from optparse import OptionParser
import os
from subprocess import call, check_call, CalledProcessError
import sys

root = os.path.dirname( os.path.dirname( os.path.abspath( sys.argv[ 0 ] ) ) )
sys.path.append( os.path.join( root, "lib" ) )
from genprogutil import Config
from util import infomsg, mktemp

parser = OptionParser( usage = "%prog [options] [benchmark-dir]" )
options, args = parser.parse_args()

if len( args ) > 0:
    os.chdir( args[ 0 ] )

configfile = "configuration"
est_energy = os.path.join( root, "bin", "est-energy.py" )
limit      = os.path.join( root, "bin", "limit" )
srcdir     = "src"

def check_path( path ):
    if not os.path.exists( path ):
        infomsg("ERROR: %s: no such file or directory" % path, file = sys.stderr)
        exit( 1 )

def check_cmd( cmd ):
    try:
        status = call( cmd )
    except OSError as e:
        infomsg( e.strerror )
        exit( 2 )
    if status != 0:
        if not isinstance( cmd, str ):
            cmd = " ".join( cmd )
        infomsg( "ERROR:", cmd, file = sys.stderr )
        exit( status )

check_path( configfile )
check_path( srcdir )

infomsg( "checking that est-energy.py works..." )
check_path( est_energy )
check_cmd( [ est_energy, "-o", "/dev/null", "--", "true" ] )
infomsg( "pass" )

infomsg( "checking that limit command works..." )
check_path( limit )
check_cmd( [ limit, "1", "true" ] )
infomsg( "pass" )

config = Config()
config.load( configfile )

with mktemp( dir = "." ) as exe:
    infomsg( "checking that we can compile the program..." )

    compile_cmd = config[ "--compiler-command" ]
    compile_cmd = compile_cmd.replace( "__SOURCE_NAME__", "src/000000.s" )
    compile_cmd = compile_cmd.replace( "__EXE_NAME__", exe )

    status = call( [ "sh", "-c", compile_cmd ] )
    if status != 0:
        infomsg( "ERROR: compile command failed!", file = sys.stderr )
        infomsg( "ERROR:", compile_cmd, file = sys.stderr )
        exit( status )
    infomsg( "pass" )

    with mktemp() as fitnessfile:
        infomsg( "checking that the test command works..." )

        test_cmd = config[ "--test-command" ]
        test_cmd = test_cmd.replace( "__EXE_NAME__", exe )
        test_cmd = test_cmd.replace( "__FITNESS_FILE__", fitnessfile )

        # Unfortunately, the test command always exits with non-zero status
        os.remove( fitnessfile )
        status = call( [ "sh", "-c", test_cmd ] )
        if not os.path.exists( fitnessfile ):
            infomsg( "ERROR: test command failed!", file = sys.stderr )
            infomsg( "ERROR:", test_cmd )
            exit( status )
        with open( fitnessfile ) as fh:
            fitness = next( fh ).split()
        if fitness == [ "0" ]:
            infomsg( "ERROR: program has 0 fitness!", file = sys.stderr )
            exit( 1 )
        infomsg( "pass" )

