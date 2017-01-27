#!/usr/bin/python

import base64
from cStringIO import StringIO
from datetime import datetime
from glob import glob
from optparse import OptionParser
import os
import socket
from subprocess import call, check_call, PIPE, Popen
import sys

root = os.path.dirname( os.path.dirname( os.path.abspath( sys.argv[ 0 ] ) ) )
sys.path.append( os.path.join( root, "lib" ) )
import genprogutil
from util import infomsg

parser = OptionParser( "%prog [options] benchmark results" )
options, args = parser.parse_args()

if len( args ) < 1:
    parser.print_usage()
    exit( 1 )

jobid = os.environ.get( "SLURM_JOB_ID", "0" )

benchmark = args[ 0 ]
results = os.path.basename( args[ 1 ] )
parsecdir = "/localtmp/sources/" + benchmark + "/"
rundir = "/localtmp/job-" + jobid

# Get the time we started. We'll actually write it to the log file later, once
# we have a workspace to work in. For debugging, print it to stdout here in case
# things go horribly wrong....

start = datetime.now()
hostname = socket.gethostname()

print start
print "Running experiment on", hostname

# Read the config file from stdin. Do this first, just in case one of the
# subprocesses we create tries to read from stdin...
config = StringIO()
base64.decode( sys.stdin, config )
config = config.getvalue()

# clone clean repo
infomsg( "\nINFO: cloning clean workspace" )
check_call( [ "git", "clone", "/localtmp/powergauge", rundir] )

os.chdir( os.path.join( rundir, "benchmarks", benchmark ) )

# log start timestamp, the git hash and hostname to a file
with open( "experiment.log", 'w' ) as logfile:
    print >>logfile, "start time:", start
    print >>logfile, "hostname:  ", hostname
    print >>logfile, "git hash:  ",
    logfile.flush()
    try:
        os.fsync( logfile )
    except OSError:
        pass
    call( [ "git", "rev-parse", "HEAD" ], stdout = logfile )

# create the config file
with open( "configuration", 'w' ) as fh:
    print >>fh, config.strip()

# Make in src
infomsg( "\nINFO: building C utilities" )
check_call( [ "make", "-C", "../../src" ] )

# copy sources/input based on passed in benchmark
infomsg( "\nINFO: copying sources" )
check_call( [ "rsync", "-a", parsecdir, "." ] )

# Sanity check compile with a test input and create golden
infomsg( "\nINFO: compiling test program" )
check_call( [ "./compile.sh", "src/.", "exe" ] )

infomsg( "\nINFO: generating golden outputs" )
config = genprogutil.Config()
config.load( "configuration" )
testcmd = config[ "--test-command" ]
testcmd = testcmd.replace( "__EXE_NAME__", "exe" )
testcmd = testcmd.replace( "__FITNESS_FILE__", "/dev/null" )
testcmd = testcmd.split()
testcmd.append( "--create-golden" )
call( testcmd )
if len( glob( "outputs/*" ) ) < 1:
    print "ERROR: Sanity check failed, golden not found"
    exit( 1 )

# run genprog
infomsg( "\nINFO: running GenProg" )
check_call( [ "/localtmp/jad5ju/genprog-code/src/repair", "configuration" ] )

# create dir for artifacts
os.makedirs( results )

# copy artifacts
artifacts = [
    "configuration",
    "experiment.log",
    "multi.cache",
    "repair.cache",
]
if "--seed" in config:
    artifacts.append( "repair.debug." + config[ "--seed" ] )
else:
    artifacts += glob( "repair.debug.*" )
check_call( [ "mv" ] + artifacts + [ results ] )

# compress and store in some location
infomsg( "\nINFO: saving results to /localtmp/results/" + results + ".tar.bz2" )
os.makedirs( "/localtmp/results" )
check_call( [
    "tar", "cjf", "/localtmp/results/" + results + ".tar.bz2", results
] )

infomsg( "\nINFO: cleaning up" )
os.chdir( os.path.expanduser( "~" ) )
check_call( [ "rm", "-rf", rundir ] )

