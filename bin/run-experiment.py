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
parser.add_option(
    "--inputs", metavar = "args", default = list(),
    help = "comma-separated list of inputs to maximize on (default: empty)"
)
parser.add_option(
    "--no-simplify", action = "store_true",
    help = "do not minimize pareto frontier"
)
parser.add_option(
    "--stop-after", metavar = "N", type = int,
    help = "stop the search / minimization after N fitness evaluations"
)
parser.add_option(
    "--use-search", metavar = "resultsdir",
    help = "use the results of a previous search instead of searching again"
)
options, args = parser.parse_args()

if len( args ) < 1:
    parser.print_help()
    exit( 1 )

jobid = os.environ.get( "SLURM_JOB_ID", "0" )

benchmark = args[ 0 ]
results = os.path.basename( args[ 1 ] )
parsecdir = "/localtmp/sources/" + benchmark + "/"
rundir = "/localtmp/job-" + jobid

genprog = "/localtmp/jad5ju/genprog-code/src/repair"
simplify = os.path.join( root, "bin", "simplify-genome.py" )


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

# Set up the config file for this experiment. Allow the config from the previous
# search (if any) to override the one passed to this script.
artifacts = [
    "configuration",
    "experiment.log",
    "multi.cache",
    "repair.cache",
]
if options.use_search is not None:
    options.use_search = options.use_search.rstrip( "/" )
    infomsg( "\nINFO: copying previous results" )
    check_call( [ "rsync", "-a", options.use_search, "." ] )
    os.rename( os.path.basename( options.use_search ), results )
    check_call(
        [ "ln", "-f" ] + [ os.path.join(results, a) for a in artifacts ] + [ "." ]
    )
else:
    # create the config file
    with open( "configuration", 'w' ) as fh:
        print >>fh, config.strip()

# log start timestamp, the git hash and hostname to a file
with open( "experiment.log", 'a' ) as logfile:
    print >>logfile, "start time:", start
    print >>logfile, "hostname:  ", hostname
    print >>logfile, "git hash:  ",
    logfile.flush()
    try:
        os.fsync( logfile )
    except OSError:
        pass
    call( [ "git", "rev-parse", "HEAD" ], stdout = logfile )

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

if options.use_search is None:
    # run genprog
    infomsg( "\nINFO: running GenProg" )
    check_call( [ genprog, "configuration" ] )

    # create dir for artifacts
    os.makedirs( results )

    # copy artifacts
    if "--seed" in config:
        artifacts.append( "repair.debug." + config[ "--seed" ] )
    else:
        artifacts += glob( "repair.debug.*" )
    check_call( [ "ln" ] + artifacts + [ results ] )

if not options.no_simplify:
    # minimize genomes on pareto frontier
    cmd = [ simplify, genprog, results, "--all-variants" ]
    if options.stop_after is not None:
        cmd += [ "--stop-after", str( options.stop_after ) ]
    elif "--max-evals" in config:
        # don't forget GenProg's built-in off-by-one-error
        cmd += [ "--stop-after", str( int( config[ "--max-evals" ] ) + 1 ) ]
    if len( options.inputs ) > 0:
        cmd += [ "--inputs", options.inputs ]
    check_call( cmd )

# log the end time to the logfile
with open( "experiment.log", 'a' ) as logfile:
    print >>logfile, "end time:", datetime.now()

# compress and store in some location
resultsdir = os.path.join( "/localtmp/results", benchmark )
tarfile = os.path.join( resultsdir, results + ".tar.bz2" )

infomsg( "\nINFO: saving results to", tarfile )
if not os.path.exists( resultsdir ):
    os.makedirs( resultsdir )
check_call( [ "tar", "cjf", tarfile, results ] )

infomsg( "\nINFO: cleaning up" )
os.chdir( os.path.expanduser( "~" ) )
check_call( [ "rm", "-rf", rundir ] )

