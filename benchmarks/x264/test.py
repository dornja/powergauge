#!/usr/bin/python

import os
import sys

root = os.path.abspath( sys.argv[ 0 ] )
for i in range( 3 ):
    root = os.path.dirname( root )
sys.path.append( os.path.join( root, "lib" ) )

from testutil import Multitmp, ParallelTest
from subprocess import check_call

# Run test.py -h to get usage information

class X264Test( ParallelTest ):
    def getOutputSuffix( self ):
        return ".mkv"

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

    def getGolden( self ):
        # If we are using error as a metric, the golden is a folder containing the video
        # split into frames, otherwise we just diff the videos
        if self.options.error:
            return "outputs/%s" % self.size
        else:
            return "outputs/%s%s" % ( self.size, self.getOutputSuffix() )

    def validateCorrectness( self, outfile ):
        if self.options.error:
            with Multitmp( len( outfile ) ) as outdir:
                Multitmp.check_call( [ "rm", "-rf", outdir ], verbose = self.options.verbose )
                Multitmp.check_call( [ "mkdir", outdir ], verbose = self.options.verbose )
                Multitmp.check_call(
                    [ "avconv",
                      "-i", outfile,
                      "-r", "25",
                      "-loglevel", "panic",
                      "%03d.png"
                    ],
                    verbose = self.options.verbose,
                    cwd = outdir
                )
                if not ParallelTest.validateCorrectness( self, outdir ):
                    return False
                with Multitmp( len( outfile ) ) as result:
                    with open( "/dev/null", 'w' ) as null:
                        golden = self.getGolden()
                        diffimg = os.path.join( root, "benchmarks",
                                                "x264", "diff-img.sh")
                        Multitmp.check_call(
                            [ diffimg,
                              golden,
                              outdir
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

    def diff( self, golden, actual):
        if self.options.error:
            return True
        else:
            return ParallelTest.diff( self, golden, actual )

    def getParallelFitness( self, root, metrics ):
        results = ParallelTest.getParallelFitness( self, root, metrics )
        if self.options.error:
            if results == [ [ 0 ] ]:
                return [ [ 0 ], [ 0 ] ]
            results.append( self.error )
            return results
        else:
            return results

X264Test().run( root )

# exit non-zero so GenProg won't consider this a "repair"
exit( 1 )
