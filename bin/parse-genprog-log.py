#!/usr/bin/python2

import csv
from optparse import OptionParser
import re

parser = OptionParser( usage = "%prog [options] logfile" )
parser.add_option(
    "--csv", metavar = "file", help = "write generations to csv file"
)
parser.add_option(
    "--filter", metavar = "alg", choices = ( "steps", ),
    help = "only include a subset of variants"
)
options, args = parser.parse_args()

if len( args ) < 1:
    parser.print_help()
    exit()

def mymax( a, b ):
    if a is None:
        return b
    if b is None:
        return a
    return max( a, b )

variant_pat = re.compile( r"^\t\s*(\d+(\.\d+)?)\s+(.*)" )
generation_pat = re.compile( r"generation (\d+) " )

original = None
best = None

gen = 0
table = list()
with open( args[ 0 ] ) as fh:
    for line in fh:
        m = variant_pat.search( line )
        if m is not None:
            fitness = float( m.group( 1 ) )
            variant = m.group( 3 )
            table.append( ( gen, fitness, variant ) )
            if variant == "original":
                original = fitness
            best = mymax( best, fitness )
            continue
        m = generation_pat.search( line )
        if m is not None:
            gen = int( m.group( 1 ) )
            continue

if options.csv is None:
    if original is not None:
        print "original:", original
    print "best:    ", best
    if original is not None:
        print "improvement: %2.4g%%" % ( ( 1 - ( original / best ) ) * 100 )
    print "variants considered:", len( table )
else:
    if options.filter is not None:
        if options.filter == "steps":
            new_table = list()
            current = None
            for gen, fitness, variant in table:
                if current is None or current < fitness:
                    new_table.append( ( gen, fitness, variant ) )
                    current = fitness
            table = new_table
    with open( options.csv, 'w' ) as fh:
        writer = csv.writer( fh )
        writer.writerow( [ "generation", "fitness", "variant" ] )
        for gen, fitness, variant in table:
            writer.writerow( map( str, [ gen, fitness, variant ] ) )

