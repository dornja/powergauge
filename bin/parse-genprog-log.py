#!/usr/bin/python2

import csv
from optparse import OptionParser
import re
import sys

parser = OptionParser( usage = "%prog [options] logfile" )
parser.add_option(
    "--csv", metavar = "file", help = "write generations to csv file"
)
parser.add_option(
    "--filter", metavar = "alg", choices = ( "regression", "steps", ),
    help = "only include a subset of variants"
)
parser.add_option(
    "--stop-after", metavar = "N", type = int,
    help = "stop after reading the first N variants"
)
parser.add_option(
    "--sort", action="store_true", dest="sort", help = "sort by amount of improvement in fitness. You likely want to include --filter=steps as well"
)
options, args = parser.parse_args()

if len( args ) < 1:
    parser.print_help()
    exit()

def optmax( a, b ):
    if a is None:
        return b
    if b is None:
        return a
    return max( a, b )

def getEntries( linesrc ):
    variant_pat = re.compile( r"^\t\s*(\d+(\.\d+)?)\s+(.*)" )
    generation_pat = re.compile( r"generation (\d+) " )

    count = 0
    gen = 0
    for line in linesrc:
        m = variant_pat.search( line )
        if m is not None:
            fitness = float( m.group( 1 ) )
            variant = m.group( 3 )
            yield gen, fitness, variant
            count += 1
            if options.stop_after is not None and count >= options.stop_after:
                break
            continue
        m = generation_pat.search( line )
        if m is not None:
            gen = int( m.group( 1 ) )
            continue

def statsFilter( entries ):
    global best
    global numEntries
    global original

    for gen, fitness, variant in entries:
        numEntries += 1
        if variant == "original":
            original = fitness
        best = optmax( best, fitness )
        yield gen, fitness, variant

def regressionFilter( entries ):
    global original

    pending = list()
    for entry in entries:
        pending.append( entry )
        if original is None:
            continue
        while len( pending ) > 0:
            gen, fitness, variant = pending.pop( 0 )
            if fitness < original:
                yield gen, fitness, variant

def stepsFilter( entries ):
    current = None
    for gen, fitness, variant in entries:
        if current is None or current < fitness:
            current = fitness
            yield gen, fitness, variant

original = None
best = None
numEntries = 0

if options.csv is None:
    out = open( "/dev/null", 'w' )
else:
    out = open( options.csv, 'w' )
try:
    writer = csv.writer( out )
    if options.sort:
        writer.writerow( [ "improvement", "evaluation", "fitness", "variant" ] )
    else:
        writer.writerow( [ "generation", "fitness", "variant" ] )
    with open( args[ 0 ] ) as fh:
        source = statsFilter( getEntries( fh ) )
        if options.filter is not None:
            if options.filter == "steps":
                source = stepsFilter( source )
            elif options.filter == "regression":
                source = regressionFilter( source )
        if options.sort:
            rows = list(source)
            prev_best = 0
            source = []
            i = 0
            for row in rows:
                diff = row[1] - prev_best
                if row[1] > prev_best:
                    prev_best = row[1]
                source.append((diff, i, row[1], row[2]))
                i += 1
            source.sort(key=lambda x: x[0])
        for row in source:
            try:
                writer.writerow( map( str, row ) )
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
        print "original fitness:   ", original
    print "best fitness:       ", best
    if original is not None:
        # Convert from fitness to energy
        orig_energy = ( 1 / original ) - 1
        best_energy = ( 1 / best ) - 1
        print "original energy:    ", orig_energy
        print "best energy:        ", best_energy
        print "fitness improvement: %2.4g%%" % ( ( ( best - original ) / original ) * 100 )
        print "energy improvement:  %2.4g%%" % ( ( 1 - ( best_energy / orig_energy ) ) * 100 )
    print "variants considered:", numEntries

