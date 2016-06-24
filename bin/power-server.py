#!/usr/bin/python

from __future__ import print_function

from contextlib import closing, contextmanager
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

class Channel:
    def __init__( self ):
        self.reset()

    def addEnergy( self, energy ):
        self.energy += energy

    def getEnergy( self ):
        return self.energy

    def reset( self ):
        self.energy = 0.0

class Emon:
    def __init__( self, device, baud ):
        self.fh = serial.Serial( device, baud, timeout = 20 )
        self.buf = ""
        self.channels = list()
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

    def getChannel( self, num ):
        while len( self.channels ) <= num:
            self.channels.append( Channel() )
        return self.channels[ num ]

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
            while len( self.channels ) < len( line ):
                self.channels.append( Channel() )
            for chan, watts in zip( self.channels, line[ 1: ] ):
                chan.addEnergy( abs( watts ) * duration )

class Client:
    def __init__( self, sock, addr, emon, readback, writeback ):
        self.sock = sock
        self.addr = addr
        self.emon = emon
        self.readback  = readback
        self.writeback = writeback
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
            self.outbuf += "CLOSE\n"
            self.writeback[ self.fileno() ] = self.send
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
            elif request[ 0 ] == "READ":
                nrg = self.emon.getChannel( int( request[ 1 ] ) ).getEnergy()
                self.outbuf += "%g\n" % nrg
                self.writeback[ self.fileno() ] = self.send
            elif request[ 0 ] == "RESET":
                self.emon.getChannel( int( request[ 1 ] ) ).reset()
            else:
                self.outbuf += "bad request: " + request[ 0 ] + "\n"
                self.outbuf += "valid requests:\n"
                self.outbuf += "CLOSE\n"
                self.outbuf += "READ <n>\n"
                self.outbuf += "RESET <n>\n"
                self.writeback[ self.fileno() ] = self.send

    def send( self ):
        if self.closing == 2:
            raise RuntimeError( "write after close" )
        n = self.sock.send( self.outbuf )
        self.outbuf = self.outbuf[ n: ]
        if len( self.outbuf ) == 0:
            del self.writeback[ self.fileno() ]
            if self.closing == 1:
                print( "INFO: closing connection:", self.addr )
                del self.readback[ self.fileno() ]
                self.sock.close()
                self.closing = 2

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
        print( "INFO: received connection:", addr )
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
        main_loop( emon, server )

