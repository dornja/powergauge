#!/usr/bin/python

import os
import sys

root = os.path.abspath( sys.argv[ 0 ] )
for i in range( 3 ):
    root = os.path.dirname( root )
sys.path.append( os.path.join( root, "lib" ) )
from testutil import ParallelTest

# Run test.py -h to get usage information

class FerretTest( ParallelTest ):
    def getCommand( self, outfile ):
        inputdir = "inputs/input_%s" % self.size
        if self.size == "tiny":
            inputdir = "inputs/input_dev"
        if self.size == "huge":
            inputdir = "inputs/input_native"
        cmd = [ self.exe, "%s/corel" % inputdir, "lsh", "%s/queries" % inputdir ]
        cmd += {
            "test":   [  "5",  "5", "1" ],
            "tiny":   [  "5",  "5", "1" ],
            "small":  [ "10", "20", "1" ],
            "medium": [ "10", "20", "1" ],
            "large":  [ "10", "20", "1" ],
            "huge":   [ "50", "20", "1" ],
        }[ self.size ]
        cmd += [ outfile ]
        return cmd, dict()

FerretTest().run( root )

# exit non-zero so GenProg won't consider this a "repair"
exit( 1 )

