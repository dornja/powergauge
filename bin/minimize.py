#!/usr/bin/python2

from contextlib import contextmanager
from difflib import SequenceMatcher
import numpy
from optparse import OptionParser
import os
from scipy.stats import mannwhitneyu
import shutil
from subprocess import call
import sys
import tempfile

root = os.path.dirname( os.path.dirname( os.path.abspath( sys.argv[ 0 ] ) ) )
sys.path.append( os.path.join( root, "lib" ) )
from DD import DD
from testutil import reduce_error
from util import infomsg, mktemp

# Casing minimization of energy as a delta-debugging problem. The original
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

config = { "--seed": "0" }
with open( configfile ) as fh:
    for line in fh:
        terms = line.strip().split( None, 1 )
        if len( terms ) == 1:
            config[ terms[ 0 ] ] = None
        else:
            config[ terms[ 0 ] ] = terms[ 1 ]
if not "--test-command" in config:
    print >>sys.stderr, "did not find --test-command in config file"
    exit( 1 )

########
# 
########

@contextmanager
def build_variant( genome ):
    if len( genome ) == 0:
        genome = [ "original" ]

    genprog_cmd = [ genprog ]
    for flag, arg in config.iteritems():
        if arg is None:
            genprog_cmd.append( flag )
        else:
            genprog_cmd.extend( [ flag, arg ] )
    genprog_cmd.extend( [
        "--keep-source",
        "--search", "oracle",
        "--oracle-genome", " ".join( genome ),
        "--no-test-cache"
    ] )

    keepfiles = [ "000000", "repair.debug." + config[ "--seed" ] ]

    tmpdir = tempfile.mkdtemp( dir = "." )
    try:
        for fname in keepfiles:
            if os.path.exists( fname ):
                os.rename( fname, os.path.join( tmpdir, fname ) )
        with open( "/dev/null", 'w' ) as fh:
            call( genprog_cmd, stdout = fh, stderr = fh )

        if os.path.exists( "000000/000000" ):
            yield "000000/000000"
    finally:
        for fname in keepfiles:
            if os.path.exists( fname ):
                call( [ "rm", "-rf", fname ] )
            if os.path.exists( os.path.join( tmpdir, fname ) ):
                os.rename( os.path.join( tmpdir, fname ), fname )
        call( [ "rm", "-rf", tmpdir ] )

def run_test( exe ):
    cmd = config[ "--test-command" ]
    cmd = cmd.replace( "__EXE_NAME__", exe )
    def runner():
        with mktemp() as fitnessfile:
            tmp = cmd.replace( "__FITNESS_FILE__", fitnessfile )
            call( [ "sh", "-c", tmp ] )
            with open( fitnessfile ) as fh:
                line = fh.next().strip()
                infomsg( "   ", line )
                return float( line )
    return runner

class DDGenome( DD ):
    def __init__( self, genome ):
        DD.__init__( self )

        infomsg( "INFO: computing optimized energy usage" )
        with build_variant( genome ) as exe:
            self.optimized = reduce_error( run_test( exe ), options.low_error, 20 )
        self.mean = numpy.mean( self.optimized )

    def _test( self, deltas ):
        # "Passing" behavior is more like the original (slower, more energy).
        # "Failing" behavior is more optimized (faster, less energy).

        infomsg( "INFO: evaluating genome:", *deltas )
        with build_variant( deltas ) as exe:
            fitness = reduce_error( run_test( exe ), options.low_error, 20 )
            pval = mannwhitneyu( self.optimized, fitness )[ 1 ]
            if pval < options.alpha and numpy.mean( fitness ) < self.mean:
                return self.PASS
            else:
                return self.FAIL

if options.genome is not None:
    genome = options.genome.split()
    dd = DDGenome( genome )
else:
    print >>sys.stderr, "file-based differences not implemented yet"
    exit( 2 )

genome = dd.ddmin( genome )
infomsg( "simplified genome:\n   ", *genome )

