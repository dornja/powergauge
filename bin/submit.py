#!/usr/bin/env python

import base64
from cStringIO import StringIO
from optparse import OptionParser
import os
from subprocess import PIPE, Popen

parser = OptionParser( usage = "%prog [options] benchmark configfile" )
options, args = parser.parse_args()

if len( args ) < 2:
    parser.print_help()
    exit()

bmark  = args[ 0 ]
config = args[ 1 ]

script = StringIO()
print >>script, "#!/bin/sh"
print >>script, "/localtmp/powergauge/run-experiment.py", bmark, "<<", "EOF"
with open( config ) as fh:
    base64.encode( fh, script )
print >>script, "EOF"

# always submit from the home directory...

os.chdir( os.path.expanduser( "~" ) )
p = Popen( [ "sbatch", "--exclusive" ], stdin = PIPE )
p.communicate( script.getvalue() )
p.wait()
exit( p.returncode )

