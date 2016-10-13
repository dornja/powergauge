#!/usr/bin/python

from optparse import OptionParser
import os
import sys

root = os.path.abspath( sys.argv[ 0 ] )
for i in range( 3 ):
    root = os.path.dirname( root )
sys.path.append( os.path.join( root, "lib" ) )
from testutil import Multitmp, ParallelTest

# Run test.py -h to get usage information

class BlenderTest( ParallelTest ):
    def getOutputSuffix( self ):
        return ".png"

    def getParser( self ):
        parser = ParallelTest.getParser( self )
        parser.add_option(
            "--threshold", metavar = "t", type = float, default = 0.0,
            help = "max threshold of average per-pixel error to allow"
        )
        return parser

    def getCommand( self, outfile ):
        blend, render = {
            "tiny":   ( [ "inputs/Star-collapse-ntsc.blend" ], [] ),
            "small":  ( [ "inputs/buggy2.1.blend" ], [ "--size", "480x270" ] ),
            "medium": ( [ "inputs/BMW27GE.blend" ], [ "--size", "240x135" ] ),
            "large":  ( [ "inputs/Ring_27.blend" ], [ "--size", "256x180" ] ),
            "huge":   ( [ "inputs/TeeglasFX_27.blend" ], [ "--size", "512x288" ] ),
        }[ self.size ]
        cmd = [ self.exe, "-b" ] + blend + [ "-P", "render.py" ]
        cmd += [ "--" ] + render + [ outfile ]
        return cmd, dict()

    def diff( self, golden, actual ):
        diffimg = os.path.join( root, "bin", "diff-img" )
        with Multitmp( len( actual ) ) as result:
            with open( "/dev/null", 'w' ) as null:
                Multitmp.check_call(
                    [ diffimg,
                        "--thresh", str( self.options.threshold ),
                        "--l2",
                        golden, actual
                    ],
                    stdout = result, stderr = null,
                    verbose = self.options.verbose
                )
            for fname in result:
                with open( fname ) as fh:
                    for line in fh:
                        if line.startswith( "avg" ):
                            fitness = float( line.split()[ 2 ] )
                            break
                    else:
                        return False
                if fitness > self.options.threshold:
                    return False
            return True

BlenderTest().run( root )

# exit non-zero so GenProg won't consider this a "repair"
exit( 1 )

