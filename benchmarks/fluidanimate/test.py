#!/usr/bin/python

import os
import sys

root = os.path.abspath( sys.argv[ 0 ] )
for i in range( 3 ):
    root = os.path.dirname( root )
sys.path.append( os.path.join( root, "lib" ) )
from testutil import ParallelTest

# Run test.py -h to get usage information

class FluidanimateTest( ParallelTest ):
    def getCommand( self, outfile ):
        cmd = [ self.exe, "1" ]
        cmd += {
            "test":   [   "1", "inputs/in_5K.fluid" ],
            "tiny":   [   "3", "inputs/in_15K.fluid" ],
            "small":  [   "5", "inputs/in_35K.fluid" ],
            "medium": [   "5", "inputs/in_100K.fluid" ],
            "large":  [   "5", "inputs/in_300K.fluid" ],
            "huge":   [ "500", "inputs/in_500K.fluid" ],
        }[ self.size ]
        cmd += [ outfile ]
        return cmd, dict()

FluidanimateTest().run( root )

# exit non-zero so GenProg won't consider this a "repair"
exit( 1 )

