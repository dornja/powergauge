#!/usr/bin/python2

from contextlib import contextmanager
from numpy.distutils import cpuinfo
from optparse import OptionParser
import os
from subprocess import call, check_call, Popen
import sys
from tempfile import NamedTemporaryFile

parser = OptionParser(
    usage = "%prog [options] -- command [args...]"
)
parser.add_option(
    "-o", metavar = "file", help = "write estimated Joules to the named file"
)
parser.add_option(
    "--max-simultaneous-counters", metavar = "N", type = int, default = 5,
    help = "maximum number of counters that can be collected simultaneously"
)
options, args = parser.parse_args()

@contextmanager
def mktemp( suffix = '' ):
    try:
        tmp = NamedTemporaryFile( suffix = suffix, delete = False )
        tmp.close()
        yield tmp.name
    finally:
        if os.path.exists( tmp.name ):
            os.remove( tmp.name )

def collect_counters( counters, cmd, stdout = sys.stdout, stderr = sys.stderr):
    result = dict()
    n = options.max_simultaneous_counters
    if len( counters ) > n:
        with open( "/dev/null", 'w' ) as devnull:
            for group in [ counters[i:i+n] for i in range( 0, len( counters ), n ) ]:
                result.update( collect_counters( group, cmd, stdout, stderr ) )
                stdout = devnull
                stderr = devnull
    else:
        with mktemp() as datfile:
            cmd = [
                "perf", "stat", "-o", datfile, "-e", ",".join( counters ), "--"
            ] + cmd
            try:
                check_call( cmd, stdout = stdout, stderr = stderr )
            except KeyboardInterrupt:
                exit( 127 )
            counters += [ "seconds" ]
            with open( datfile ) as fh:
                for line in fh:
                    line = line.split()
                    if len( line ) >= 2 and \
                            line[ 0 ][ 0 ].isdigit() and \
                            line[ 1 ] in counters:
                        result[ line[ 1 ] ] = float( line[ 0 ].replace( ",", "" ) )
    return result

def intel_sandybridge_power_model( d ):
    return d[ "seconds" ] * (
          31.530 +
          20.490 * ( d[ "instructions" ] / d[ "cycles" ] ) +
           9.838 * ( ( d[ "r532010" ] + d[ "r538010" ] ) / d[ "cycles" ] ) +
          -4.102 * ( d[ "cache-references" ] / d[ "cycles" ] ) +
        2962.678 * ( d[ "cache-misses" ] / d[ "cycles" ] )
    )

counters = [
    "cycles",
    "instructions",
    "cache-references",
    "cache-misses",
]
if cpuinfo.cpuinfo().is_AMD():
    counters += [ "r533f00" ]
else:
    counters += [ "r532010", "r538010" ]

if options.o is None:
    fh = sys.stdout
else:
    fh = open( options.o, 'w' )
print >>fh, intel_sandybridge_power_model( collect_counters( counters, args ) )

