#!/usr/bin/python

from __future__ import print_function

from contextlib import contextmanager
from glob import glob
from optparse import OptionParser
import os
from subprocess import call
import sys

root = os.path.dirname( os.path.dirname( os.path.abspath( sys.argv[ 0 ] ) ) )
sys.path.insert( 0, os.path.join( root, "lib" ) )

from util import infomsg

def get_planes():
    planes = dict()
    rapl_dir = "/sys/class/powercap/intel-rapl/intel-rapl:*/"
    for fname in glob( rapl_dir ):
        with open( os.path.join( fname, "name" ) ) as fh:
            package = next( fh ).strip()
        energy = os.path.join( fname, "energy_uj" )
        planes[ package ] = energy

        plane_dir = os.path.join( fname, "intel-rapl:*:*/" )
        for fname in glob( plane_dir ):
            with open( os.path.join( fname, "name" ) ) as fh:
                plane = next( fh ).strip()
            energy = os.path.join( fname, "energy_uj" )
            planes[ package + "/" + plane ] = energy
    return planes

planes = get_planes()
if len( planes ) == 0:
    print( "ERROR: no RAPL power planes found!", file = sys.stderr )
    exit( 1 )

parser = OptionParser(
    usage = "%prog [options] -- command [args...]"
)
parser.add_option(
    "-o", "--output", metavar = "file", default = "/dev/stdout",
    help = "write Joules measurement to the named file"
)
parser.add_option(
    "--plane", metavar = "plane", action = "append", default = list(),
    help = "power plane to measure"
)
parser.add_option(
    "-r", "--repeat", metavar = "N", type = int, default = 1,
    help = "repeat the command for extra measurements"
)
parser.epilog = "Available power planes: " + ", ".join( sorted( planes ) )
options, args = parser.parse_args()

if len( args ) < 1:
    parser.print_help()
    exit()

if len( options.plane ) == 0:
    options.plane.append( sorted( planes )[ 0 ] )
for plane in options.plane:
    if not plane in planes:
        print(
            "ERROR: unrecognized power plane '%s'" % plane, file = sys.stderr
        )
        exit( 1 )

@contextmanager
def energy_future():
    energy = [ None ] * len( options.plane )

    start = list()
    for plane in options.plane:
        fname = planes[ plane ]
        with open( fname ) as fh:
            infomsg( "reading from plane:", fname )
            start.append( int( next( fh ) ) )
    try:
        yield energy
    finally:
        stop = list()
        for plane in options.plane:
            fname = planes[ plane ]
            with open( fname ) as fh:
                stop.append( int( next( fh ) ) )
        for i in range( len( start ) ):
            energy[ i ] = ( stop[ i ] - start[ i ] ) / 1000000.0

cmd = args
stdout = sys.stdout
stderr = sys.stderr
with open( options.output, 'w' ) as fh:
    joules = list()
    with open( "/dev/null", 'w' ) as null:
        for i in range( options.repeat ):
            with energy_future() as energy:
                call( cmd, stdout = stdout, stderr = stderr )
                stdout = null
                stderr = null
            for j in range( len( energy ) ):
                while len( joules ) <= j:
                    joules.append( 0 )
                joules[ j ] += energy [ j ]
    print( *joules, file = fh )

