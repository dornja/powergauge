#!/usr/bin/python

from __future__ import division

from optparse import OptionParser
import os
from subprocess import call
import sys

root = os.path.dirname( os.path.dirname( os.path.abspath( sys.argv[ 0 ] ) ) )
sys.path.insert( 0, os.path.join( root, "lib" ) )
from util import infomsg, mktemp

parser = OptionParser(
    usage = "%prog [options] fitness_file -- test-command args..."
)
parser.add_option(
    "-i", "--inputs", metavar = "sizes",
    help = "comma-separated list of input sizes to test"
)
options, args = parser.parse_args()

if len( args ) < 2:
    parser.print_help()
    exit()

fitness_file = args[ 0 ]

options.inputs = [ x for x in options.inputs.split( "," ) if x != "" ]
energy = list()
for size in options.inputs:
    with mktemp() as tmp_fitness:
        cmd = list()
        for arg in args[ 1: ]:
            if arg == "__INPUT__":
                cmd.append( size )
            elif arg == "__TMP_FITNESS_FILE__":
                cmd.append( tmp_fitness )
            else:
                cmd.append( arg )
        call( cmd )
        with open( tmp_fitness ) as fh:
            count = 0
            for line in fh:
                line = line.split()
                while len( energy ) < len( line ):
                    energy.append( 0 )
                for i, field in enumerate( line ):
                    energy[ i ] +=  1 / float( field ) - 1
                count += 1
            if count == 0:
                infomsg( "ERROR: no fitness for input size", size )
                energy = [ 0 for x in energy ]
                break
else:
    energy = [ 1 / ( 1 + x ) for x in energy ]
with open( fitness_file, 'w' ) as fh:
    infomsg( *energy, file = fh )

