#!/usr/bin/python

from collections import OrderedDict
import csv
from glob import glob
from optparse import OptionParser
import os
import shelve
from subprocess import call, check_call, Popen, PIPE
import sys

root = os.path.dirname( os.path.dirname( os.path.abspath( sys.argv[ 0 ] ) ) )
sys.path.append( os.path.join( root, "lib" ) )
from genprogutil import Config
from util import infomsg, mktemp, pipeline

parser = OptionParser( usage = "%prog [options] genprog configuration" )
parser.add_option(
    "--csv", metavar = "file", help = "CSV file to create"
)
parser.add_option(
    "--localization", metavar = "prefix", default = "localization",
    help = "prefix for localization files"
)
parser.add_option(
    "--max-evals", metavar = "N", type = int, default = 32768,
    help = "maximum number of evals for localized searches"
)
parser.add_option(
    "--partitions", metavar = "N", type = int, default = 2,
    help = "number of localization partitions"
)
parser.add_option(
    "--pin-root", metavar = "dir",
    help = "Pin directory to use (default: PIN_ROOT)"
)
parser.add_option(
    "--regenerate", metavar = "kind", choices = ( "model", "wall" ),
    help = "regenerate fitness values for the minimized programs"
)
parser.add_option(
    "--rows", metavar = "N", type = int, default = 25,
    help = "number of rows of fitness to regenerate"
)
parser.add_option(
    "--source", metavar = "dir", default = "src",
    help = "directory containing program source"
)
options, args = parser.parse_args()

if len( args ) < 2:
    parser.print_help()
    exit()

genprog = args[ 0 ]
config  = args[ 1 ]
datadir = "partitions"

def get_localization_files():
    files = glob( os.path.join( datadir, options.localization + ".*" ) )
    if len( files ) == 0:
        if options.pin_root is None:
            if "PIN_ROOT" in os.environ:
                options.pin_root = os.environ[ "PIN_ROOT" ]
            else:
                infomsg(
                    "you must set --pin-root to generate localization files",
                    file = sys.stderr
                )
                exit( 2 )

        check_call( [
            os.path.join( root, "bin", "partition-func-localization.py" ),
                "--output", os.path.join( datadir, options.localization ),
                "--num", str( options.partitions ),
                "--pin-root", options.pin_root,
                "--source", options.source,
                config
        ] )
        files = glob( os.path.join( datadir, options.localization + ".*" ) )
    if len( files ) != options.partitions:
        infomsg(
            "ERROR: expected", options.partitions, "partitions, but got",
            len( files ), "parititions"
        )
        exit( 2 )
    return sorted( files )

def get_storage_dir( index ):
    return os.path.join( datadir, "hold.genome.%d%s" % ( options.max_evals, index ) )

def get_genome_file( storage, index ):
    return  os.path.join( storage, "genome.%d%s" % ( options.max_evals, index ) )

def get_localized_results( localfile, index ):
    storage = get_storage_dir( index )
    fitness_log = "fitness%s.csv" % index

    cfg = Config()
    cfg.load( config )

    run_search = False
    if os.path.isdir( storage ):
        if not os.path.exists( os.path.join( storage, fitness_log ) ):
            infomsg( "no such file:", os.path.join( storage, fitness_log ) )
            run_search = True
    elif not os.path.exists( fitness_log ):
        infomsg( "no such file:", fitness_log )
        run_search = True

    if run_search:
        cmd = [
            genprog, config,
                "--max-evals", str( options.max_evals ),
                "--fitness-log", fitness_log
        ]
        if localfile is not None:
            cmd += [
                "--fix-scheme", "line",
                "--fix-file", localfile,
                "--fault-scheme", "line",
                "--fault-file", localfile,
            ]
        check_call( cmd )

    def get_repair_log( d ):
        if "--seed" in cfg:
            return os.path.join( d, "repair.debug.%s" % cfg[ "--seed" ] )
        logs = glob( os.path.join( d, "repair.debug.*" ) )
        if len( logs ) == 1:
            return logs[ 0 ]
        infomsg( "ERROR: could not determine repair log", file = sys.stderr )
        exit( 2 )

    if not os.path.isdir( storage ):
        repairlog = get_repair_log( "." )
        os.makedirs( storage )
        sources = [ fitness_log, "multi.cache", "repair.cache", repairlog ]
        check_call( [ "mv" ] + sources + [ storage ] )
        repairlog = os.path.join( storage, repairlog )
    else:
        repairlog = get_repair_log( storage )
    return repairlog

def get_unminimized_genome( logfile, index ):
    storage = os.path.dirname( logfile )
    genome = get_genome_file( storage, index + ".raw" )

    if not os.path.exists( genome ):
        with open( genome, 'w' ) as fh:
            cmds = list()
            cmds.append( [
                os.path.join( root, "bin", "parse-genprog-log.py" ),
                    os.path.join( storage, "repair.debug.0" ),
                    "--filter", "steps",
                    "--csv", "/dev/stdout"
            ] )
            cmds.append( [ "tail", "-n", "1" ] )
            cmds.append( [ "cut", '-d"', "-f2" ] )
            pipeline( cmds, stdout = fh )

    return genome

def get_maximal_genome( genome ):
    max_genome = os.path.splitext( genome )[ 0 ]
    if not os.path.exists( max_genome ):
        check_call( [
            os.path.join( root, "bin", "maximize.py" ), genprog, config,
                "--genome-file", genome,
                "--save-genome", max_genome
        ] )
    return max_genome

def get_minimized_fitness( genome ):
    cmd = [
        os.path.join( root, "bin", "minimize.py" ), genprog, config,
            "--genome-file", genome,
            "--cache", genome + ".cache",
    ]

    infomsg( "getting minimized genome for", genome )

    if not os.path.exists( genome + ".cache" ) or \
            not os.path.exists( genome + ".bin" ):
        check_call( cmd + [ "--save-binary", genome + ".bin" ] )

    if options.regenerate is not None:
        cfg = Config()
        cfg.load( config )
        cmd = cfg[ "--test-command" ]
        cmd = cmd.replace( "__EXE_NAME__", genome + ".bin" )
        if options.regenerate == "wall":
            cmd += " -j 1 --wall --repeat 100 --no-limit"

        fitnesses = list()
        for i in range( options.rows ):
            with mktemp() as fitnessfile:
                # use call instead of check_call because test scripts always
                # return non-zero status

                tmp = cmd.replace( "__FITNESS_FILE__", fitnessfile )
                call( [ "sh", "-c", tmp ] )
                with open( fitnessfile ) as fh:
                    for line in fh:
                        value = float( line.split()[ 0 ] )
                        infomsg( "   ", value )
                        fitnesses.append( value )
                        break
                    else:
                        infomsg(
                            "ERROR: no fitness for", genome + ".bin",
                            file = sys.stderr
                        )
                        exit( 2 )
        return fitnesses
    else:
        p = Popen( cmd, stdout = PIPE )
        lines = p.communicate()[ 0 ]
        if p.returncode != 0:
            raise CalledProcessError( p.returncode, cmd )

        lines = iter( lines.splitlines() )
        for line in lines:
            if line.startswith( "simplified genome:" ):
                break
        else:
            infomsg( "ERROR: could not recognize minimized genome" )
            exit( 2 )
        for line in lines:
            key = line.strip()
            break

        d = shelve.open( genome + ".cache" )
        return d[ key ]

if not os.path.exists( config ):
    infomsg( "no configuration found", file = sys.stderr )
    exit( 1 )

fitness = OrderedDict()

########
# Compute baseline fitness
########

if not os.path.isdir( get_storage_dir( ".original" ) ):
    os.makedirs( get_storage_dir( ".original" ) )
original = get_genome_file( get_storage_dir( ".original" ), ".original" )
with open( original, 'w' ) as out:
    pass
fitness[ "original" ] = get_minimized_fitness( original )

########
# Compute, search, and minimize partitions
########

genome_files = list()
for fname in get_localization_files():
    index = os.path.splitext( fname )[ 1 ]
    log = get_localized_results( fname, index )
    genome = get_unminimized_genome( log, index )
    genome_files.append( genome )
    genome = get_maximal_genome( genome )
    fitness[ "set " + index.strip( "." ) ] = get_minimized_fitness( genome )

########
# Combine unminimized partitioned genomes and minimize combination
########

if not os.path.isdir( get_storage_dir( ".combined" ) ):
    os.makedirs( get_storage_dir( ".combined" ) )
combined = get_genome_file( get_storage_dir( ".combined" ), ".combined.raw" )
with open( combined, 'w' ) as out:
    for genome in genome_files:
        with open( genome ) as fh:
            for line in fh:
                infomsg( line, file = out )
combined = get_maximal_genome( combined )
fitness[ "combined" ] = get_minimized_fitness( combined )

########
# Search and minimize whole program
########

options.max_evals *= 2
log = get_localized_results( None, "" )
genome = get_unminimized_genome( log, "" )
genome = get_maximal_genome( genome )
fitness[ "GOA" ] = get_minimized_fitness( genome )

########
# Write results to a CSV file
########

if options.csv is None:
    fh = sys.stdout
else:
    fh = open( options.csv, 'w' )
try:
    writer = csv.writer( fh )
    writer.writerow( fitness.keys() )
    rows = max( [ len( fitness[ key ] ) for key in fitness ] )
    for i in range( rows ):
        row = list()
        for key in fitness:
            row.append( str( fitness[ key ][ i ] ) )
        writer.writerow( row )
finally:
    if options.csv is not None:
        fh.close()

