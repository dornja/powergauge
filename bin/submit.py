#!/usr/bin/env python

import base64
from cStringIO import StringIO
from optparse import OptionParser
import os
from subprocess import PIPE, Popen

parser = OptionParser( usage = "%prog [options] results-name configfile" )
parser.add_option(
    "--bmark", metavar = "bmark", help = "benchmark to run"
)
options, args = parser.parse_args()

if len( args ) < 2:
    parser.print_help()
    exit()

results = args[ 0 ]
config  = args[ 1 ]

if options.bmark is None:
    if os.path.basename( os.path.dirname( os.getcwd() ) ) == "benchmarks":
        options.bmark = os.path.basename( os.getcwd() )
    else:
        print "ERROR: cannot detect benchmark and no benchmark specified"
        exit( 1 )

script = StringIO()
print >>script, "#!/bin/sh"
print >>script, "/localtmp/powergauge/bin/run-experiment.py", options.bmark, results, "<<", "EOF"
with open( config ) as fh:
    base64.encode( fh, script )
print >>script, "EOF"

# always submit from the home directory...

os.chdir( os.path.expanduser( "~" ) )
p = Popen( [ "sbatch", "--exclusive" ], stdin = PIPE )
p.communicate( script.getvalue() )
p.wait()
exit( p.returncode )

