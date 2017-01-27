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

parser = OptionParser( "%prog [options] benchmark" )
options, args = parser.parse_args()

if len( args ) < 1:
    parser.print_usage()
    exit( 1 )

benchmark = args[0]
parsecdir = "/localtmp/sources/" + benchmark + "/"

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

# clone clean repo
jobid = os.environ[ "SLURM_JOB_ID" ]
check_call( [ "git", "clone", "/localtmp/powergauge", "/localtmp/" + jobid ] )

os.chdir( "/localtmp/%s/benchmarks/%s" % ( jobid, benchmark ) )

# log start timestamp, the git hash and hostname to a file
with open( "experiment.log" ) as logfile:
    print >> logfile, start
    print >> logfile, hostname
    call( [ "git", "rev-parse", "HEAD" ], stdout = logfile )

# create the config file
with open( "configuration" ) as fh:
    print >>fh, config.getvalue()

# Make in src
check_call( [ "make", "-C", "../../src" ] )

# copy sources/input based on passed in benchmark
check_call( [ "rsync", "-a", parsecdir, "." ] )

# Sanity check compile with a test input and create golden
check_call( [ "./compile.sh", "src/.", "exe" ] )

config = genprogutil.Config()
config.load( "configuration" )
testcmd = config[ "--test-config" ]
testcmd = testcmd.replace( "__EXE_NAME__", "exe" )
testcmd = testcmd.replace( "__FITNESS_FILE__", "/dev/null" )
testcmd = testcmd.split()
testcmd.append( "--create-golden" )
call( testcmd )
if len( glob( "outputs/*" ) ) < 1:
    print "ERROR: Sanity check failed, golden not found"
    exit( 1 )


# modify/deal with the config file
# run genprog
# create dir for artifacts (figure out how to name this stuff)
# copy artifacts
# compress and store in some location

