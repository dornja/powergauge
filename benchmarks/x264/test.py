#!/usr/bin/python

import os
import sys

root = os.path.abspath( sys.argv[ 0 ] )
for i in range( 3 ):
    root = os.path.dirname( root )
sys.path.append( os.path.join( root, "lib" ) )
from testutil import ParallelTest

# Run test.py -h to get usage information

class X264Test( ParallelTest ):
    def getGolden( self ):
        return "outputs/%s.y4m" % self.size

    def getCommand( self, outfile ):
        cmd = [ self.exe,
            "--quiet",
            "--qp", "20",
            "--partitions", "b8x8,i4x4",
            "--ref", "5",
            "--direct", "auto",
            "--b-pyramid",
            "--weightb",
            "--mixed-refs",
            "--no-fast-pskip",
            "--me", "umh",
            "--subme", "7",
            "--analyse", "b8x8,i4x4",
            "--threads", "1",
            "-o", outfile
        ]
        cmd += {
            "test":   [ "inputs/eledream_32x18_1.y4m" ],
            "tiny":   [ "inputs/eledream_64x36_3.y4m" ],
            "small":  [ "inputs/eledream_640x360_8.y4m" ],
            "medium": [ "inputs/eledream_640x360_32.y4m" ],
            "large":  [ "inputs/eledream_640x360_128.y4m" ],
            "huge":   [ "inputs/eledream_1920x1080_512.y4m" ],
        }[ self.size ]
        return cmd, dict()

X264Test().run( root )

# exit non-zero so GenProg won't consider this a "repair"
exit( 1 )

