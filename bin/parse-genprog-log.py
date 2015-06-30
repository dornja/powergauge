#!/usr/bin/python2

import csv
from optparse import OptionParser
import re

parser = OptionParser( usage = "%prog [options] logfile" )
parser.add_option(
    "--csv", metavar = "file", help = "write generations to csv file"
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

variant_pat = re.compile( r"^\t(\d+(\.\d+)?) \t(.*)" )
generation_pat = re.compile( r"generation (\d+) begins" )

original = None
best = None

gen = 0
generation = list()
with open( args[ 0 ] ) as fh:
    for line in fh:
        m = variant_pat.search( line )
        if m is not None:
            fitness = float( m.group( 1 ) )
            variant = m.group( 3 )
            generation[ -1 ].append( ( fitness, variant ) )
            if variant == "original":
                original = fitness
            best = mymax( best, fitness )
            continue
        m = generation_pat.search( line )
        if m is not None:
            gen = int( m.group( 1 ) )
            while len( generation ) < gen:
                generation.append( list() )
            continue

if options.csv is None:
    if original is not None:
        print "original:", original
    print "best:    ", best
else:
    with open( options.csv, 'w' ) as fh:
        writer = csv.writer( fh )
        writer.writerow( [ "generation", "fitness", "variant" ] )
        for i, gen in enumerate( generation ):
            for fitness, variant in gen:
                writer.writerow( map( str, [ i, fitness, variant ] ) )

