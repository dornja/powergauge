#!/usr/bin/python

import os
import sys
from scipy import stats

root = os.path.abspath( sys.argv[ 0 ] )
for i in range( 3 ):
    root = os.path.dirname( root )
sys.path.append( os.path.join( root, "lib" ) )
from testutil import ParallelTest

# Run test.py -h to get usage information

class FerretTest( ParallelTest ):
    def getCommand( self, outfile ):
        inputdir = "inputs/input_%s" % self.size
        if self.size == "tiny":
            inputdir = "inputs/input_dev"
        if self.size == "huge":
            inputdir = "inputs/input_native"
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

    def validateCorrectness( self, outfile ):
        correctness = ParallelTest.validateCorrectness( self, outfile )
        if self.options.error:
            golden = self.getGolden()
            gold_queries = dict()
            with open( golden ) as fh:
                for line in fh:
                    gold_rank = dict()
                    query = line.split()[0]
                    ranks = line.split()[1:]
                    for rank in ranks:
                        image, rank = rank.split(":")
                        rank = float(rank)
                        gold_rank[image] = rank
                    gold_queries[query] = gold_rank
            errors = list()
            for fname in outfile:
                test_queries = dict()
                # If the file isn't created, assign zero fitness
                if not os.path.isfile(fname):
                    return False
                with open( fname ) as fh:
                    for line in fh:
                        test_rank = dict()
                        query = line.split()[0]
                        ranks = line.split()[1:]
                        for rank in ranks:
                            image, rank = rank.split(":")
                            rank = float(rank)
                            if image not in gold_queries[query]:
                                gold_queries[query][image] = float("inf")
                            test_rank[image] = rank
                        test_queries[query] = test_rank
                total_correlation = 0
                for query in gold_queries:
                    gold_rank = gold_queries[query]
                    # If all the queries aren't performed, assign zero fitness
                    try:
                        test_rank = test_queries[query]
                    except KeyError:
                        return False
                    gold_list = list()
                    test_list = list()
                    for image, rank in gold_rank.items():
                        gold_list.append(rank)
                        test_list.append(test_rank.get(image, float("inf")))
                    tau, _ = stats.kendalltau(gold_list, test_list)
                    total_correlation += tau
                # Tau is a number between -1 and 1, this is a fix to not break our tools
                error = 1 - total_correlation/len( gold_queries )
                errors.append( 1 / ( error + 1 ) )
            self.error = errors
            return True
        else:
            return correctness

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

FerretTest().run( root )

# exit non-zero so GenProg won't consider this a "repair"
exit( 1 )

