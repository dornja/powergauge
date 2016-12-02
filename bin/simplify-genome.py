#!/usr/bin/python

from contextlib import contextmanager
import csv
from glob import glob
from optparse import OptionParser
import os
import shlex
from subprocess import call, check_call, CalledProcessError
import sys
import tempfile

if sys.version_info.major == 2:
    from pipes import quote
else:
    from shlex import quote

root = os.path.dirname( os.path.dirname( os.path.abspath( sys.argv[ 0 ] ) ) )
sys.path.insert( 0, os.path.join( root, "lib" ) )
from genprogutil import Config, lower_genome
from util import infomsg, mktemp, pipeline

parser = OptionParser( usage = "%prog [options] genprog results-dir" )
parser.add_option(
    "--all-variants", action = "store_true",
    help = "process all variants in the --logfile accepted by the --filter"
)
parser.add_option(
    "--config", metavar = "file",
    help = "read test-command from given config file"
)
parser.add_option(
    "--filter", metavar = "alg", default = "best",
    help = "algorithm for filtering variants from search"
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
    "--search-csv", metavar = "csv",
    help = "use the named CSV file to cache search results"
)
parser.add_option(
    "--skip-minimize", action = "store_true",
    help = "do not minimize the genome before estimating improvement"
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

options.inputs = [ x for x in options.inputs.split( "," ) if x != "" ]

configfile = os.path.join( results, "configuration" )
if not os.path.exists( configfile ):
    if options.config is None:
        infomsg( "ERROR: config file", configfile, "does not exist" )
        exit( 1 )
    configfile = options.config

@contextmanager
def mkconfig( test_command ):
    with mktemp() as config:
        check_call( [ "cp", configfile, config ] )
        infomsg( "using test-command:", test_command )
        with open( config, 'a' ) as fh:
            infomsg( "--test-command", test_command, file = fh )
        yield config

@contextmanager
def saving( filename ):
    if not os.path.exists( filename ):
        yield
    elif os.path.isdir( filename ):
        tmp = tempfile.mkdtemp( dir = os.path.dirname( filename ) )
        try:
            tmpname = os.path.join( tmp, os.path.basename( filename ) )
            try:
                os.rename( filename, tmpname )
                yield
            finally:
                os.rename( tmpname, filename )
        finally:
            os.rmdir( tmp )
    else:
        with mktemp( dir = os.path.dirname( filename ) ) as tmp:
            os.rename( filename, tmp )
            try:
                yield
            finally:
                os.rename( tmp, filename )

class TestCmd:
    def __init__( self, configfile ):
        config = Config()
        config.load( configfile )
        lex = shlex.shlex( config[ "--test-command" ], configfile, True )
        lex.whitespace_split = True
        args = list( lex )
        if not "__FITNESS_FILE__" in args:
            raise ValueError(
                "no __FITNESS_FILE__ in " + config[ "--test-command" ] +
                ": cannot identify test"
            )
        i = args.index( "__FITNESS_FILE__" ) - 1
        self.prefix = map( quote, args[ :i ] )
        self.input_arg = args[ i ]
        self.suffix = map( quote, args[ (i+1): ] )
    
    def __call__( self, input_arg ):
        return " ".join( self.prefix + [ quote( input_arg ) ] + self.suffix )

    def __str__( self ):
        return self( self.input_arg )

    def getInput( self ):
        return self.input_arg

class ImprovementTable:
    def __init__( self, filename ):
        self.data = dict()
        self.filename = filename
        if not os.path.exists( filename ):
            return
        with open( filename ) as fh:
            reader = csv.DictReader( fh )
            for row in reader:
                key = row[ "genome" ], row[ "input" ]
                self.data[ key ] = row[ "improvement" ]

    def __enter__( self ):
        return self

    def __exit__( self, typ, val, trace ):
        self.save()

    def __contains__( self, key ):
        return self.data.__contains__( key )

    def __getitem__( self, key ):
        return self.data.__getitem__( key )

    def __setitem__( self, key, value ):
        return self.data.__setitem__( key, value )

    def save( self ):
        with open( self.filename, 'w' ) as fh:
            writer = csv.writer( fh )
            writer.writerow( [ "genome", "input", "improvement" ] )
            for genome, test_input in sorted( self.data ):
                writer.writerow( map( str, [
                    genome, test_input, self.data[ ( genome, test_input ) ]
                ] ) )

def parse_log( infile, outfile ):
    infomsg( "INFO: parsing", infile )
    cmd = [
        parselog, infile,
            "--filter", options.filter,
            "--final",
            "--no-confidence",
            "--csv", outfile
    ]
    if options.stop_after is not None:
        cmd += [ "--stop-after", str( options.stop_after ) ]
    check_call( cmd )

def get_genomes( csvfile ):
    genomes = list()
    with open( csvfile ) as fh:
        reader = csv.DictReader( fh )
        for i, row in enumerate( reader, 1 ):
            # order by decreasing fitness, increasing genome length, eval order
            fitness = list()
            for key in sorted( row ):
                if key.startswith( "fitness" ):
                    fitness.append( - float( row[ key ] ) )
            genomes.append( (
                fitness,
                len( row[ "variant" ].split() ),
                i,
                row[ "variant" ]
            ) )
    return [ ( i, g ) for _, _, i, g in sorted( genomes ) ]

def get_improvement( logfile ):
    result = list()
    with open( logfile ) as fh:
        for line in fh:
            if line.startswith( "improvement:" ):
                result.append( line.split()[ -1 ] )
    return result

########
# Get the test command for this scenario
########

test_cmd = TestCmd( configfile if options.config is None else options.config )

########
# Get the best genomes from the search...
########

if options.search_csv is None or not os.path.exists( options.search_csv ):
    if options.logfile is None:
        logfiles = glob( os.path.join( results, "repair.debug.*" ) )
        if len( logfiles ) != 1:
            infomsg(
                "ERROR: could not identify logfile. Use --logfile to specify"
            )
            for fname in logfiles:
                infomsg( "   ", fname )
            exit( 1 )
        options.logfile = logfiles[ 0 ]
    if options.search_csv is None:
        with mktemp() as csvfile:
            parse_log( options.logfile, csvfile )
            genomes = get_genomes( csvfile )
    else:
        parse_log( options.logfile, options.search_csv )
        genomes = get_genomes( options.search_csv )
else:
    genomes = get_genomes( options.search_csv )
if len( genomes ) == 0:
    infomsg(
        "ERROR: no variants found! Is %s a valid file?" %
            options.logfile if options.search_csv is None else options.search_csv
    )
    exit( 1 )

def process_genome( best ):

########
# Write the genome to disk so that minimize and maximize can use it
########

    if options.stop_after is None:
        genome = "genome.%d" % best[ 0 ]
    else:
        genome = "genome.%d-%d" % ( options.stop_after, best[ 0 ] )
    this_genome = os.path.join( results, genome ) + ".orig"
    if not os.path.exists( this_genome ) or options.force:
        infomsg( "INFO: saving genome to", this_genome )
        with open( this_genome, 'w' ) as fh:
            infomsg( " ".join( lower_genome( best[ 1 ].split() ) ), file = fh )

########
# Maximize the genome for all inputs
########

    if test_cmd.getInput() not in options.inputs:
        options.inputs = [ test_cmd.getInput() ] + options.inputs
    infomsg( "INFO: maximizing genome for inputs:", *options.inputs )
    with saving( "multi.cache" ):
        for test_input in options.inputs:
            next_genome = this_genome + "." + test_input
            if not os.path.exists( next_genome ) or options.force:
                with mkconfig( test_cmd( test_input ) ) as config:
                    check_call( [
                        maximize, genprog, config,
                            "--genome-file", this_genome,
                            "--save-genome", next_genome
                    ] )
            with open( '/dev/null', 'w' ) as null:
                status = call(
                    [ "diff", this_genome, next_genome ],
                    stdout = null, stderr = null
                )
                if status != 0:
                    this_genome = next_genome
        infomsg( "INFO: final genome stored at", this_genome )

########
# Minimize the genome for the original input
########

        if not options.skip_minimize:
            min_genome = this_genome + ".min"
            min_binary = min_genome + ".bin"
            min_source = min_genome + ".src"
            fnames = [ min_genome, min_binary, min_source ]
            if options.force or any(
                    [ not os.path.exists( f ) for f in fnames ]
                ):
                with mkconfig( test_cmd ) as config:
                    cmd = [
                        minimize, genprog, config,
                            "--genome-file", this_genome,
                            "--save-binary", min_binary,
                            "--save-genome", min_genome,
                            "--save-sources", min_source
                    ]
                    if options.low_error is not None:
                        cmd += [ "--low-error", str( options.low_error ) ]
                    check_call( cmd )
            this_genome = min_genome

########
# Measure the improvement over the original
########

        if options.stop_after is None:
            cache = lambda i: os.path.join(
                results, "genome.%s-%s.cache" % ( options.filter, i )
            )
        else:
            cache = lambda i: os.path.join(
                results, "genome.%d-%s-%s.cache" % (
                    options.stop_after, options.filter, i
                )
            )
        genome_key = os.path.basename( this_genome )
        with ImprovementTable( os.path.join( results, "improvement" ) ) as imprv:
            for test_input in options.inputs:
                if not options.force and ( genome_key, test_input ) in imprv:
                    continue
                with mkconfig( test_cmd( test_input ) ) as config:
                    cmd = [
                        minimize, genprog, config,
                            "--search", "none",
                            "--genome-file", this_genome,
                    ]
                    if not options.force:
                        cmd += [ "--cache", cache( test_input ) ]
                    if options.low_error is not None:
                        cmd += [ "--low-error", str( options.low_error ) ]
                    with mktemp() as log:
                        try:
                            pipeline( [ cmd, [ "tee", log ] ] )
                        except CalledProcessError:
                            if ( genome_key, test_input ) in imprv:
                                del imprv[ genome_key, test_input ]
                            continue
                        imprv[ genome_key, test_input ] = " ".join(
                            map( str, get_improvement( log ) )
                        )

if options.all_variants:
    for i, genome in enumerate( genomes ):
        infomsg( "INFO: evaluating variant %d of %d" % ( i+1, len( genomes ) ) )
        process_genome( genome )
else:
    process_genome( genomes[ 0 ] )

