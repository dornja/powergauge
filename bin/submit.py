#!/usr/bin/env python

import base64
from cStringIO import StringIO
from optparse import OptionParser
import os
import pipes
from subprocess import PIPE, Popen

parser = OptionParser(
    usage = "%prog [options] results-name configfile [-- slurm options]"
)
parser.add_option(
    "--bmark", metavar = "bmark", help = "benchmark to run"
)
parser.add_option(
    "--inputs", metavar = "args",
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

if len( args ) < 2:
    parser.print_help()
    exit()

results   = args[ 0 ]
config    = args[ 1 ]
slurmopts = args[ 2: ]

if options.bmark is None:
    if os.path.basename( os.path.dirname( os.getcwd() ) ) == "benchmarks":
        options.bmark = os.path.basename( os.getcwd() )
    else:
        print "ERROR: cannot detect benchmark and no benchmark specified"
        exit( 1 )

script = StringIO()
print >>script, "#!/bin/sh"
print >>script, "/localtmp/powergauge/bin/run-experiment.py",
if options.inputs is not None:
    print >>script, "--inputs", options.inputs,
if options.no_simplify:
    print >>script, "--no-simplify",
if options.stop_after is not None:
    print >>script, "--stop-after", options.stop_after,
if options.use_search is not None:
    print >>script, "--use-search", pipes.quote( options.use_search ),
print >>script, options.bmark, results, "<<", "EOF"
with open( config ) as fh:
    base64.encode( fh, script )
print >>script, "EOF"

# always submit from the home directory...

os.chdir( os.path.expanduser( "~" ) )
p = Popen(
    [ "sbatch", "--exclusive", "--job-name", results ] + slurmopts,
    stdin = PIPE
)
p.communicate( script.getvalue() )
p.wait()
exit( p.returncode )

