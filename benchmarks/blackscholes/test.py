#!/usr/bin/python

import os
import sys

root = os.path.abspath( sys.argv[ 0 ] )
for i in range( 3 ):
    root = os.path.dirname( root )
sys.path.append( os.path.join( root, "lib" ) )
from testutil import ParallelTest

# Run test.py -h to get usage information

class BlackscholesTest( ParallelTest ):
    def getCommand( self, outfile ):
        cmd = [ self.exe, "1" ]
        cmd += {
            "test":   [ "inputs/in_4.txt" ],
            "tiny":   [ "inputs/in_16.txt" ],
            "small":  [ "inputs/in_4K.txt" ],
            "medium": [ "inputs/in_16K.txt" ],
            "large":  [ "inputs/in_64K.txt" ],
            "huge":   [ "inputs/in_10M.txt" ],
        }[ self.size ]
        cmd += [ outfile ]
        return cmd, dict()

BlackscholesTest().run( root )

# exit non-zero so GenProg won't consider this a "repair"
exit( 1 )

