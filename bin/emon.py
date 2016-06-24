#!/usr/bin/python

from __future__ import print_function

from contextlib import closing, contextmanager
import csv
from optparse import OptionParser
import os
import socket
from subprocess import call, check_call, Popen
import sys
import time

root = os.path.dirname( os.path.dirname( os.path.abspath( sys.argv[ 0 ] ) ) )
sys.path.insert( 0, os.path.join( root, "lib" ) )

from energymonitor import Emon

parser = OptionParser(
    usage = "%prog [options] host port channel -- command [args...]"
)
parser.add_option(
    "-b", "--bracket", metavar = "sec", type = float, default = 0,
    help = "number of seconds to discard before command"
)
parser.add_option(
    "-o", "--output", metavar = "file", default = "/dev/stdout",
    help = "CSV file to generate"
)
parser.add_option(
    "-r", "--repeat", metavar = "N", type = int, default = 1,
    help = "repeat the command for extra measurements"
)
options, args = parser.parse_args()

if len( args ) < 3:
    parser.print_usage()
    exit()

host = args[ 0 ]
port = int( args[ 1 ] )
chan = int( args[ 2 ] ) - 1
cmd  = args[ 3: ]

class EmonServer:
    def __init__( self, host, port ):
        self.fh = socket.create_connection( ( host, port ) ).makefile( 'rw' )

    def __del__( self ):
        self.close()

    def __enter__( self ):
        return self

    def __exit__( self, typ, val, trace ):
        self.close()

    def __iter__( self ):
        return self

    def close( self ):
        if not self.fh.closed:
            self.fh.write( "CLOSE\n" )
            self.fh.flush()
            self.fh.close()

    def next( self ):
        return next( self.fh )

    def send( self, *args ):
        self.fh.write( " ".join( map( str, args ) ) )
        self.fh.write( "\n" )
        self.fh.flush()

with EmonServer( host, port ) as emon:
    emon.send( "RESET", chan )

    stdout = sys.stdout
    stderr = sys.stderr
    with open( "/dev/null", 'w' ) as fh:
        with open( options.output, 'w' ) as out:
            writer = csv.writer( out )
            writer.writerow( [ "seconds", "joules" ] )
            out.flush()
            for i in range( options.repeat ):
                start = time.time()
                status = call( cmd, stdout = stdout, stderr = stderr )
                emon.send( "READ", chan )
                joules = next( emon ).strip()
                row = [ time.time() - start, joules ]
                writer.writerow( map( str, row ) )
                out.flush()
                start += row[ 0 ]

