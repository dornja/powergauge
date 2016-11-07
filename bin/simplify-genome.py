#!/usr/bin/python

from contextlib import contextmanager
import csv
from glob import glob
from optparse import OptionParser
import os
import shlex
from subprocess import call, check_call
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
    "--best", metavar = "csv",
    help = "use the named CSV file to cache search results"
)
parser.add_option(
    "--config", metavar = "file",
    help = "read test-command from given config file"
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
            "--filter", "best",
            "--final",
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
            genomes.append( (
                - float( row[ "fitness" ] ),
                len( row[ "variant" ].split() ),
                i,
                row[ "variant" ]
            ) )
    return [ ( i, g ) for _, _, i, g in sorted( genomes ) ]

def get_improvement( logfile ):
    with open( log ) as fh:
        for line in fh:
            if line.startswith( "improvement:" ):
                result = line.split()[ -1 ]
    return result

########
# Get the test command for this scenario
########

test_cmd = TestCmd( configfile if options.config is None else options.config )

########
# Get the best genomes from the search...
########

if options.best is None or not os.path.exists( options.best ):
    if options.logfile is None:
        logfiles = glob( os.path.join( results, "repair.debug.*" ) )
        if len( logfiles ) != 1:
            infomsg(
                "ERROR: could not identify logfile. Use --logfile to specify"
            )
            exit( 1 )
        options.logfile = logfiles[ 0 ]
    if options.best is None:
        with mktemp() as csvfile:
            parse_log( options.logfile, csvfile )
            genomes = get_genomes( csvfile )
    else:
        parse_log( options.logfile, options.best )
        genomes = get_genomes( options.best )
else:
    genomes = get_genomes( options.best )
if len( genomes ) == 0:
    infomsg(
        "ERROR: no variants found! Is %s a valid file?" %
            options.logfile if options.best is None else options.best
    )
    exit( 1 )

# for now, we always operate on the genome with the greated estimated fitness

best = genomes[ 0 ]

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

if len( options.inputs ) > 0:
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

    min_genome = this_genome + ".min"
    min_binary = min_genome + ".bin"
    min_source = min_genome + ".src"
    if options.force or any(
            [not os.path.exists(f) for f in [min_genome, min_binary, min_source]]
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
            infomsg( " ".join( cmd ) )
            check_call( cmd )
    this_genome = min_genome

########
# Measure the improvement over the original
########

    if test_cmd.getInput() not in options.inputs:
        options.inputs = [ test_cmd.getInput() ] + options.inputs
    genome = os.path.basename( this_genome )
    with ImprovementTable( os.path.join( results, "improvement" ) ) as imprv:
        for test_input in options.inputs:
            if not options.force and ( genome, test_input ) in imprv:
                continue
            with mkconfig( test_cmd( test_input ) ) as config:
                cmd = [
                    minimize, genprog, config,
                        "--search", "none",
                        "--genome-file", this_genome
                ]
                if options.low_error is not None:
                    min_cmd += [ "--low-error", str( options.low_error ) ]
                with mktemp() as log:
                    pipeline( [ cmd, [ "tee", log ] ] )
                    imprv[ genome, test_input ] = get_improvement( log )
exit()

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

