#!/usr/bin/python

from optparse import OptionParser
import os
from subprocess import check_call
import sys
import time

root = os.path.abspath( sys.argv[ 0 ] )
for i in range( 3 ):
    root = os.path.dirname( root )
sys.path.append( os.path.join( root, "lib" ) )
from testutil import Multitmp, ParallelTest
from util import mktemp

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
    
    def getParallelFitness( self, *args ):
        true_exe = "build/bin/blender"
        temp_exe = self.exe
        with mktemp() as tmp:
            check_call( [ "cp", "-p", true_exe, tmp ] )
            try:
                check_call( [ "cp", "-p", self.exe, true_exe ] )
                self.exe = true_exe
                results = ParallelTest.getParallelFitness( self, *args )
                if self.options.error:
                    if results == [ [ 0 ] ]:
                        return [ [ 0 ], [ 0 ] ]
                    results.append( self.error )
                    return results
                else:
                    return results
            finally:
                if self.size == "huge":
                    time.sleep( 0.5 )
                check_call( [ "cp", "-p", tmp, true_exe ] )
                self.exe = temp_exe

    def getCommand( self, outfile ):
        blend, render = {
            "tiny":   ( [ "inputs/Star-collapse-ntsc.blend" ], [ "--size", "360x240" ] ),
            "small":  ( [ "inputs/buggy2.1.blend" ], [ "--size", "320x180" ] ),
            "medium": ( [ "inputs/BMW27GE.blend" ], [ "--size", "240x135" ] ),
            "large":  ( [ "inputs/Ring_27.blend" ], [ "--size", "256x180" ] ),
            "huge":   ( [ "inputs/TeeglasFX_27.blend" ], [ "--size", "512x288" ] ),
        }[ self.size ]
        cmd = [ self.exe, "-b" ] + blend + [ "-P", "render.py" ]
        cmd += [ "--" ] + render + [ outfile ]
        return cmd, dict()

    def validateCorrectness( self, outfile ):
        if self.options.error:
            with Multitmp( len( outfile ) ) as result:
                with open( "/dev/null", 'w' ) as null:
                    golden = self.getGolden()
                    diffimg = os.path.join( root, "bin", "diff-img")
                    Multitmp.check_call(
                        [ diffimg,
                          golden,
                          outfile
                        ],
                        stdout = result, stderr = null,
                        verbose = self.options.verbose,
                    )
                errors = list()
                for fname in result:
                    with open( fname ) as fh:
                        error = 0
                        for line in fh:
                            if line.startswith( "total" ):
                                error += float( line.split()[ 2 ] )
                        errors.append( 1 / ( error + 1 ) )
                self.error = errors
                return True
        else:
            return ParallelTest.validateCorrectness( self, outfile )
    
    def diff( self, golden, actual ):
        if self.options.error:
            return True
        else:
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

