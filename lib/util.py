from contextlib import contextmanager
import os
import sys
import tempfile

def infomsg( arg1, *args, **kwargs ):
    fh = kwargs.get( "fh", sys.stdout )
    extra = set( kwargs.keys() ) - { "fh" }
    if len( extra ) > 0:
        raise TypeError(
          "infomsg() got an unexpected keyword argument '%s'" %
            next( iter( extra ) )
        )

    args = " ".join( map( str, [ arg1 ] + list( args ) ) )
    print >>fh, args
    fh.flush()
    try:
        os.fsync( fh.fileno() )
    except OSError: pass

@contextmanager
def mktemp( suffix = '' ):
    tmp = tempfile.NamedTemporaryFile( suffix = suffix, delete = False )
    try:
        tmp.close()
        yield tmp.name
    finally:
        if os.path.exists( tmp.name ):
            os.remove( tmp.name )

