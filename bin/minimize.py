#!/usr/bin/python2

from difflib import SequenceMatcher
import numpy
from optparse import OptionParser
import os
import re
from scipy.stats import mannwhitneyu
import shutil
from subprocess import call
import sys
import tempfile

root = os.path.dirname( os.path.dirname( os.path.abspath( sys.argv[ 0 ] ) ) )
sys.path.append( os.path.join( root, "lib" ) )
from DD import DD
from genprogutil import GenProgEnv
from testutil import reduce_error
from util import infomsg, mktemp

# Casting minimization of energy as a delta-debugging problem. The original
# assembly code is taken as "yesterday's code" and hte output from the GA is
# taken as "today's code." A subset of deltas "passes" if the modeled energy
# usage is substantially different from the energy used by the GA output, and
# fails if it is substantially the same. Thus, the minimal failing deltas
# constitute the minimal set of deltas that have substantially the same energy
# as the optimized variant.

parser = OptionParser( usage = "%prog [options] genprog configuration" )
parser.add_option(
    "--genome", metavar = "genome", help = "minimize set of edits in genome"
)
parser.add_option(
    "--sources", metavar = "prefix",
    help = "minimize line-by-line deltas from original to sources in prefix"
)
parser.add_option(
    "--alpha", metavar = "a", type = float, default = 0.05,
    help = "alpha value for statistically differentiating energy distributions"
)
parser.add_option(
    "--compound-edits", action = "store_true",
    help = "do not convert swaps and replaces into appends and deletes"
)
parser.add_option(
    "--low-error", metavar = "p", type = float, default = 0.01,
    help = "repeat measurements until (standard error / mean) < (1+p)"
)
options, args = parser.parse_args()

if len( args ) < 2:
    parser.print_help()
    exit()
if options.genome is None and options.sources is None:
    print >>sys.stderr, "ERROR: either --genome or --sources is required"
    parser.print_help()
    exit( 1 )
if options.genome is not None and options.sources is not None:
    print >>sys.stderr, "ERROR: --genome and --sources are mutually exclusive"
    parser.print_help()
    exit( 1 )

genprog    = args[ 0 ]
configfile = args[ 1 ]

########
# 
########

def first( sequence ):
    return list( map( lambda (_,y): y, sequence ) )

class DDGenome( DD ):
    def __init__( self, config, genome ):
        DD.__init__( self )
        self.genprog = GenProgEnv( genprog, config )

        infomsg( "INFO: computing optimized energy usage" )
        infomsg( "INFO: genome:", *first( genome ) )
        with self.genprog.build_variant( first( genome ) ) as exe:
            tester = self.test_func( exe )
            self.optimized = list( reduce_error( tester, options.low_error, 20 ) )
        self.mean = numpy.mean( self.optimized )

    def test_func( self, exe ):
        def runner():
            fitness = self.genprog.run_test( exe )
            infomsg( "   ", fitness )
            return fitness
        return runner

    def _test( self, deltas ):
        # "Passing" behavior is more like the original (slower, more energy).
        # "Failing" behavior is more optimized (faster, less energy).

        infomsg( "INFO: genome:", *first( deltas ) )
        with self.genprog.build_variant( first( deltas ) ) as exe:
            if exe is None:
                return self.UNRESOLVED
            else:
                tester = self.test_func( exe )
                fitness = list( reduce_error( tester, options.low_error, 20 ) )
                pval = mannwhitneyu( self.optimized, fitness )[ 1 ]
                if pval < options.alpha and numpy.mean( fitness ) < self.mean:
                    return self.PASS
                else:
                    return self.FAIL

if options.genome is not None:
    genome = options.genome.split()
    if not options.compound_edits:
        fieldpat = re.compile( r'[a-z]\((\d+),(\d+)\)' )
        pending = list( reversed( genome ) )
        genome = list()
        while len( pending ) > 0:
            gene = pending.pop()
            if gene[ 0 ] == 'a':
                genome.append( gene )
            elif gene[ 0 ] == 'd':
                genome.append( gene )
            elif gene[ 0 ] == 'r':
                m = fieldpat.match( gene )
                dst, src = m.group( 1, 2 )
                pending += [ 'd(%s)' % dst, 'a(%s,%s)' % ( dst, src ) ]
            elif gene[ 0 ] == 's':
                m = fieldpat.match( gene )
                dst, src = m.group( 1, 2 )
                pending += [ 'r(%s,%s)' % ( dst, src ), 'r(%s,%s)' % ( src, dst ) ]
            else:
                infomsg( "ERROR: unrecognized gene:", gene )
                exit( 1 )
    genome = list( enumerate( genome ) )
    dd = DDGenome( configfile, genome )
else:
    print >>sys.stderr, "file-based differences not implemented yet"
    exit( 2 )

genome = dd.ddmin( genome )
infomsg( "simplified genome:\n   ", *first( genome ) )

