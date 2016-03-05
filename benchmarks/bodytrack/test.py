#!/usr/bin/python

import os
import sys

root = os.path.abspath( sys.argv[ 0 ] )
for i in range( 3 ):
    root = os.path.dirname( root )
sys.path.append( os.path.join( root, "lib" ) )
from testutil import Multitmp, ParallelTest
from util import mktemp

# Run test.py -h to get usage information

class BodytrackTest( ParallelTest ):
    def getCommand( self, outfile ):
        # NOTE: the trailing slashes are necessary for rsync to copy the
        # contents to the temp directory without an extra directory layer

        inputdir = {
            "test":   "inputs/sequenceB_1/",
            "tiny":   "inputs/sequenceB_1/",
            "small":  "inputs/sequenceB_1/",
            "medium": "inputs/sequenceB_2/",
            "large":  "inputs/sequenceB_4/",
            "huge":   "inputs/sequenceB_261/",
        }[ self.size ]
        Multitmp.check_call( [ "rm", "-f", outfile ] )
        Multitmp.check_call( [ "rsync", "-a", inputdir, outfile ] )

        cmd = [ self.exe, outfile, "4" ]
        cmd += {
            "test":   [   "1",    "5", "1" ],
            "tiny":   [   "1",  "100", "3" ],
            "small":  [   "1", "1000", "5" ],
            "medium": [   "2", "2000", "5" ],
            "large":  [   "4", "4000", "5" ],
            "huge":   [ "261", "4000", "5" ],
        }[ self.size ]
        cmd += [ "0", "1" ]
        return cmd, dict()

    def getGolden( self ):
        return "outputs/%s" % self.size

BodytrackTest().run( root )

# exit non-zero so GenProg won't consider this a "repair"
exit( 1 )

