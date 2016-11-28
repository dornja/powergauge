#!/usr/bin/python

import os
import sys

root = os.path.abspath( sys.argv[ 0 ] )
for i in range( 3 ):
    root = os.path.dirname( root )
sys.path.append( os.path.join( root, "lib" ) )
from testutil import Multitmp, ParallelTest
from optparse import OptionGroup, OptionParser
from distutils.spawn import find_executable
from util import infomsg

# Run test.py -h to get usage information

class LibavTest( ParallelTest ):
    def getParser( self ):
        return OptionParser(
            usage = "%prog [options] __EXE_NAME__ test __FITNESS_FILE__"
        )

    def getOutputSuffix( self ):
        return { "mpeg4":  ".avi",
                 "prores": ".mov",
        }[ self.test ]

    def getCommand( self, outfile ):
        cmd = [ self.exe ]
        cmd += {
            "mpeg4":    [ "-i", "inputs/eledream_640x360_8.y4m",
                          "-vtag", "xvid",
                          "-qscale", "2",       # 1-31
                          "-an",
                          outfile],
            "prores":  [ "-i", "inputs/eledream_640x360_8.y4m",
                         "-c:v", "prores",
                         "-quant_mat", "proxy", # {proxy, lt, standard, hq}
                         "-profile:v", "proxy", # {proxy, lt, standard, hq}
                         "-mbs_per_slice", "8", # 1-8
                         "-qscale", "0",        # 0-64
                         "-an",
                         outfile]
        }[ self.test ]
        return cmd, dict()

    def getGolden( self ):
        if self.options.error:
            return "outputs/%s" % self.test
        else:
            return "outputs/%s%s" % ( self.test, self.getOutputSuffix() )

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
                        diffimg = os.path.join( root, "bin", "diff-img.sh")
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
        return True
        # if self.options.error:
        #     return True
        # else:
        #     return ParallelTest.diff( self, golden, actual )


    def getParallelFitness( self, root, metrics ):
        results = ParallelTest.getParallelFitness( self, root, metrics )
        if self.options.error:
            if results == [ [ 0 ] ]:
                return [ [ 0 ], [ 0 ] ]
            results.append( self.error )
            return results
        else:
            return results

    def checkArgs( self, parser, args ):
        ParallelTest.checkArgs( self, parser, args )
        self.test = args[ 1 ]

LibavTest().run( root )

# exit non-zero so GenProg won't consider this a "repair"
exit( 1 )

