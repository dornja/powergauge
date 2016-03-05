#!/usr/bin/python

import os
import sys

root = os.path.abspath( sys.argv[ 0 ] )
for i in range( 3 ):
    root = os.path.dirname( root )
sys.path.append( os.path.join( root, "lib" ) )
from testutil import ParallelTest

# Run test.py -h to get usage information

class SwaptionsTest( ParallelTest ):
    def getCommand( self, outfile ):
        cmd = [ self.exe ]
        cmd += {
            "test":   [ "-ns",   "1", "-sm",       "5", "-nt", "1" ],
            "tiny":   [ "-ns",   "3", "-sm",      "50", "-nt", "1" ],
            "small":  [ "-ns",  "16", "-sm",   "10000", "-nt", "1" ],
            "medium": [ "-ns",  "32", "-sm",   "20000", "-nt", "1" ],
            "large":  [ "-ns",  "64", "-sm",   "40000", "-nt", "1" ],
            "huge":   [ "-ns", "128", "-sm", "1000000", "-nt", "1" ],
        }[ self.size ]
        return cmd, { "stderr": outfile }

SwaptionsTest().run( root )

# exit non-zero so GenProg won't consider this a "repair"
exit( 1 )

