#!/usr/bin/python

import os
import sys

root = os.path.abspath( sys.argv[ 0 ] )
for i in range( 3 ):
    root = os.path.dirname( root )
sys.path.append( os.path.join( root, "lib" ) )
from testutil import ParallelTest

# Run test.py -h to get usage information

class LibavTest( ParallelTest ):
    def getCommand( self, outfile ):
        cmd = [ self.exe ]
        cmd += {
            "test":   [ "-ns",   "1", "-sm",       "5", "-nt", "1" ]
        }[ self.size ]
        return cmd, { "stderr": outfile }

LibavTest().run( root )

# exit non-zero so GenProg won't consider this a "repair"
exit( 1 )

