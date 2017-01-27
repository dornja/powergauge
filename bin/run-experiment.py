#!/usr/bin/python
#SBATCH --exclusive

import datetime
import glob
import optparse
import os
import socket
import subprocess
import sys

root = os.path.dirname( os.path.dirname( os.path.abspath( sys.argv[ 0 ] ) ) )
sys.path.append( os.path.join( root, "lib" ) )
import genprogutil

parser = optparse.OptionParser( "%prog [options] benchmark" )
options, args = parser.parse_args()

if len( args ) < 1:
    parser.print_usage()
    exit( 1 )

benchmark = args[0]
parsecdir = "/localtmp/sources/" + benchmark + "/"

# log start timestamp
# log the git hash and hostname to a file
time = datetime.datetime.now()
hostname = socket.gethostname()
p = subprocess.Popen( [ "git", "rev-parse", "HEAD" ], stdout = subprocess.PIPE )
githash = p.communicate()[ 0 ]
with open( "experiment.log" ) as logfile:
    print >> logfile, time
    print >> logfile, hostname
    print >> logfile, githash

# clone clean repo
os.chdir( "/localtmp/" )
jobid = os.environ[ "SLURM_JOB_ID" ]
subprocess.check_call( [ "git", "clone", "powergauge", jobid ] )
    
# Make in src
os.chdir(jobid)
subprocess.check_call( [ "make", "-C", "src" ] )

# copy sources/input based on passed in benchmark
os.chdir( "benchmarks/" + benchmark )
subprocess.check_call( [ "rsync", "-a", parsecdir, "." ] )

# Sanity check compile with a test input and create golden
subprocess.check_call( [ "./compile.sh", "src/.", "exe" ] )

config = genprogutil.Config()
config.load( "configuration" )
testcmd = config[ "--test-config" ]
testcmd = testcmd.replace( "__EXE_NAME__", "exe" )
testcmd = testcmd.replace( "__FITNESS_FILE__", "/dev/null" )
testcmd = testcmd.split()
testcmd.append( "--create-golden" )
subprocess.call( testcmd )
if len( glob.glob( "outputs/*" ) ) < 1:
    print "ERROR: Sanity check failed, golden not found"
    exit( 1 )


# modify/deal with the config file
# run genprog
# create dir for artifacts (figure out how to name this stuff)
# copy artifacts
# compress and store in some location

