#!/usr/bin/python

import os
from subprocess import check_call
import sys

root = os.path.abspath( sys.argv[ 0 ] )
for i in range( 3 ):
    root = os.path.dirname( root )
sys.path.append( os.path.join( root, "lib" ) )
from testutil import Multitmp, ParallelTest
from util import mktemp, infomsg

# Run test.py -h to get usage information

class FreqmineTest( ParallelTest ):
    def __init__( self, *args ):
        self.__backup = None
        ParallelTest.__init__( self, *args )

    def __del__( self ):
        if self.__backup is not None:
            self.__backup[ 0 ].__exit__( None, None, None )

    def _getInputArgs( self ):
        return {
            "test":   [ "inputs/T10I4D100K_3.dat",     "1" ],
            "tiny":   [ "inputs/T10I4D100K_1k.dat",    "3" ],
            "small":  [ "inputs/kosarak_250k.dat",   "220" ],
            "medium": [ "inputs/kosarak_500k.dat",   "410" ],
            "large":  [ "inputs/kosarak_990k.dat",   "790" ],
            "huge":   [ "inputs/webdocs_250k.dat", "11000" ],
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
        cmd = [ self.exe ] + self._getInputArgs() + [ outfile ]
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

    def diff( self, golden, actual ):
        if not self.options.error:
            return ParallelTest.diff( self, golden, actual )
        with Multitmp( len( actual ) ) as result:
            Multitmp.check_call(
                [ os.path.join( root, "bin", "hamming" ), golden, actual ],
                stdout = result, verbose = self.options.verbose
            )
            self.error = list()
            for fname in result:
                with open( fname ) as fh:
                    for line in fh:
                        self.error.append( 1 / ( 1 + float( line.strip() ) ) )
                        break
                    else:
                        self.error.append( 0 )
        return True

os.environ[ "OMP_NUM_THREADS" ] = "1"
FreqmineTest().run( root )

# exit non-zero so GenProg won't consider this a "repair"
exit( 1 )

