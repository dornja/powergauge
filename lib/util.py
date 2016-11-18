from collections import defaultdict
from contextlib import contextmanager
import os
from subprocess import Popen, PIPE, CalledProcessError
import sys
import tempfile
import time

def infomsg( *args, **kwargs ):
    end = kwargs.pop( "end", "\n" )
    fh  = kwargs.pop( "file", sys.stdout )
    sep = kwargs.pop( "sep", " " )
    if len( kwargs ) > 0:
        raise TypeError(
          "infomsg() got an unexpected keyword argument '%s'" %
            kwargs.keys()[ 0 ]
        )

    fh.write( sep.join( map( str, list( args ) ) ) )
    fh.write( end )
    fh.flush()
    try:
        os.fsync( fh.fileno() )
    except OSError: pass

@contextmanager
def mktemp( suffix = '', prefix = 'tmp', dir = None ):
    tmp = tempfile.NamedTemporaryFile(
        suffix = suffix, prefix = prefix, dir = dir, delete = False
    )
    try:
        tmp.close()
        yield tmp.name
    finally:
        if os.path.exists( tmp.name ):
            os.remove( tmp.name )

def pipeline( cmdlist, **kwargs ):
    ps = list()
    for i, cmd in enumerate( cmdlist, 1 ):
        kw = dict( kwargs )
        if i != 1:
            kw[ "stdin" ] = ps[ -1 ].stdout
        if i != len( cmdlist ):
            kw[ "stdout" ] = PIPE
        ps.append( Popen( cmd, **kw ) )
    for cmd, p in zip( cmdlist, ps ):
        if p.wait() != 0:
            raise CalledProcessError( p.returncode, cmd )

class stats:
    def __init__( self ):
        self.counts = defaultdict( lambda: 0 )
        self.totals = defaultdict( lambda: 0.0 )
        self.stack  = list()
        self.start  = time.time()

    @contextmanager
    def context( self, key ):
        start = time.time()
        self.stack.append( 0 )
        try:
            yield
        finally:
            duration = time.time() - start
            holes = self.stack.pop()
            if len( self.stack ) > 0:
                self.stack[ -1 ] += duration
            self.totals[ key ] += duration - holes
            self.counts[ key ] += 1

    def time( self, key, f, *args, **kwargs ):
        with self.context( key ):
            return f( *args, **kwargs )

    def __enter__( self ):
        return self

    def __exit__( self, typ, val, trace ):
        duration = time.time() - self.start

        table = list()
        table.append( [ "Activity", "Count", "Seconds", "Percent" ] )
        for key in sorted( self.totals ):
            row = [
                key,
                str( self.counts[ key ] ),
                "%.3f" % self.totals[ key ],
                "%.2f%%" % ( 100 * self.totals[ key ] / duration )
            ]
            table.append( row )
        table.append( [ "total time", "", "%.3f" % duration, "100.00%" ] )

        widths = list()
        for row in table:
            widths += [ 0 ] * ( len( row ) - len( widths ) )
            widths = map( max, zip( widths, map( len, row ) ) )

        table[ 0 ] = [s + " " * (w - len(s)) for s, w in zip(table[0], widths)]
        table.insert(  1, map( lambda w: "-" * w, widths ) )
        table.insert( -1, map( lambda w: "-" * w, widths ) )

        fmt = "  ".join( map( "{:>%d}".__mod__, widths ) )
        fmt = fmt[ :2 ] + "<" + fmt[ 3: ]
        for row in table:
            infomsg( fmt.format( *row ), file = sys.stderr )

