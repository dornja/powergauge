#!/usr/bin/python

import os
import sys

root = os.path.abspath( sys.argv[ 0 ] )
for i in range( 3 ):
    root = os.path.dirname( root )
sys.path.append( os.path.join( root, "lib" ) )
from testutil import Multitmp, ParallelTest

# Run test.py -h to get usage information

class FluidanimateTest( ParallelTest ):
    def getCommand( self, outfile ):
        cmd = [ self.exe, "1" ]
        cmd += {
            "test":   [   "1", "inputs/in_5K.fluid" ],
            "tiny":   [   "3", "inputs/in_15K.fluid" ],
            "small":  [   "5", "inputs/in_35K.fluid" ],
            "medium": [   "5", "inputs/in_100K.fluid" ],
            "large":  [   "5", "inputs/in_300K.fluid" ],
            "huge":   [ "500", "inputs/in_500K.fluid" ],
        }[ self.size ]
        cmd += [ outfile ]
        return cmd, dict()

    def getParallelFitness( self, *args ):
        results = ParallelTest.getParallelFitness( self, *args )
        if self.options.error:
            if results == [ [ 0 ] ]:
                return [ [ 0 ], [ 0 ] ]
            results.append( self.error )
        return results

    def diff( self, golden, actual ):
        if not self.options.error:
            return ParallelTest.diff( self, golden, actual )

        with Multitmp( len( actual ) ) as count:
            Multitmp.check_call(
                [ os.path.join( root, "bin", "hamming" ), golden, actual ],
                stdout = count, verbose = self.options.verbose
            )
            self.error = list()
            for fname in count:
                with open( fname ) as fh:
                    for line in fh:
                        self.error.append( 1.0 / ( 1 + float( line.strip() ) ) )
                        break
        return True

FluidanimateTest().run( root )

# exit non-zero so GenProg won't consider this a "repair"
exit( 1 )

