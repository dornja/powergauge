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

class FacesimTest( ParallelTest ):
    def checkArgs( self, parser, args ):
        ParallelTest.checkArgs( self, parser, args )
        if self.size != "huge":
            self.size = "large"

    def getCommand( self, outfile ):
        if self.size == "huge":
            inputdir = "inputs/native/Face_Data"
        else:
            inputdir = "inputs/%s/Face_Data" % self.size
        Multitmp.check_call( [ "rm", "-f", outfile ] )
        Multitmp.check_call( [ "mkdir", outfile ] )
        Multitmp.check_call( [ "rsync", "-a", inputdir, outfile ] )

        cmd = [
            os.path.join( os.getcwd(), self.exe ), "-timing", "-threads", "1"
        ]

        return cmd, { "cwd": outfile }

    def getGolden( self ):
        return "outputs/%s" % self.size

    def validateCorrectness( self, outfile ):
        Multitmp.check_call(
            [ "rm", "-rf", "Face_Data", "Storytelling/output/log.txt" ],
            cwd = outfile
        )
        return ParallelTest.validateCorrectness( self, outfile )

FacesimTest().run( root )

# exit non-zero so GenProg won't consider this a "repair"
exit( 1 )

