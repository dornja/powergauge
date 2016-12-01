#!/usr/bin/python

from math import isnan, isinf
import os
import re
from scipy.stats import kendalltau
import sys

root = os.path.abspath( sys.argv[ 0 ] )
for i in range( 3 ):
    root = os.path.dirname( root )
sys.path.append( os.path.join( root, "lib" ) )
from testutil import ParallelTest

# Run test.py -h to get usage information

pat = re.compile( r"Swaption (\d+): \[SwaptionPrice: ([^ ]+) StdError: [^ ]+" )

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

    def getParallelFitness( self, *args ):
        results = ParallelTest.getParallelFitness( self, *args )
        if self.options.error:
            if results == [ [ 0 ] ]:
                return [ [ 0 ], [ 0 ] ]
            results.append( self.error )
        return results

    def _getPrices( self, fname ):
        prices = list()
        with open( fname ) as fh:
            for i, line in enumerate( fh ):
                m = pat.match( line )
                if not m:
                    prices.append( ( None, i, None ) )
                else:
                    try:
                        prices.append(
                            ( m.group( 1 ), i, float( m.group( 2 ) ) )
                        )
                    except ValueError:
                        prices.append( ( None, i, None ) )
        prices.sort()
        return prices

    def diff( self, golden, actual ):
        if not self.options.error:
            return ParallelTest.diff( self, golden, actual )
        g_prices = self._getPrices( golden )

        self.error = list()
        for fname in actual:
            a_prices = self._getPrices( fname )
            i, j = 0, 0
            a, b = list(), list()
            error = 0
            while i < len( g_prices ) and j < len( a_prices ):
                if g_prices[ i ][ 0 ] == a_prices[ j ][ 0 ]:
                    a.append( g_prices[ i ][ 1 ] )
                    b.append( a_prices[ j ][ 1 ] )
                    if g_prices[ i ][ 2 ] == 0:
                        e = abs( a_prices[ j ][ 2 ] )
                    elif g_prices[ i ][ 2 ] < a_prices[ j ][ 2 ]:
                        e = 1 - g_prices[ i ][ 2 ] / a_prices[ j ][ 2 ]
                    else:
                        e = 1 - a_prices[ j ][ 2 ] / g_prices[ i ][ 2 ]
                    if isnan( e ) or isinf( e ):
                        e = 1
                    error += e
                    i += 1
                    j += 1
                elif g_prices[ i ][ 0 ] < a_prices[ j ][ 0 ]:
                    i += 1
                    error += 1
                else:
                    j += 1
                    error += 1
            error += len( g_prices ) - i
            error += len( a_prices ) - j
            if len( a ) < 2:
                error += 1
            else:
                error += 0.5 - 0.5 * kendalltau( a, b )[ 0 ]

            self.error.append( 1 / ( error + 1.0 ) )
        return True

SwaptionsTest().run( root )

# exit non-zero so GenProg won't consider this a "repair"
exit( 1 )

