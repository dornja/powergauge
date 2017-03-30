#!/usr/bin/python

import numpy as np
import os
from subprocess import check_call
import sys

root = os.path.abspath( sys.argv[ 0 ] )
for i in range( 3 ):
    root = os.path.dirname( root )
sys.path.append( os.path.join( root, "lib" ) )
from testutil import Multitmp, ParallelTest
from util import mktemp

# Run test.py -h to get usage information

class BlackscholesTest( ParallelTest ):
    def __init__( self, *args ):
        self.__backup = None
        ParallelTest.__init__( self, *args )

    def __del__( self ):
        if self.__backup is not None:
            self.__backup[ 0 ].__exit__( None, None, None )

    def _getInputArgs( self ):
        return {
            "test":   [ "inputs/in_4.txt" ],
            "tiny":   [ "inputs/in_16.txt" ],
            "small":  [ "inputs/in_4K.txt" ],
            "medium": [ "inputs/in_16K.txt" ],
            "large":  [ "inputs/in_64K.txt" ],
            "huge":   [ "inputs/in_10M.txt" ],
        }[ self.size ]


    def checkArgs( self, *args ):
        result = ParallelTest.checkArgs( self, *args )
        context = mktemp()
        self.__backup = context, context.__enter__()
        check_call( [
            "rsync", "-a", self._getInputArgs()[ 0 ], self.__backup[ 1 ]
        ] )
        return result

    def getCommand( self, outfile ):
        cmd = [ self.exe, "1" ] + self._getInputArgs() + [ outfile ]
        return cmd, dict()

    def getParallelFitness( self, *args ):
        results = ParallelTest.getParallelFitness( self, *args )
        check_call( [
            "rsync", "-a", self.__backup[ 1 ], self._getInputArgs()[ 0 ]
        ] )
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

