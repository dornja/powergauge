#!/usr/bin/python
from __future__ import division

import os
import sys
import tempfile
from scipy import stats
from math import isnan, isinf
from numpy import isclose
from subprocess import check_call, call

root = os.path.abspath( sys.argv[ 0 ] )
for i in range( 3 ):
    root = os.path.dirname( root )
sys.path.append( os.path.join( root, "lib" ) )
from testutil import Multitmp, ParallelTest
from util import mktemp

root = os.path.abspath( sys.argv[ 0 ] )
for i in range( 3 ):
    root = os.path.dirname( root )
sys.path.append( os.path.join( root, "lib" ) )
from testutil import ParallelTest

# Run test.py -h to get usage information

class FerretTest( ParallelTest ):
    def __init__( self, *args ):
        self.__backup = None
        ParallelTest.__init__( self, *args )

    def __del__( self ):
        if self.__backup is not None:
            call( [ "rm", "-rf", self.__backup ] )

    def _getInputDir( self ):
        return {
            "test":   "inputs/input_test",
            "tiny":   "inputs/input_dev",
            "small":  "inputs/input_small",
            "medium": "inputs/input_medium",
            "large":  "inputs/input_large",
            "huge":   "inputs/input_native",
        }[ self.size ]

    def checkArgs( self, *args ):
        result = ParallelTest.checkArgs( self, *args )
        self.__backup = tempfile.mkdtemp()
        check_call( [
            "rsync", "-a", self._getInputDir(), self.__backup
        ] )
        return result

    def getCommand( self, outfile ):
        inputdir = self._getInputDir()
        cmd = [ self.exe, "%s/corel" % inputdir, "lsh", "%s/queries" % inputdir ]
        cmd += {
            "test":   [  "5",  "5", "1" ],
            "tiny":   [  "5",  "5", "1" ],
            "small":  [ "10", "20", "1" ],
            "medium": [ "10", "20", "1" ],
            "large":  [ "10", "20", "1" ],
            "huge":   [ "50", "20", "1" ],
        }[ self.size ]
        cmd += [ outfile ]
        return cmd, dict()

    def readFile( self, infile ):
        queries = list()
        with open( infile ) as fh:
            for i, line in enumerate( fh ):
                cur_rank = list()
                terms = line.split()
                if len( terms ) == 0:
                    queries.append( ( "", i, [] ) )
                    continue
                query = terms[0]
                ranks = terms[1:]
                for j, rank in enumerate( ranks ):
                    terms = rank.split(":")
                    if len( terms ) != 2:
                        cur_rank.append( ( "", j, 0.0 ) )
                        continue
                    image, rank = terms
                    try:
                        rank = float( rank )
                    except ValueError:
                        cur_rank.append( ( "", j, 0.0 ) )
                        continue
                    if not isnan( rank ):
                        cur_rank.append( ( image, j, rank ) )
                cur_rank.sort()
                queries.append( ( query, i, cur_rank ) )
        queries.sort()
        return queries

    def comm( self, l1, l2 ):
        i, j = 0, 0
        a, b = list(), list()
        a_extra, b_extra = list(), list()
        while i < len( l1 ) and j < len( l2 ):
            if l1[ i ][ 0 ] == l2[ j ][ 0 ]:
                a.append( l1[ i ][ 1: ] )
                b.append( l2[ j ][ 1: ] )
                i += 1
                j += 1
            elif l1[ i ][ 0 ] < l2[ j ][ 0 ]:
                a_extra.append( l1[ i ][ 1: ] )
                i += 1
            else:
                b_extra.append( l2[ j ][ 1: ] )
                j += 1
        while i < len( l1 ):
            a_extra.append( l1[ i ][ 1: ] )
            i += 1
        while j < len( l2 ):
            b_extra.append( l2[ j ][ 1: ] )
            j += 1
        return ( a_extra, a, b, b_extra )

    def validateCorrectness( self, outfile ):
        correctness = ParallelTest.validateCorrectness( self, outfile )
        if not correctness:
            return False
        if self.options.error:
            golden = self.getGolden()
            gold_queries = self.readFile( golden )
            errors = list()
            # Error function for missing/extra things. Max good is 0, max bad is 1
            def errorFun( missing, extra ):
                return 1 - ( 1 / ( 2 + ( 2 * missing ) ) ) - ( 1 / ( 2 + ( 2 * extra ) ) )
            for fname in outfile:
                # No output file is max error
                if not os.path.isfile(fname):
                    return False
                test_queries = dict()
                test_queries = self.readFile( fname )
                t1 = 0          # Kendall tau penalty for weights
                t2 = 0          # Kendall tau penalty for rank output order
                t3 = 0          # Kendall tau penalty for query output order
                w = 0           # Weighting error penalty
                r = 0           # Penalty for missing or extra ranks
                extra_queries, test_queries_int, gold_queries_int, missing_queries = \
                    self.comm( test_queries, gold_queries )
                # Penalty for missing or extra queries
                q = errorFun( len( missing_queries ), len( extra_queries ) )
                if len( gold_queries_int ) < 2:
                    t3 = 1
                else:
                    t3, _ = stats.kendalltau( [ x for x, _ in test_queries_int ],
                                              [ x for x, _ in gold_queries_int ] )
                    t3 = (.5) - (.5 * t3) # Change tau scale to [0-1] where 0 is good
                if isclose( t3, 0 ):
                    t3 = 0.0
                for test_query, gold_query in zip( test_queries_int, gold_queries_int ):
                    extra_ranks, test_ranks_int, gold_ranks_int, missing_ranks = \
                        self.comm( test_query[1], gold_query[1] )
                    r += errorFun( len( missing_ranks ), len( extra_ranks ) )
                    if len( gold_ranks_int ) < 2:
                        tau1 = 1
                    else:
                        tau1, _ = stats.kendalltau( [x for _, x in gold_ranks_int],
                                                    [x for _, x in test_ranks_int] )
                        tau1 = (.5) - (.5 * tau1) # Change tau scale to [0-1] where 0 is good
                    if isclose( tau1, 0 ):
                        tau1 = 0.0
                        absolute_error = sum( [ abs( a[1] - b[1] ) for a, b in
                                                zip( gold_ranks_int, test_ranks_int ) ] )
                        if isnan( absolute_error ) or isinf( absolute_error ):
                            w += 1
                        else:
                            w += absolute_error / ( absolute_error + 1 )
                    t1 += tau1
                    if len( gold_ranks_int ) < 2:
                        tau2 = 1
                    else:
                        tau2, _ = stats.kendalltau( [x for x, _ in gold_ranks_int],
                                                    [x for x, _ in test_ranks_int] )
                        tau2 = (.5) - (.5 * tau2) # Change tau scale to [0-1] where 0 is good
                    if isclose( tau2, 0 ):
                        tau2 = 0.0
                    t2 += tau2
                t1 = t1 / len( gold_queries_int )
                t2 = t2 / len( gold_queries_int )
                w = w / len( gold_queries_int )
                r = r / len( gold_queries_int )
                error = 1000 * q + 100 * r + 10 * t1 + 10 * t2 + 5 * t3 + w
                errors.append( 1 / ( error + 1 ) )
            self.error = errors
            return True
        else:
            return correctness

    def diff( self, golden, actual):
        self.error = list()
        if self.options.error:
            return True
        else:
            return ParallelTest.diff( self, golden, actual )

    def getParallelFitness( self, root, metrics ):
        results = ParallelTest.getParallelFitness( self, root, metrics )
        check_call( [
            "rsync", "-a", self.__backup, self._getInputDir()
        ])
        if self.options.error:
            if results == [ [ 0 ] ]:
                return [ [ 0 ], [ 0 ] ]
            results.append( self.error )
            return results
        else:
            return results

FerretTest().run( root )

# exit non-zero so GenProg won't consider this a "repair"
exit( 1 )

