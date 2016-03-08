from contextlib import contextmanager
import os
import sys
import tempfile

def infomsg( arg1, *args, **kwargs ):
    fh = kwargs.pop( "file", sys.stdout )
    if len( kwargs ) > 0:
        raise TypeError(
          "infomsg() got an unexpected keyword argument '%s'" %
            kwargs.keys()[ 0 ]
        )

    args = " ".join( map( str, [ arg1 ] + list( args ) ) )
    fh.write( args )
    fh.write( '\n' )
    fh.flush()
    try:
        os.fsync( fh.fileno() )
    except OSError: pass

@contextmanager
def mktemp( suffix = '', dir = None ):
    tmp = tempfile.NamedTemporaryFile(
        suffix = suffix, dir = dir, delete = False
    )
    try:
        tmp.close()
        yield tmp.name
    finally:
        if os.path.exists( tmp.name ):
            os.remove( tmp.name )

