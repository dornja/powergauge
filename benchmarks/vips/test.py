#!/usr/bin/python

import os
import shutil
import sys

root = os.path.abspath( sys.argv[ 0 ] )
for i in range( 3 ):
    root = os.path.dirname( root )
sys.path.append( os.path.join( root, "lib" ) )
from testutil import ParallelTest, Multitmp
from util import mktemp

# Run test.py -h to get usage information

class VipsTest( ParallelTest ):
    def getOutputSuffix( self ):
        return ".ppm"

    def getCommand( self, outfile ):
        cmd = [ self.exe, "--vips-concurrency=1", "im_benchmark" ]
        cmd += {
            "test":   [ "inputs/barbados_256x288.v" ],
            "tiny":   [ "inputs/barbados_256x288.v" ],
            "small":  [ "inputs/pomegranate_1600x1200.v" ],
            "medium": [ "inputs/vulture_2336x2336.v" ],
            "large":  [ "inputs/bigben_2662x5500.v" ],
            "huge":   [ "inputs/orion_18000x18000.v" ],
        }[ self.size ]
        cmd += [ outfile ]
        return cmd, dict()

    def validateCorrectness( self, outfile ):
        with Multitmp( len( outfile ) ) as tmp:
            Multitmp.check_call(
                [ "sed", "-e", "/^#im_vips2ppm/d", outfile ],
                stdout = tmp
            )
            Multitmp.check_call( [ "mv", tmp, outfile ] )
        return ParallelTest.validateCorrectness( self, outfile )

    def getParallelFitness( self, *args ):
        with mktemp( prefix = "vips" ) as tmpexe:
            oldexe = self.exe
            shutil.copyfile( self.exe, tmpexe )
            shutil.copymode( self.exe, tmpexe )
            try:
                self.exe = tmpexe
                return ParallelTest.getParallelFitness( self, *args )
            finally:
                self.exe = oldexe

VipsTest().run( root )

# exit non-zero so GenProg won't consider this a "repair"
exit( 1 )

