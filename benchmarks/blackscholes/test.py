#!/usr/bin/python

import numpy as np
import os
import sys

root = os.path.abspath( sys.argv[ 0 ] )
for i in range( 3 ):
    root = os.path.dirname( root )
sys.path.append( os.path.join( root, "lib" ) )
from testutil import ParallelTest

# Run test.py -h to get usage information

class BlackscholesTest( ParallelTest ):
    def getCommand( self, outfile ):
        cmd = [ self.exe, "1" ]
        cmd += {
            "test":   [ "inputs/in_4.txt" ],
            "tiny":   [ "inputs/in_16.txt" ],
            "small":  [ "inputs/in_4K.txt" ],
            "medium": [ "inputs/in_16K.txt" ],
            "large":  [ "inputs/in_64K.txt" ],
            "huge":   [ "inputs/in_10M.txt" ],
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

    def _readOutput( self, fname ):
        if not os.path.exists( fname ):
            return None
        with open( fname ) as fh:
            try:
                count = int( next( fh ) )
                values = list()
                for line in fh:
                    values.append( float( line.strip() ) )
                    if np.isnan( values[ -1 ] ):
                        return None
            except ValueError:
                return None
        if len( values ) != count:
            return None
        return np.array( values )

    def diff( self, golden, actual ):
        if not self.options.error:
            return ParallelTest.diff( self, golden, actual )
        golden = self._readOutput( golden )
        errors = list()
        for fname in actual:
            values = self._readOutput( fname )
            if values is None or len( values ) != len( golden ):
                errors.append( 0 )
            else:
                rmse = np.sqrt( np.mean( ( golden - values ) ** 2 ) )
                errors.append( 1.0 / ( 1 + rmse ) )
        self.error = errors
        return True

BlackscholesTest().run( root )

# exit non-zero so GenProg won't consider this a "repair"
exit( 1 )

