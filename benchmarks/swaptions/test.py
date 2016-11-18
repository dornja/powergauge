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

class SwaptionsTest( ParallelTest ):
    def getCommand( self, outfile ):
        cmd = [ self.exe ]
        cmd += {
            "test":   [ "-ns",   "1", "-sm",       "5", "-nt", "1" ],
            "tiny":   [ "-ns",   "3", "-sm",      "50", "-nt", "1" ],
            "small":  [ "-ns",  "16", "-sm",   "10000", "-nt", "1" ],
            "medium": [ "-ns",  "32", "-sm",   "20000", "-nt", "1" ],
            "large":  [ "-ns",  "64", "-sm",   "40000", "-nt", "1" ],
            "huge":   [ "-ns", "128", "-sm", "1000000", "-nt", "1" ],
        }[ self.size ]
        return cmd, { "stderr": outfile }

    def validateCorrectness( self, outfile ):
        if self.options.error:
            with Multitmp( len( outfile ) ) as result:
                with open( "/dev/null", 'w' ) as null:
                    golden = self.getGolden()
                    diff = os.path.join( root, "benchmarks", "swaptions", "diff.py")
                    Multitmp.check_call(
                        [ diff,
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
                            error += float(line)
                        errors.append( 1 / ( error + 1 ) )
                self.error = errors
                return True
        else:
            return ParallelTest.validateCorrectness( self, outfile )

    def getParallelFitness( self, *args ):
        results = ParallelTest.getParallelFitness( self, *args )
        if self.options.error:
            if results == [ [ 0 ] ]:
                return [ [ 0 ], [ 0 ] ]
            results.append( self.error )
            return results
        else:
            return results

    def diff( self, golden, actual ):
        if self.options.error:
            return True
        else:
            return ParallelTest.diff( self, golden, actual )

SwaptionsTest().run( root )

# exit non-zero so GenProg won't consider this a "repair"
exit( 1 )

