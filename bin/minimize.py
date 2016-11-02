#!/usr/bin/python2

from contextlib import closing, contextmanager
from difflib import SequenceMatcher
import numpy as np
from optparse import OptionParser
import os
import shelve
from scipy.stats import mannwhitneyu
import shutil
from subprocess import call, check_call, CalledProcessError
import sys
import tempfile

root = os.path.dirname( os.path.dirname( os.path.abspath( sys.argv[ 0 ] ) ) )
sys.path.append( os.path.join( root, "lib" ) )
from DD import DD
from genprogutil import GenProgEnv, lower_genome
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
    "--genome-file", metavar = "file",
    help = "minimize set of edits in the named file"
)
parser.add_option(
    "--sources", metavar = "prefix",
    help = "minimize line-by-line deltas from original to sources in prefix"
)
parser.add_option(
    "--search", metavar = "alg",
    choices = ( "delta", "brute" ), default = "delta",
    help = "algorithm for minimizing the deltas"
)
parser.add_option(
    "--alpha", metavar = "a", type = float, default = 0.05,
    help = "alpha value for statistically differentiating energy distributions"
)
parser.add_option(
    "--cache", metavar = "file", help = "cache fitness results to named file"
)
parser.add_option(
    "--compound-edits", action = "store_true",
    help = "do not convert swaps and replaces into appends and deletes"
)
parser.add_option(
    "--save-binary", metavar = "file",
    help = "save the minimized binary to the named file"
)
parser.add_option(
    "--save-genome", metavar = "file",
    help = "save the minimized edits to the named file"
)
parser.add_option(
    "--save-sources", metavar = "dir",
    help = "copy the sources with the minimized edits applied to the named dir"
)
parser.add_option(
    "--low-error", metavar = "p", type = float, default = 0.01,
    help = "repeat measurements until (standard error / mean) < (1+p)"
)
parser.add_option(
    "--disable-cache", action = "store_true",
    help = "disable caching"
)

options, args = parser.parse_args()

if len( args ) < 2:
    parser.print_help()
    exit()

deltas = None
if options.genome is not None:
    deltas = options.genome.split()
elif options.genome_file is not None:
    with open( options.genome_file ) as fh:
        deltas = " ".join( fh.readlines() ).split()
elif options.sources is not None:
    print >>sys.stderr, "file-based differences not implemented yet"
    exit( 2 )
if deltas is None:
    print >>sys.stderr, "ERROR: either --genome, --genome-file or --sources is required"
    parser.print_help()
    exit( 1 )

genprog    = args[ 0 ]
configfile = args[ 1 ]

########
# 
########

def get_genes( sequence ):
    return list( map( lambda y: y[ 1 ], sequence ) )

class GenomeBuilder:
    def __init__( self, genprog ):
        self.genprog = genprog

    @contextmanager
    def build( self, genome ):
        if len( genome ) == 0:
            infomsg( "INFO: genome: original" )
        else:
            infomsg( "INFO: genome:", *get_genes( genome ) )
        try:
            with self.genprog.build_variant( get_genes( genome ) ) as exe:
                yield exe
        except CalledProcessError as e:
            infomsg( "ERROR:", e )
            yield None

    def key( self, genome ):
        return " ".join( get_genes( genome ) )

class DDGenome( DD ):
    def __init__( self, genprog, builder, deltas ):
        DD.__init__( self )
        self.builder = builder
        self.genprog = genprog
        if options.disable_cache:
            self.cache_outcomes = 0

        infomsg( "INFO: computing optimized energy usage" )
        self.optimized = self.get_fitness( deltas )
        self.mean = np.mean( self.optimized )
        assert self.mean > 0, "'optimized' variant has 0 fitness!"

    def get_fitness( self, deltas ):
        global cache
        key = self.builder.key( deltas )
        if key in cache:
            return cache[ key ]
        with self.builder.build( deltas ) as exe:
            if exe is None:
                if not options.disable_cache:
                    cache[ key ] = list()
                return list()
            def tester():
                for line in self.genprog.run_test( exe ):
                    fitness = line[ 0 ]
                    infomsg( "   ", fitness )
                    yield fitness
            fitness = list()
            for value in reduce_error( tester, options.low_error, 20 ):
                if value == 0:
                    fitness = [ 0 ]
                    break
                fitness.append( value )
            if not options.disable_cache:
                cache[ key ] = fitness
            return fitness

    def _test( self, deltas ):
        # "Passing" behavior is more like the original (slower, more energy).
        # "Failing" behavior is more optimized (faster, less energy).

        fitness = self.get_fitness( deltas )
        if len( fitness ) == 0:
            return self.UNRESOLVED
        if any( map( lambda f: f == 0, fitness ) ):
            return self.UNRESOLVED
        infomsg( "   ", np.mean( fitness ), "+/-", 1.96 * np.std( fitness ) / np.sqrt( len( fitness ) ) )
        pval = mannwhitneyu( self.optimized, fitness )[ 1 ]
        if pval < options.alpha and np.mean( fitness ) < self.mean:
            return self.PASS
        else:
            return self.FAIL

########
# 
########

def brute_force( dd, deltas ):
    def powerset( deltas ):
        if len( deltas ) == 0:
            yield list()
        else:
            for grp in powerset( deltas[ 1: ] ):
                yield grp
                yield [ deltas[ 0 ] ] + grp
    best = deltas
    for grp in powerset( deltas ):
        if len( grp ) >= len( best ):
            continue
        if dd._test( grp ) == dd.FAIL:
            best = grp
    return best

def get_builder( deltas ):
    if options.sources is None:
        if not options.compound_edits:
            try:
                deltas = lower_genome( deltas )
            except ValueError as e:
                infomsg( "ERROR:", e.message, file = sys.stderr )
                exit( 1 )
        deltas = list( enumerate( deltas ) )
        builder = GenomeBuilder( genprog )
    else:
        print >>sys.stderr, "file-based differences not implemented yet"
        exit( 2 )
    return deltas, builder

@contextmanager
def memcache():
    yield dict()

########
#
########

genprog = GenProgEnv( genprog, configfile )

if options.cache is not None:
    get_cache = lambda: closing( shelve.open( options.cache ) )
else:
    get_cache = memcache

with get_cache() as cache:
    deltas, builder = get_builder( deltas )
    infomsg( "found", len( deltas ), "deltas" )
    dd = DDGenome( genprog, builder, deltas )
    if options.search == "delta":
        try:
            deltas = dd.ddmin( deltas )
        except AssertionError:
            if dd.test([]) == dd.PASS:
                raise
            else:
                deltas = list()
    else:
        deltas = brute_force( dd, deltas )
    infomsg( "simplified genome:\n   ", *get_genes( deltas ) )
    base = 1 / np.mean( dd.get_fitness( [] ) ) - 1
    optim = 1 / np.mean( dd.get_fitness( deltas ) ) - 1
    infomsg( "improvement:", 1 - optim / base )

if options.save_binary is not None or options.save_sources is not None:
    with builder.build( deltas ) as exe:
        if options.save_binary:
            os.rename( exe, options.save_binary )
            infomsg( "saved binary to", options.save_binary )
        if options.save_sources:
            if os.path.exists( exe ):
                os.remove( exe )
            check_call( [ "mv", os.path.dirname( exe ), options.save_sources ] )
            infomsg( "saved sources to", options.save_sources )
if options.save_genome is not None:
    with open( options.save_genome, 'w' ) as fh:
        infomsg( *get_genes( deltas ), file = fh )
    infomsg( "saved genome to", options.save_genome )

