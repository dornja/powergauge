#!/usr/bin/python

from contextlib import contextmanager
from optparse import OptionParser
import os
from subprocess import CalledProcessError
import sys

root = os.path.dirname( os.path.dirname( os.path.abspath( sys.argv[ 0 ] ) ) )
sys.path.append( os.path.join( root, "lib" ) )
from DD import DD
from genprogutil import GenProgEnv, lower_genome
from util import infomsg

parser = OptionParser( usage = "%prog [options] genprog configuration" )
parser.add_option(
    "--genome", metavar = "genome",
    help = "find maximum set of passing edits in genome"
)
parser.add_option(
    "--genome-file", metavar = "file",
    help = "find maximum set of passing edits in the named file"
)
parser.add_option(
    "--compound-edits", action = "store_true",
    help = "do not convert swaps and replaces into appends and deletes"
)
parser.add_option(
    "--save-genome", metavar = "file",
    help = "save the passing edits to the named file"
)
parser.add_option(
    "--disable-cache", action = "store_true",
    help = "disable caching"
)

options, args = parser.parse_args()

if len( args ) < 2:
    parser.print_help()
    exit()

if options.genome is not None:
    deltas = options.genome.split()
elif options.genome_file is not None:
    with open( options.genome_file ) as fh:
        deltas = " ".join( fh.readlines() ).split()
else:
    infomsg(
        "ERROR: either --genome or --genome-file is required", file = sys.stderr
    )
    parser.print_help()
    exit( 1 )
if not options.compound_edits:
    try:
        deltas = lower_genome( deltas )
    except ValueError as e:
        infomsg( "ERROR:", e.message, file = sys.stderr )
        exit( 1 )
deltas = list( enumerate( deltas ) )

genprog    = args[ 0 ]
configfile = args[ 1 ]

@contextmanager
def swallow( exn, f, *args, **kw ):
    mgr = f( *args, **kw )
    try:
        obj = mgr.__enter__()
    except exn:
        yield None
    else:
        yield obj

class DDGenome( DD ):

    def __init__( self, genprog, num_edits):
        DD.__init__( self )
        self.genprog = genprog
        self.assume_axioms_hold = False
        self.num_edits = num_edits
        if options.disable_cache:
            self.cache_outcomes = 0

    def _dd( self, c, n ):
        assert self.test(c) == self.FAIL
        return DD._dd( self, c, n )

    def _test( self, deltas ):
        global cache
        genome = map( lambda (_, y): y, deltas )

        key = " ".join( genome )
        if key in cache:
            return cache[ key ]

        if len( genome ) == 0:
            infomsg( "INFO: genome: original" )
        else:
            infomsg( "INFO: genome:", *genome )
        build = self.genprog.build_variant
        with swallow( CalledProcessError, build, genome ) as exe:
            if exe is None:
                fitness = "compile error"
                if len( deltas ) == self.num_edits:
                    result = self.FAIL
                else:
                    result = self.UNRESOLVED
            else:
                try:
                    fitness = self.genprog.run_test( exe )[ 0 ]
                    result = self.FAIL if fitness == 0.0 else self.PASS
                except CalledProcessError:
                    fitness = "test failure"
                    result = self.FAIL
            infomsg( "   ", fitness, "=", result )
        if not options.disable_cache:
            cache[ key ] = result
        return result


cache = dict()
infomsg( "found", len( deltas ), "deltas" )
dd = DDGenome( GenProgEnv( genprog, configfile), len( deltas ))
try:
    to_remove = dd.ddmax( deltas )
except AssertionError:
    if dd.test( deltas ) == dd.FAIL:
        raise
    else:
        to_remove = list()
maximized = sorted( set( deltas ).difference( to_remove ) )
assert dd.test( maximized ) == dd.PASS

maximized = map( lambda (_,y): y, maximized )
infomsg( "simplified genome (%d of %d edits):\n   " % ( len( maximized ), len( deltas ) ), *maximized )

if options.save_genome is not None:
    with open( options.save_genome, 'w' ) as fh:
        infomsg( *maximized, file = fh )

