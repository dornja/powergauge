#!/usr/bin/python

from __future__ import print_function

from collections import defaultdict
from contextlib import closing, contextmanager
from datetime import datetime
from functools import partial
from optparse import OptionParser
import os
from select import select
import serial
import socket
import sys
import time

parser = OptionParser( usage = "%prog [options] device baud" )
parser.add_option(
    "--hostname", metavar = "name", default = "0.0.0.0",
    help = "IP interface to listen for connections"
)
parser.add_option(
    "--port", metavar = "port", type = int, default = 9600,
    help = "port to listen on"
)
parser.add_option(
    "--period", metavar = "millis", type = int, default = 100,
    help = "number of milliseconds to accumulate on the emon device"
)
options, args = parser.parse_args()

if len( args ) < 2:
    parser.print_help()
    exit()

class Emon:
    def __init__( self, device, baud ):
        self.fh = serial.Serial( device, baud, timeout = 20 )
        self.buf = ""
        self.listeners = defaultdict( list )
        self.start = None

        self.fh.write( ";delay 0;set period %d;" % options.period )
        self.fh.flush()

    def __enter__( self ):
        return self

    def __exit__( self, typ, val, trace ):
        self.close()

    def __del__( self ):
        self.close()

    def close( self ):
        self.fh.close()

    def fileno( self ):
        return self.fh.fileno()

    def addListener( self, chan, listener ):
        self.listeners[ chan ].append( listener )

    def removeListener( self, chan, listener ):
        self.listeners[ chan ].remove( listener )

    def readPower( self ):
        self.buf += self.fh.read( self.fh.inWaiting() )
        while "\r\n" in self.buf:
            line, self.buf = self.buf.split( "\r\n", 1 )
            line = line.split()

            stop = time.time()
            if self.start is None:
                self.start = stop
                continue
            duration = stop - self.start
            self.start = stop

            if len( line ) != 5:
                continue

            line = map( float, line )
            if line[ 0 ] == 0.0:
                continue
            for chan, watts in enumerate( line[ 1: ] ):
                if len( self.listeners[ chan ] ) > 0:
                    joules = abs( watts ) * duration
                    print(
                        "Channel %d: %d listeners, %g joules"
                            % ( chan, len( self.listeners[ chan ] ), joules )
                    )
                    sys.stdout.flush()
                for listener in self.listeners[ chan ]:
                    listener.update( joules )

class Client:
    def __init__( self, sock, addr, emon, readback, writeback ):
        self.sock = sock
        self.addr = addr
        self.emon = emon
        self.readback  = readback
        self.writeback = writeback
        self.chan = None
        self.inbuf = ""
        self.outbuf = ""
        self.closing = 0

        self.sock.setblocking( False )

    def __enter__( self ):
        return self

    def __exit__( self, typ, val, trace ):
        self.close()

    def __del__( self ):
        self.close()

    def close( self ):
        if self.closing == 0:
            self.write( "CLOSE\n" )
            self.closing = 1

    def fileno( self ):
        return self.sock.fileno()

    def recv( self ):
        if self.closing == 2:
            raise RuntimeError( "read after close" )
        self.inbuf += self.sock.recv( 4096 )

        while "\n" in self.inbuf:
            request, self.inbuf = self.inbuf.split( "\n", 1 )
            request = request.split()
            if request[ 0 ] == "CLOSE":
                self.close()
            elif request[ 0 ] == "LISTEN":
                newchan = int( request[ 1 ] )
                if self.chan is not None:
                    self.emon.removeListener( self.chan, self )
                self.chan = newchan
                self.emon.addListener( self.chan, self )
            else:
                msg = "bad request: " + request[ 0 ] + "\n" \
                      "valid requests:\n" \
                      "    CLOSE\n" \
                      "    LISTEN <n>\n"
                self.write( msg )
                return

    def send( self ):
        if self.closing == 2:
            raise RuntimeError( "write after close" )
        try:
            n = self.sock.send( self.outbuf )
            self.outbuf = self.outbuf[ n: ]
        except socket.error as e:
            self.outbuf = ""
            if self.closing == 0:
                self.closing = 1
        if len( self.outbuf ) == 0:
            del self.writeback[ self.fileno() ]
            if self.closing == 1:
                print(
                    "INFO: [%s] closing connection:" % str( datetime.now() ),
                    self.addr
                )
                if self.chan is not None:
                    self.emon.removeListener( self.chan, self )
                del self.readback[ self.fileno() ]
                self.sock.close()
                self.closing = 2

    def write( self, msg ):
        self.outbuf += msg
        self.writeback[ self.fileno() ] = self.send

    def update( self, joules ):
        self.write( "%g\n" % joules )

class Server:
    def __init__( self, emon, hostname, port ):
        self.emon = emon
        self.serv = socket.socket( socket.AF_INET, socket.SOCK_STREAM )
        self.serv.setsockopt( socket.SOL_SOCKET, socket.SO_REUSEADDR, 1 )
        self.serv.bind( ( hostname, port ) )
        self.serv.listen( 1 )
        self.connections = dict()

    def __enter__( self ):
        return self

    def __exit__( self, typ, val, trace ):
        self.close()

    def __del__( self ):
        self.close()

    def __str__( self ):
        return str( self.serv.getsockname() )

    def close( self ):
        self.serv.close()

    def fileno( self ):
        return self.serv.fileno()

    def newConnection( self, readback, writeback ):
        conn, addr = self.serv.accept()
        print( "INFO: [%s] received connection:" % str( datetime.now() ), addr )
        conn = Client( conn, addr, self.emon, readback, writeback )
        readback[ conn.fileno() ] = conn.recv

def main_loop( emon, server ):
    readback, writeback = dict(), dict()
    readback[ emon.fileno() ] = emon.readPower
    readback[ server.fileno() ] = partial(
        server.newConnection, readback, writeback
    )

    print( "Ready on", server )
    sys.stdout.flush()

    while True:
        rlist, wlist, elist = select( readback.keys(), writeback.keys(), [] )
        for r in rlist:
            try:
                readback[ r ]()
            except Exception as e:
                print( e )
        for w in wlist:
            try:
                writeback[ w ]()
            except Exception as e:
                print( e )

dev = args[ 0 ]
baud = int( args[ 1 ] )

if not os.path.exists( dev ):
    if not dev.startswith( "/dev/" ):
        if os.path.exists( os.path.join( "/dev", dev ) ):
            dev = os.path.join( "/dev", dev )
if not os.path.exists( dev ):
    print( "ERROR: cannot open device", dev )
    exit( 1 )

with Emon( dev, baud ) as emon:
    with Server( emon, options.hostname, options.port ) as server:
        try:
            main_loop( emon, server )
        except KeyboardInterrupt:
            pass


