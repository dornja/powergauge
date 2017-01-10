from __future__ import print_function

from collections import namedtuple, MutableMapping
from contextlib import contextmanager
import os
import re
from subprocess import call, check_call, CalledProcessError
import sys
import tempfile

from util import infomsg, mktemp

class LazyConfig( MutableMapping ):
    def __init__( self, entrysource ):
        self.entrysource = entrysource
        self.data = dict()
        self.history = set()

    @classmethod
    def load( cls, fname ):
        def readfile( fname ):
            with open( fname ) as fh:
                for line in fh:
                    terms = line.strip().split( None, 1 )
                    if len( terms ) == 1:
                        yield terms[ 0 ], None
                    else:
                        yield terms[ 0 ], terms[ 1 ]
        return cls( readfile( fname ) )

    def _consumeItems( self ):
        for k, v in self.entrysource:
            if k in self.history:
                continue
            self[ k ] = v
            yield k, v

    def __getitem__( self, key ):
        if not key in self.history:
            for k, v in self._consumeItems():
                if k == key:
                    break
        return self.data[ key ]

    def __setitem__( self, key, value ):
        self.history.add( key )
        self.data[ key ] = value

    def __delitem__( self, key ):
        if not key in self.history:
            _ = self[ key ]
        del self.data[ key ]

    def __len__( self ):
        for k, v in self._consumeItems():
            pass
        return len( self.data )

    def __iter__( self ):
        for k in iter( self.data ):
            yield k
        for k, _ in self._consumeItems():
            yield k

class Config( dict ):
    def load( self, fname ):
        self.update( LazyConfig.load( fname ) )

class GenProgEnv:
    def __init__( self, genprog, configfile ):
        self.genprog    = genprog
        self.configfile = configfile
        self.config     = Config()

        self.config.load( configfile )

    @contextmanager
    def build_variant( self, genome ):
        if len( genome ) == 0:
            genome = [ "original" ]

        seed = self.config.get( "--config", "0" )

        with mktemp() as genome_file:
            with open( genome_file, 'w' ) as fh:
                print( "--oracle-genome", " ".join( genome ), file = fh )
            cmd = [
                self.genprog, self.configfile, genome_file,
                    "--seed", seed,
                    "--keep-source",
                    "--no-test-cache",
                    "--search", "oracle",
                    "--test-command", "true",
            ]

            keepfiles = [ "000000", "repair.debug." + seed ]

            tmpdir = tempfile.mkdtemp( dir = "." )
            try:
                for fname in keepfiles:
                    if os.path.exists( fname ):
                        os.rename( fname, os.path.join( tmpdir, fname ) )
                with mktemp() as log:
                    try:
                        with open( log, 'w' ) as fh:
                            check_call( cmd, stdout = fh, stderr = fh )
                    except CalledProcessError:
                        with open( log ) as fh:
                            infomsg( fh.read(), file = sys.stderr )
                        raise
                if os.path.exists( genome_file ):
                    os.remove( genome_file )

                if os.path.exists( "000000/000000" ):
                    yield "000000/000000"
                else:
                    yield None
            finally:
                for fname in keepfiles:
                    if os.path.exists( fname ):
                        check_call( [ "rm", "-rf", fname ] )
                    if os.path.exists( os.path.join( tmpdir, fname ) ):
                        os.rename( os.path.join( tmpdir, fname ), fname )
                check_call( [ "rm", "-rf", tmpdir ] )

    def run_test( self, exe ):
        cmd = self.config[ "--test-command" ]
        cmd = cmd.replace( "__EXE_NAME__", exe )
        with mktemp() as fitnessfile:
            tmp = cmd.replace( "__FITNESS_FILE__", fitnessfile )
            call( [ "sh", "-c", tmp ] )
            with open( fitnessfile ) as fh:
                yielded = False
                for line in fh:
                    yield map( float, line.split() )
                    yielded = True
                if not yielded:
                    yield [ 0.0 ]

Entry = namedtuple( "Entry", "gen evalno fitness variant" )

class Interval:
    def __init__( self, mean, delta ):
        self.mean  = mean
        self.delta = abs( delta )

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

    def bbox( self ):
        return ( self.mean - self.delta, self.mean + self.delta )

class LogParser:
    def __init__( self, stream, max_variants = None ):
        self.CONFIG  = 0x1
        self.DEBUG   = 0x2
        self.FITNESS = 0x4

        self.stream = self._getLine( stream )
        self.max_count = max_variants
        self.fitness_q = list()
        self.config_q = list()
        self.debug_q = list()

        self.config = None

        next( self.stream )

    def _getLine( self, stream ):
        go_until = self.CONFIG | self.DEBUG | self.FITNESS

        # A pattern for floating point numbers. This appears a couple times in
        # the variant pattern, so I made a separate string to interpolate in
        # instead of copying it verbatim and making a single extra-long pattern.
        # Note that the pattern here does not capture any groups: the (?:) glyph
        # indicates a non-capturing group in python.

        f = r"(?:nan|[-+]?inf|[-+]?\d+(?:\.\d+)?(?:[eE][-+]?\d+)?)"
        variant_pat = re.compile(
            r"^\t\s*((?:{0}\s+(?:\+/-\s+{0}\s+)?)+)(.*)".format( f )
        )
        generation_pat = re.compile( r"generation (\d+) " )

        gen = 0
        count = 0
        for line in stream:
            m = variant_pat.search( line )
            if m is not None:
                if self.max_count is not None and self.max_count <= count:
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
                fitness_q = tuple( [
                    Interval( m, d ) for m, d in zip( fitnesses, intervals )
                ] )
                self.fitness_q.append( Entry( gen, count, fitness_q, variant ) )
                if go_until & self.FITNESS != 0:
                    go_until = yield
                continue
            m = generation_pat.search( line )
            if m is not None:
                gen = int( m.group( 1 ) )
                continue
            if line.startswith( "--" ):
                self.config_q.append( line.split( None, 1 ) )
                if go_until & self.CONFIG != 0:
                    go_until = yield
                continue
            self.debug_q.append( line )
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
        if self.config is None:
            self.config = LazyConfig(
                self._consumer( self.config_q, self.CONFIG )
            )
        return self.config

    def getDebug( self ):
        for entry in self._consumer( self.debug_q, self.DEBUG ):
            yield entry

    def getEntries( self ):
        for entry in self._consumer( self.fitness_q, self.FITNESS ):
            yield entry

def lower_genome( genes ):
    if genes == [ "original" ]:
        return list()
    fields = re.compile( r'[a-z]\((\d+),(\d+)\)' )
    pending = list( reversed( genes ) )
    genes = list()
    while len( pending ) > 0:
        gene = pending.pop()
        if 'a' == gene[ 0 ]:
            genes.append( gene )
        elif 'd' == gene[ 0 ]:
            genes.append( gene )
        elif 'r' == gene[ 0 ]:
            m = fields.match( gene )
            dst, src = m.group( 1, 2 )
            pending += [ 'd(%s)' % dst, 'a(%s,%s)' % ( dst, src ) ]
        elif 's' == gene[ 0 ]:
            m = fields.match( gene )
            dst, src = m.group( 1, 2 )
            pending += [
                'r(%s,%s)' % ( dst, src ),
                'r(%s,%s)' % ( src, dst )
            ]
        else:
            raise ValueError( "unrecognized gene: " + gene )
    return genes

