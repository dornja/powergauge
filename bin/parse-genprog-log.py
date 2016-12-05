#!/usr/bin/env python

import csv
from math import floor
import numpy as np
from optparse import OptionParser
import os
import re
import sys

root = os.path.dirname( os.path.dirname( os.path.abspath( sys.argv[ 0 ] ) ) )
sys.path.append( os.path.join( root, "lib" ) )
from genprogutil import LogParser, Entry, Interval
from pareto import ParetoSpace

parser = OptionParser( usage = "%prog [options] logfile" )
parser.add_option(
    "--csv", metavar = "file", help = "write generations to csv file"
)
parser.add_option(
    "--filter", metavar = "alg", default = "none",
    choices = ( "best", "none", "regression", "steps", ),
    help = "only include a subset of variants"
)
parser.add_option(
    "--final", action = "store_true",
    help = "always report the last fitness evaluation for each variant"
)
parser.add_option(
    "--improvement", action = "store_true",
    help = "compute the fitness improvement; implies --final."
)
parser.add_option(
    "--stop-after", metavar = "N", type = int,
    help = "stop after reading the first N variants"
)
parser.add_option(
    "--sort", metavar = "N", type = int,
    help = "sort by amount of improvement in fitness column N"
)
parser.add_option(
    "--no-confidence", action = "store_true",
    help = "ignore confidence intervals when computing pareto frontiers"
)
parser.add_option(
    "--no-variant-names", action="store_true", dest="no_variant_names",
    help="do not output variant names. Greatly reduces file size and R plot " \
        + "times"
)
options, args = parser.parse_args()

if len( args ) < 1:
    parser.print_help()
    exit()

if options.filter == "best":
    options.final = True
if options.improvement:
    options.final = True

# Since the search may have been multi-objective, we keep track of the best
# variants in a Pareto space.

if options.no_confidence:
    best = ParetoSpace( lambda a, b: float( a ) < float( b ) )
else:
    best = ParetoSpace( lambda a, b: a < b )
numEntries = 0
zeros      = 0
original   = None
unique     = dict()
def statsFilter( entries ):
    global numEntries
    global original
    global zeros

    for entry in entries:
        numEntries += 1
        if entry.variant == "original":
            original = entry
        means = [ x.mean for x in entry.fitness ]

        pessimal = np.all( means == 0 ) or np.any( np.isinf( means ) )
        invalid  = np.any( np.isnan( means ) )
        if pessimal or invalid:
            zeros += 1

        if unique.get( entry.variant, entry ).fitness != entry.fitness:
            best.remove( entry.variant )
            del unique[ entry.variant ]
        if entry.variant not in unique and not invalid:
            best.add( entry.variant, entry.fitness )
            unique[ entry.variant ] = entry

        yield entry

def getBest():
    return [ coords for _, coords in best.getFrontier() ]

def bestFilter( entries ):
    for entry in entries:
        pass
    nbest = dict()
    all_removed = list()
    while True:
        results = [ unique[ key ] for key, _ in best.getFrontier() ]
        done = False
        for e1 in nbest.values():
            for e2 in results:
                if best.dominates( e1.fitness, e2.fitness ):
                    done = True
                    break
            if done:
                break
        if done:
            break
        for e in results:
            best.remove( e.variant )
            all_removed.append( e )
            if e.fitness in nbest:
                l1 = len( nbest[ e.fitness ].variant.split() )
                l2 = len( e.variant.split() )
                if l1 <= l2:
                    continue
            nbest[ e.fitness ] = e

    for entry in all_removed:
        best.add( entry.variant, entry.fitness )
    for entry in sorted( nbest.values(), key = lambda e: ( e.gen, e.evalno ) ):
        yield entry

def regressionFilter( entries ):
    pending = list()
    for entry in entries:
        pending.append( entry )
        if original is None:
            continue
        while len( pending ) > 0:
            entry = pending.pop( 0 )
            if best.dominates( original.fitness, entry.fitness ) \
                    or entry.variant == "original":
                yield entry

def stepsFilter( entries ):
    prev = None
    for entry in entries:
        curr = sorted( best.getFrontier() )
        if prev != curr:
            yield entry
            prev = curr

def retroFitnessFilter( entries ):
    order = list()
    for entry in entries:
        order.append( entry.variant )
    for variant in order:
        yield unique[ variant ]

def sortFilter( entries ):
    cache = list()
    for entry in entries:
        cache.append( entry )
    for entry in sorted( cache, key = lambda e: float( e.fitness[ options.sort ] ) ):
        yield entry

def improvementFilter( entries ):
    # force "original" to be the first entry, so other improvements make sense
    pending = list()
    prev = None
    for entry in entries:
        pending.append( entry )
        if prev is None:
            if entry.variant != "original":
                continue
            pending.pop()
            pending.insert( 0, entry )
            diff = list( entry.fitness )
            prev = entry.fitness
        for entry in pending:
            diff = [ e - p for e, p in zip( entry.fitness, prev ) ]
            if any( [ float( d ) > 0 for d in diff ] ):
                prev = entry.fitness
            yield Entry(
                entry.gen,
                entry.evalno,
                diff + list( entry.fitness ),
                entry.variant
            )
        del pending[:]

def show_fitness( fitness, original ):
    terms = list()
    for f_term, o_term in zip( fitness, original ):
        f_term = float( f_term )
        o_term = float( o_term )
        terms.append( "%g" % f_term )
        if o_term > 0:
            terms.append( "(%+ 6.2f%%)" % ( 100 * ( 1 - f_term / o_term ) ) )
    return "\t".join( terms )

with open( "/dev/null" if options.csv is None else options.csv, 'w' ) as out:
    writer = csv.writer( out )

    # cannot write header until we know how many fitness values there are...
    need_header = True
    with open( args[ 0 ] ) as fh:
        p = LogParser( fh, options.stop_after )
        source = statsFilter( p.getEntries() )
        if options.filter == "best":
            source = bestFilter( source )
        if options.filter == "steps":
            source = stepsFilter( source )
        if options.final:
            source = retroFitnessFilter( source )
        if options.filter == "regression":
            source = regressionFilter( source )
        if options.sort is not None:
            source = sortFilter( source )
        if options.improvement:
            source = improvementFilter( source )
            if options.sort is not None:
                source = sortFilter( source )
        for entry in source:
            try:
                if need_header:
                    n = len( entry.fitness )
                    header = [ "generation", "eval number" ]
                    if options.improvement is not None:
                        n >>= 1
                        header += [ "improvement %d" % i for i in range( n ) ]
                    header += [ "fitness %d" % i for i in range( n ) ]
                    if not options.no_variant_names:
                        header.append( "variant" )
                    writer.writerow( header )
                    need_header = False

                row = [ entry.gen, entry.evalno ]
                for f in entry.fitness:
                    row.append( float( f ) )
                if not options.no_variant_names:
                    row.append( entry.variant )
                writer.writerow( map( str, row ) )
            except IOError as e:
                # if this is piped to head, python will complain when the pipe
                # is closed
                if e.strerror == "Broken pipe":
                    break
                raise e

if options.csv is None:
    genprog_ver = None
    duration = None
    for line in p.getDebug():
        if line.startswith( "GenProg Version" ):
            genprog_ver = line.split( None, 2 )[ 2 ]
        if line.startswith( "Wall-Clock Seconds Elapsed" ):
            duration = list()
            secs = float( line.split()[ -1 ] )
            days = int( floor( secs / 86400 ) )
            if days > 0:
                duration.append( "%dd" % days )
                secs -= days * 86400
            hours = int( floor( secs / 3600 ) )
            if days > 0 or hours > 0:
                duration.append( "%dh" % hours )
                secs -= hours * 3600
            mins = int( floor( secs / 60 ) )
            if days > 0 or hours > 0 or mins > 0:
                duration.append( "%dm" % mins )
                secs = secs - mins * 60
            duration.append( "%gs" % secs )
            duration = " ".join( duration )

    if original is not None:
        orig_values = [ 1 / x - 1 for x in original.fitness ]
        print "original values:      ", show_fitness( orig_values, orig_values )
    print "Pareto frontier:"
    for e in sorted( bestFilter( [] ), key = lambda e: float( e.fitness[ 0 ] ) ):
        best_values = [ 1 / x - 1 for x in e.fitness ]
        print "    best values:      ", show_fitness( best_values, orig_values )
    print "variants considered:  ", numEntries
    print "unique variants:      ", len( unique )
    print "zero-fitness variants:", zeros
    print "GenProg version:      ", genprog_ver
    print "Search duration:      ", duration
