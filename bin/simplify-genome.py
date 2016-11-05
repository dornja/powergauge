#!/usr/bin/python

import csv
from glob import glob
from optparse import OptionParser
import os
from subprocess import check_call
import sys

root = os.path.dirname( os.path.dirname( os.path.abspath( sys.argv[ 0 ] ) ) )
sys.path.insert( 0, os.path.join( root, "lib" ) )
from genprogutil import Config
from util import infomsg, mktemp, pipeline

parser = OptionParser( usage = "%prog [options] genprog results-dir" )
parser.add_option(
    "--config", metavar = "file",
    help = "config file to use instead of the one in the results dir"
)
parser.add_option(
    "-f", "--force", action = 'store_true', help = "overwrite existing files"
)
parser.add_option(
    "--inputs", metavar = "args", default = "",
    help = "comma-separated list of inputs to maximize on (default: empty)"
)
parser.add_option(
    "--logfile", metavar = "file", help = "repair.debug log to parse"
)
parser.add_option(
    "--low-error", metavar = "p", type = float,
    help = "repeat measurements until (standard error / mean) < (1+p)"
)
parser.add_option(
    "--stop-after", metavar = "N", type = int,
    help = "stop processing logs after the the first N variants"
)
options, args = parser.parse_args()

if len( args ) < 2:
    parser.print_help()
    exit()

parselog = os.path.join( root, "bin", "parse-genprog-log.py" )
maximize = os.path.join( root, "bin", "maximize.py" )
minimize = os.path.join( root, "bin", "minimize.py" )

genprog = args[ 0 ]
results = args[ 1 ]

if options.config is None:
    options.config = os.path.join( results, "configuration" )
if not os.path.exists( options.config ):
    infomsg( "ERROR: config file", options.config, "does not exist" )
    exit( 1 )
config = Config()
config.load( options.config )
test_cmd = config[ "--test-command" ].split()
test_input = test_cmd[ test_cmd.index( "__FITNESS_FILE__" ) - 1 ]
input_rng = config[ "--test-command" ].index( " " + test_input + " " ) + 1
input_rng = ( input_rng, input_rng + len( test_input ) )

if options.stop_after is None:
    csvfile = os.path.join( results, "best.csv" )
else:
    csvfile = os.path.join( results, "best.%d.csv" % options.stop_after )

if options.logfile is None:
    logfiles = glob( os.path.join( results, "repair.debug.*" ) )
    if len( logfiles ) != 1:
        infomsg( "ERROR: could not identify logfile. Use --logfile to specify" )
        exit( 1 )
    options.logfile = logfiles[ 0 ]
options.inputs = [ x for x in options.inputs.split( "," ) if x != "" ]

if os.path.exists( csvfile ) and not options.force:
    infomsg(
        "ERROR: CSV file '%s' already exists. Use --force to override" % csvfile
    )
    exit( 1 )

infomsg( "INFO: parsing", options.logfile )
check_call( [
    parselog, options.logfile, "--filter", "best", "--final", "--csv", csvfile
] )
with open( csvfile ) as fh:
    reader = csv.DictReader( fh )
    best = { "fitness": 0 }
    for i, row in enumerate( reader ):
        row[ "fitness" ] = float( row[ "fitness" ] )
        row[ "evalnum" ] = i
        if best[ "fitness" ] < row[ "fitness" ]:
            best = row
    if len( best ) == 1:
        infomsg(
            "ERROR: no variants found! Is logfile '%s' valid?" % options.logfile
        )
        exit( 1 )

genomes = list()
for size in [ "orig" ] + options.inputs:
    genomes.append(
        os.path.join( results, "genome.%d.%s" % ( best[ "evalnum" ], size ) )
    )
min_binary = genomes[ -1 ] + ".min.bin"
min_genome = genomes[ -1 ] + ".min"
min_source = genomes[ -1 ] + ".min.src"
imprv_file = os.path.join( results, "improvement" )
if not options.force:
    error = False
    for genome in genomes + [ min_binary, min_genome, min_source ]:
        if os.path.exists( genome ):
            infomsg(
                "ERROR: genome file '%s' already exists. Use --force to override"
                % genome
            )
            error = True
    if error:
        exit( 1 )
with open( genomes[ 0 ], 'w' ) as fh:
    infomsg( best[ "variant" ], file = fh )

infomsg( "INFO: maximizing for all inputs" )
test_cmd = config[ "--test-command" ]
prefix, suffix = test_cmd[ :input_rng[ 0 ] ], test_cmd[ input_rng[ 1 ]: ]
for i in range( 1, len( genomes ) ):
    test_cmd = prefix + options.inputs[ i - 1 ] + suffix
    infomsg( "using test-command:", test_cmd )
    with mktemp() as cfg:
        check_call( [ "cp", options.config, cfg ] )
        with open( cfg, 'a' ) as fh:
            infomsg( "--test-command", test_cmd, file = fh )
        check_call( [
            maximize, genprog, cfg,
                "--genome-file", genomes[ i - 1 ],
                "--save-genome", genomes[ i ]
        ] )

for dst in [ min_binary, min_genome, min_source ]:
    if os.path.exists( dst ):
        check_call( [ "rm", "-rf", dst ] )

improvement = dict()
if os.path.exists( imprv_file ):
    with open( imprv_file ) as fh:
        reader = csv.DictReader( fh )
        for row in reader:
            improvement[ row[ "inputs" ] ] = row[ "improvement" ]
improvement.pop( " ".join( options.inputs ), None )

def get_improvement( logfile ):
    with open( log ) as fh:
        for line in fh:
            if line.startswith( "improvement:" ):
                result = line.split()[ -1 ]
    return result

infomsg( "INFO: minimizing for", test_input )
with mktemp() as min_config:
    check_call( [ "cp", options.config, min_config ] )
    min_cmd = [
        minimize, genprog, min_config,
            "--genome-file", genomes[ -1 ],
            "--save-binary", min_binary,
            "--save-genome", min_genome,
            "--save-sources", min_source,
            "--cache", genomes[ 0 ] + ".cache"
    ]
    if options.low_error is not None:
        min_cmd += [ "--low-error", str( options.low_error ) ]
    if len( options.inputs ) != 0 and \
            ( len( options.inputs ) != 1 or options.inputs[ 0 ] != test_input ):
        check_call( min_cmd )
        min_cmd = [
            minimize, genprog, min_config,
                "--search", "none",
                "--genome-file", min_genome
        ]
        if options.low_error is not None:
            min_cmd += [ "--low-error", str( options.low_error ) ]
        results = dict()
        for size in options.inputs:
            infomsg( "using --test-command", prefix + size + suffix )
            infomsg( "minimize:", min_cmd )
            with open( min_config, 'a' ) as fh:
                infomsg( "--test-command", prefix + size + suffix, file = fh)
            with mktemp() as log:
                pipeline( [ min_cmd, [ "tee", log ] ] )
                results[ size ] = get_improvement( log )
        improvement[ " ".join( options.inputs ) ] = str(
            sum( [ float( x ) for x in results.values() ] ) / len( results )
        )
    else:
        with mktemp() as log:
            pipeline( [ min_cmd , [ "tee", log ] ] )
            improvement[ " ".join( options.inputs ) ] = get_improvement( log )
with open( imprv_file, 'w' ) as fh:
    writer = csv.writer( fh )
    writer.writerow( [ "improvement", "inputs" ] )
    for key in sorted( improvement ):
        writer.writerow( [ improvement[ key ], key ] )

