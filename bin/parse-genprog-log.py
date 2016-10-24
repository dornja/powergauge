#!/usr/bin/env python

from collections import namedtuple
import csv
import heapq
from optparse import OptionParser
import re
import sys

parser = OptionParser( usage = "%prog [options] logfile" )
parser.add_option(
    "--csv", metavar = "file", help = "write generations to csv file"
)
parser.add_option(
    "--filter", metavar = "alg", choices = ( "best", "regression", "steps", ),
    help = "only include a subset of variants"
)
parser.add_option(
    "--final", action = "store_true",
    help = "always report the last fitness evaluation for each variant"
)
parser.add_option(
    "--stop-after", metavar = "N", type = int,
    help = "stop after reading the first N variants"
)
parser.add_option(
    "--sort", action="store_true", dest="sort",
    help = "sort by amount of improvement in fitness. Implies --filter=steps " \
        + " and --final."
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
if options.sort:
    options.filter = "steps"
    options.final = True

Entry = namedtuple( "Entry", "gen fitness interval variant" )
DiffEntry = namedtuple( "DiffEntry", "delta evalno fitness interval variant" )

def getEntries( linesrc ):
    # A pattern for floating point numbers. This appears a couple times in the
    # variant pattern, so I made a separate string to interpolate in instead of
    # copying it verbatim and making a single extra-long pattern. Note that the
    # pattern here does not capture any groups: the (?:) glyph indicates a
    # non-capturing group in python.

    f = r"-?(?:(?:\d+(?:\.\d+)?(?:[eE]-?\d+)?)|inf)"
    variant_pat = re.compile(
        r"^\t\s*({0})\s+(?:\+/-\s+({0})\s+)?(.*)".format( f )
    )
    generation_pat = re.compile( r"generation (\d+) " )

    count = 0
    gen = 0
    for line in linesrc:
        m = variant_pat.search( line )
        if m is not None:
            fitness = float( m.group( 1 ) )
            interval = 0.0 if m.group( 2 ) is None else float( m.group( 2 ) )
            variant = m.group( 3 )
            yield Entry( gen, fitness, interval, variant )
            count += 1
            if options.stop_after is not None and count >= options.stop_after:
                break
            continue
        m = generation_pat.search( line )
        if m is not None:
            gen = int( m.group( 1 ) )
            continue

numEntries = 0
original   = None
best       = list()
unique     = dict()
def statsFilter( entries ):
    global numEntries
    global original

    for entry in entries:
        numEntries += 1
        if entry.variant == "original":
            original = entry

        # Heap key uses negative fitness because heapq provides a minheap. Thus
        # the most negative key will be first, which corresponds to the largest
        # fitness value

        heap_key = [ - entry.fitness - entry.interval, numEntries, entry ]
        if entry.variant in unique:
            # "remove" the previous entry from the heap
            unique[ entry.variant ][ -1 ] = None
        heapq.heappush( best, heap_key )
        unique[ entry.variant ] = heap_key

        yield entry

def getBest():
    while len( best ) > 0 and best[ 0 ][ -1 ] is None:
        heapq.heappop( best )
    if len( best ) > 0:
        return best[ 0 ][ -1 ]
    return None

def bestFilter( entries ):
    for entry in entries:
        pass
    nbest = list()
    top = getBest()
    current = top
    while current is not None and \
            ( current.fitness + current.interval >= top.fitness - top.interval ):
        nbest.append( current )
        heapq.heappop( best )
        current = getBest()
    nbest.sort( key = lambda e: ( len( e.variant.split() ), -e.fitness ) )
    for entry in nbest:
        yield entry

def regressionFilter( entries ):
    pending = list()
    for entry in entries:
        pending.append( entry )
        if original.fitness is None:
            continue
        while len( pending ) > 0:
            entry = pending.pop( 0 )
            if entry.fitness < original.fitness or entry.variant == "original":
                yield entry

def stepsFilter( entries ):
    prev = None
    for entry in entries:
        curr = getBest()
        if prev is not curr:
            yield curr
            prev = curr

def retroFitnessFilter( entries ):
    order = list()
    for entry in entries:
        order.append( entry.variant )
    for variant in order:
        yield unique[ variant ][ -1 ]

def sortFilter( entries ):
    cache = list()
    prev = 0
    for i, entry in enumerate( entries ):
        diff = entry.fitness - prev
        if diff > 0:
            prev = entry.fitness
        cache.append( ( diff, i, entry ) )
    for diff, i, entry in sorted( cache ):
        yield DiffEntry( diff, i, entry.fitness, entry.interval, entry.variant )

if options.csv is None:
    out = open( "/dev/null", 'w' )
else:
    out = open( options.csv, 'w' )
try:
    writer = csv.writer( out )
    if options.sort:
        header = [ "improvement", "eval number", "fitness", "interval" ]
    else:
        header = [ "generation", "fitness", "interval" ]
    if not options.no_variant_names:
        header.append( "variant" )
    writer.writerow( header )

    with open( args[ 0 ] ) as fh:
        source = statsFilter( getEntries( fh ) )
        if options.filter == "best":
            source = bestFilter( source )
        if options.filter == "steps":
            source = stepsFilter( source )
        if options.final:
            source = retroFitnessFilter( source )
        if options.filter == "regression":
            source = regressionFilter( source )
        if options.sort:
            source = sortFilter( source )
        for entry in source:
            try:
                if options.no_variant_names:
                    writer.writerow( map( str, entry[ :-1 ] ) )
                else:
                    writer.writerow( map( str, entry ) )
            except IOError as e:
                # if this is piped to head, python will complain when the pipe
                # is closed
                if e.strerror == "Broken pipe":
                    break
                raise e
finally:
    out.close()

if options.csv is None:
    if original is not None:
        print "original fitness:   ", original.fitness
    print "best fitness:       ", getBest().fitness
    if original is not None:
        # Convert from fitness to energy
        orig_energy = ( 1 / original.fitness ) - 1
        best_energy = ( 1 / getBest().fitness ) - 1
        print "original energy:    ", orig_energy
        print "best energy:        ", best_energy
        print "fitness improvement: %2.4g%%" % ( ( ( getBest().fitness - original.fitness ) / original.fitness ) * 100 )
        print "energy improvement:  %2.4g%%" % ( ( 1 - ( best_energy / orig_energy ) ) * 100 )
    print "variants considered:", numEntries
    print "unique variants:    ", len( unique )

