#!/usr/bin/env python

from collections import namedtuple
import csv
import heapq
from math import floor
from optparse import OptionParser
import random
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

Entry = namedtuple( "Entry", "gen evalno fitness variant" )

class Interval:
    def __init__( self, mean, delta ):
        self.mean  = mean
        self.delta = delta

    def __neg__( self ):
        return Interval( - self.mean, self.delta )

    def __float__( self ):
        return self.mean

    def __lt__( self, other ):
        if isinstance( other, Interval ):
            return self.mean + self.delta < other.mean - other.delta
        else:
            return self.mean + self.delta < other

    def __gt__( self, other ):
        if isinstance( other, Interval ):
            return self.mean - self.delta > other.mean + other.delta
        else:
            return self.mean - self.delta > other

    def __eq__( self, other ):
        if not isinstance( other, Interval ):
            raise NotImplemented
        return self.mean == other.mean and self.delta == other.delta

    def __add__( self, other ):
        if isinstance( other, Interval ):
            return Interval( self.mean + other.mean, self.delta + other.delta )
        else:
            return Interval( self.mean + other, self.delta )

    def __sub__( self, other ):
        if isinstance( other, Interval ):
            return Interval( self.mean - other.mean, self.delta + other.delta )
        else:
            return Interval( self.mean - other, self.delta )

    def __rdiv__( self, other ):
        if isinstance( other, Interval ):
            return other.mean / self.mean
        else:
            return other / self.mean

    def __str__( self ):
        return "%s +/- %s" % ( str( self.mean ), str( self.delta ) )

    def __repr__( self ):
        return "Interval(%s,%s)" % ( repr( self.mean ), repr( self.delta ) )

    def __hash__( self ):
        return hash( ( self.mean, self.delta ) )

class ParetoSpace1D:
    def __init__( self ):
        self.best  = list()
        self.bykey = dict()
        self.count = 0

    @staticmethod
    def dominates( a, b ):
        return a > b

    def add( self, key, value ):
        if key in self.bykey:
            self.bykey[ key ][ -1 ] = None
        self.count += 1
        heap_entry = [ - value[ 0 ], self.count, key, value ]
        self.bykey[ key ] = heap_entry
        heapq.heappush( self.best, heap_entry )

    def remove( self, key ):
        self.bykey[ key ][ -1 ] = None

    def getFrontier( self ):
        while len( self.best ) > 0 and self.best[ 0 ][ -1 ] is None:
            heapq.heappop( self.best )
        if len( self.best ) > 0:
            return [ self.best[ 0 ][ -2: ] ]
        return None

class ParetoSpaceND:
    Point = namedtuple( "Point", "key coords parent children" )

    def __init__( self ):
        self.root = ParetoSpaceND.Point( None, None, [ None ], list() )
        self.points = dict()

    @staticmethod
    def dominates( a, b ):
        better = False
        for x, y in zip( a, b ):
            if x < y:
                return False
            elif not better and x > y:
                better = True
        return better

    def _insert( self, worklist ):
        while len( worklist ) > 0:
            parent, _, p = worklist.pop()
            is_dominant = False
            collected = list()
            for i, q in enumerate( parent.children ):
                if not is_dominant and self.dominates( q.coords, p.coords ):
                    random.shuffle( parent.children )
                    worklist.append( ( q, 0, p ) )
                    break
                elif self.dominates( p.coords, q.coords ):
                    collected.append( i )
                    q.parent[ 0 ] = p
                    p.children.append( q )
                    is_dominant = True
            else:
                for i in reversed( collected ):
                    del parent.children[ i ]
                p.parent[ 0 ] = parent
                parent.children.append( p )
                random.shuffle( parent.children )

    def add( self, key, coords ):
        p = ParetoSpaceND.Point( key, coords, [ None ], list() )
        self.points[ key ] = p
        self._insert( [ ( self.root, 0, p ) ] )

    def remove( self, key ):
        p = self.points[ key ]
        del self.points[ key ]
        parent = p.parent[ 0 ]
        i = [ i for i, q in enumerate( parent.children ) if p.key == q.key ][ 0 ]
        del parent.children[ i ]

        self._insert( [ ( parent, i, q ) for q in p.children ] )

    def getFrontier( self ):
        return [ ( p.key, p.coords ) for p in self.root.children ]

class ParetoSpace:
    def __init__( self ):
        self.delegate = None

    def dominates( self, a, b ):
        if self.delegate is not None:
            return self.delegate.dominates( a, b )

    def add( self, key, value ):
        if self.delegate is None:
            if len( value ) == 1:
                self.delegate = ParetoSpace1D()
            else:
                self.delegate = ParetoSpaceND()
        self.delegate.add( key, value )

    def remove( self, key ):
        if self.delegate is not None:
            self.delegate.remove( key )

    def getFrontier( self ):
        if self.delegate is not None:
            return self.delegate.getFrontier()
        return list()

class parser:
    def __init__( self, stream ):
        self.CONFIG  = 0x1
        self.DEBUG   = 0x2
        self.FITNESS = 0x4

        self.stream = self._getLine( stream )
        self.fitness = list()
        self.config = list()
        self.debug = list()

        next( self.stream )

    def _getLine( self, stream ):
        go_until = self.CONFIG | self.DEBUG | self.FITNESS

        # A pattern for floating point numbers. This appears a couple times in
        # the variant pattern, so I made a separate string to interpolate in
        # instead of copying it verbatim and making a single extra-long pattern.
        # Note that the pattern here does not capture any groups: the (?:) glyph
        # indicates a non-capturing group in python.

        f = r"-?(?:(?:\d+(?:\.\d+)?(?:[eE][+-]?\d+)?)|inf)"
        variant_pat = re.compile(
            r"^\t\s*((?:{0}\s+(?:\+/-\s+{0}\s+)?)+)(.*)".format( f )
        )
        generation_pat = re.compile( r"generation (\d+) " )

        gen = 0
        count = 0
        for line in stream:
            m = variant_pat.search( line )
            if m is not None:
                if options.stop_after is not None and options.stop_after <= count:
                    continue
                count += 1
                variant = m.group( 2 )
                fitnesses, intervals = list(), list()
                prev = None
                for term in m.group( 1 ).split():
                    if len( fitnesses ) == len( intervals ):
                        fitnesses.append( float( term ) )
                    elif prev == "+/-":
                        intervals.append( float( term ) )
                    elif term != "+/-":
                        intervals.append( 0 )
                        fitnesses.append( float( term ) )
                    prev = term
                if len( intervals ) < len( fitnesses ):
                    intervals.append( 0 )
                fitness = tuple( [
                    Interval( m, d ) for m, d in zip( fitnesses, intervals )
                ] )
                self.fitness.append( Entry( gen, count, fitness, variant ) )
                if go_until & self.FITNESS != 0:
                    go_until = yield
                continue
            m = generation_pat.search( line )
            if m is not None:
                gen = int( m.group( 1 ) )
                continue
            if line.startswith( "--" ):
                self.config.append( line.split( None, 1 ) )
                if go_until & self.CONFIG != 0:
                    go_until = yield
                continue
            self.debug.append( line )
            if go_until & self.DEBUG != 0:
                go_until = yield

    def _consumer( self, queue, key ):
        flipped = list()
        while True:
            while len( flipped ) > 0:
                yield flipped.pop()
            flipped = list( reversed( queue ) )
            del queue[ : ]
            if len( flipped ) == 0:
                try:
                    self.stream.send( key )
                except StopIteration:
                    break

    def getConfig( self ):
        for entry in self._consumer( self.config, self.CONFIG ):
            yield entry

    def getDebug( self ):
        for entry in self._consumer( self.debug, self.DEBUG ):
            yield entry

    def getEntries( self ):
        count = 0
        for entry in self._consumer( self.fitness, self.FITNESS ):
            yield entry
            count += 1

# Since the search may have been multi-objective, we keep track of the best
# variants in a Pareto space.

best       = ParetoSpace()
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
        if all( [ x.mean == 0 for x in entry.fitness ] ):
            zeros += 1

        if unique.get( entry.variant, entry ).fitness != entry.fitness:
            best.remove( entry.variant )
            del unique[ entry.variant ]
        if entry.variant not in unique:
            best.add( entry.variant, entry.fitness )
            unique[ entry.variant ] = entry

        yield entry

def getBest():
    return [ coords for _, coords in best.getFrontier() ]

def bestFilter( entries ):
    for entry in entries:
        pass
    results = [ unique[ key ] for key, _ in best.getFrontier() ]
    for entry in sorted( results, key = lambda e: ( e.gen, e.evalno ) ):
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
    prev = None
    for entry in entries:
        if prev is None:
            diff = list( entry.fitness )
            prev = entry.fitness
        else:
            diff = [ e - p for e, p in zip( entry.fitness, prev ) ]
            if any( [ float( d ) > 0 for d in diff ] ):
                prev = entry.fitness
        yield Entry(
            entry.gen,
            entry.evalno,
            diff + list( entry.fitness ),
            entry.variant
        )

def show_fitness( fitness, original ):
    terms = list()
    for f_term, o_term in zip( fitness, original ):
        f_term = f_term.mean if isinstance( f_term, Interval ) else f_term
        o_term = o_term.mean if isinstance( o_term, Interval ) else o_term
        terms.append( "%g" % f_term )
        if o_term > 0:
            terms.append( "(%+ 6.2f%%)" % ( 100 * ( 1 - f_term / o_term ) ) )
    return "\t".join( terms )

with open( "/dev/null" if options.csv is None else options.csv, 'w' ) as out:
    writer = csv.writer( out )

    # cannot write header until we know how many fitness values there are...
    need_header = True
    with open( args[ 0 ] ) as fh:
        p = parser( fh )
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
                    if options.sort is not None:
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
    for fitness in sorted( getBest() ):
        best_values = [ 1 / x - 1 for x in fitness ]
        print "    best values:      ", show_fitness( best_values, orig_values )
    print "variants considered:  ", numEntries
    print "unique variants:      ", len( unique )
    print "zero-fitness variants:", zeros
    print "GenProg version:      ", genprog_ver
    print "Search duration:      ", duration
