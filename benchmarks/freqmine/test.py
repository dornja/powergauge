#!/usr/bin/python

import os
import sys

root = os.path.abspath( sys.argv[ 0 ] )
for i in range( 3 ):
    root = os.path.dirname( root )
sys.path.append( os.path.join( root, "lib" ) )
from testutil import ParallelTest

# Run test.py -h to get usage information

class FreqmineTest( ParallelTest ):
    def getCommand( self, outfile ):
        cmd = [ self.exe ]
        cmd += {
            "test":   [ "inputs/T10I4D100K_3.dat",     "1" ],
            "tiny":   [ "inputs/T10I4D100K_1k.dat",    "3" ],
            "small":  [ "inputs/kosarak_250k.dat",   "220" ],
            "medium": [ "inputs/kosarak_500k.dat",   "410" ],
            "large":  [ "inputs/kosarak_990k.dat",   "790" ],
            "huge":   [ "inputs/webdocs_250k.dat", "11000" ],
        }[ self.size ]
        cmd += [ outfile ]
        return cmd, dict()

os.environ[ "OMP_NUM_THREADS" ] = "1"
FreqmineTest().run( root )

# exit non-zero so GenProg won't consider this a "repair"
exit( 1 )

