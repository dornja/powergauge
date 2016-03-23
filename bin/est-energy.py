#!/usr/bin/python

from __future__ import print_function

from contextlib import contextmanager
from collections import defaultdict
import csv
from optparse import OptionParser
import os
import platform
from subprocess import call, check_call, Popen
import sys
from tempfile import NamedTemporaryFile

root = os.path.dirname( os.path.dirname( os.path.abspath( sys.argv[ 0 ] ) ) )

parser = OptionParser(
    usage = "%prog [options] -- command [args...]"
)
parser.add_option(
    "-o", metavar = "file", help = "write estimated Joules to the named file"
)
parser.add_option(
    "--model", metavar = "csv",
    default = os.path.join( root, "etc", "energy-models.csv" ),
    help = "CSV file containing coefficients for the power model"
)
parser.add_option(
    "-r", "--repeat", metavar = "N", type = int, default = 1,
    help = "number of times to repeat program"
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

    # Always run at least once, then stop when there are no more counters left

    remaining = list( counters )
    with open( "/dev/null", 'w' ) as devnull:
        while True:
            with mktemp() as datfile:
                perf = [ "perf", "stat", "-o", datfile ]
                if len( remaining ) > 0:
                    perf += [ "-e", ",".join( remaining ) ]
                if options.repeat > 0:
                    perf += [ "--repeat", str( options.repeat ) ]
                perf += [ "--" ]
                try:
                    check_call( perf + cmd, stdout = stdout, stderr = stderr )
                except KeyboardInterrupt:
                    exit( 127 )

                gotone = False
                with open( datfile ) as fh:
                    for line in fh:
                        line = line.split()
                        if len( line ) < 2 or \
                                not line[ 0 ][ 0 ].isdigit() or \
                                line[ 1 ] not in [ "seconds" ] + remaining:
                            continue
                        gotone = True
                        while line[ 1 ] in remaining:
                            remaining.remove( line[ 1 ] )
                        result[ line[1] ] = float( line[0].replace( ",", "" ) )
            if not gotone or len( remaining ) == 0:
                break
            stdout = devnull
            stderr = devnull
    return result

def power_model( coeff, d ):
    return d[ "seconds" ] * (
        float( coeff[ "cycles" ] ) * d[ "cycles" ] +
        float( coeff[ "instrs" ] ) * d[ "instructions" ] +
        float( coeff[ "floats" ] ) * get_float_counters( d ) +
        float( coeff[ "cache" ] )  * d[ "cache-references" ] +
        float( coeff[ "misses" ] ) * d[ "cache-misses" ]
    ) / d[ "cycles" ]

########
# Select the power model
########

with open( "/proc/cpuinfo" ) as fh:
    for line in fh:
        if line.startswith( "vendor_id" ):
            cpu_vendor = line.split()[ 2 ]
            break
if cpu_vendor == "AuthenticAMD":
    def get_float_counters( d ):
        return d[ "r533f00" ]
elif cpu_vendor == "GenuineIntel":
    def get_float_counters( d ):
        return d[ "r532010" ] + d[ "r538010" ]
else:
    print( "ERROR: unexpected CPU vendor:", cpu_vendor, file = sys.stderr )
    exit( 2 )

coefficients = dict()
with open( options.model ) as fh:
    reader = csv.DictReader( fh )
    for row in reader:
        if row[ "host" ] == platform.node():
            coefficients = row
            break
    else:
        print( "ERROR: could not find hostname ({0}) in {1}".format(
            platform.node(), options.model
        ), file = sys.stderr )
        exit( 2 )

########
# Use the power model we selected
########

# determine the counters needed by the model...

required = defaultdict( lambda: 1.0 )
power_model( coefficients, required )
counters = [ counter for counter in required.keys() if counter != "seconds" ]

if options.o is None:
    fh = sys.stdout
else:
    fh = open( options.o, 'w' )
data = collect_counters( counters, args )
print( power_model( coefficients, data ), file = fh )

