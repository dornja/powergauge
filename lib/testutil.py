from __future__ import division

import csv
from distutils.spawn import find_executable
from itertools import repeat
import numpy as np
from optparse import OptionGroup, OptionParser
import os
import platform
from scipy.special import gamma
import socket
from subprocess import call, check_call, Popen, CalledProcessError
import sys
from util import infomsg, mktemp

debug_file = None

def reduce_error( f, alpha, probes = 5 ):
    global debug_file

    # variance computation adapted from:
    # https://en.wikipedia.org/wiki/Algorithms_for_calculating_variance
    # correction computation adapted from:
    # https://en.wikipedia.org/wiki/Unbiased_estimation_of_standard_deviation

    if probes % 2 == 0:
        probes += 1

    log = debug_file
    debug_file = None

    n    = None
    mean = None
    M2   = None
    errp = np.ones( 1 )

    while np.any( alpha < errp ):
        infomsg( "errp =", errp, ": Attempting", probes, "more probes" )
        i = 0
        while i < probes:
            for x in f():
                if log is not None:
                    infomsg( *x, file = log )
                yield x
                x = np.array( x )
                if n is None:
                    n    = np.zeros( len( x ) )
                    mean = np.zeros( len( x ) )
                    M2   = np.zeros( len( x ) )
                    errp = np.zeros( len( x ) )
                if len( errp ) < len( x ):
                    infomsg( "warning: change in fitness dimensions!" )
                    return
                if np.all( x == 0 ):
                    infomsg( "warning: 0 fitness: terminating evaluation" )
                    return
                n += 1
                delta = x - mean
                mean += delta / n
                M2 += delta * ( x - mean )
                i = i + 1
        var = M2 / ( n - 1 )
        errp = np.sqrt( var / n ) / mean
        if np.any( n < 100 ):
            c4 = np.sqrt( 2 / ( n-1 ) ) * gamma( n / 2 ) / gamma( ( n-1 ) / 2 )
            errp = errp / c4
        probes += probes

    if log is not None:
        for j in range( len( n ) ):
            infomsg( n[j], "probes: relative standard error =", errp[j], file = log )
        debug_file = log

class Multitmp:
    def __init__( self, num, suffix = "" ):
        self.num = num
        self.suffix = suffix

    def __enter__( self ):
        self.fnames = list()
        for i in range( self.num ):
            self.fnames.append( mktemp( self.suffix ).__enter__() )
        return self

    def __exit__( self, typ, val, trace ):
        self.close()

    def __iter__( self ):
        return iter( self.fnames )

    def __len__( self ):
        return len( self.fnames )

    def __str__( self ):
        return str( self.fnames )

    def close( self ):
        for fname in self.fnames:
            if os.path.exists( fname ):
                call( [ "rm", "-rf", fname ] )
        del self.fnames

    @staticmethod
    def check_call( cmd, **kwargs ):
        verbose = kwargs.pop( "verbose", False )

        counts = set()
        def get_iter( iter, arg ):
            if isinstance( arg, Multitmp ):
                counts.add( len( arg ) )
                count = len( arg )
                return iter( arg )
            else:
                return repeat( arg )

        open_files = list()
        def iopen( iterable ):
            for name in iterable:
                if os.path.isdir( name ):
                    yield name
                else:
                    fh = open( name, 'w' )
                    open_files.append( fh )
                    yield fh

        args = [ get_iter( iter, arg ) for arg in cmd ]
        kw = [ ( k, get_iter( iopen, v ) ) for k, v in kwargs.items() ]

        if len( counts ) > 1:
            raise ValueError( "Multitmp args have different lengths" )

        e = None
        procs = list()
        try:
            while True:
                try:
                    tmpcmd = [ next( i ) for i in args ]
                    tmpkw  = { k: next( v ) for k, v in kw }
                    if verbose:
                        infomsg( "+", *tmpcmd )
                    procs.append( ( Popen( tmpcmd, **tmpkw ), tmpcmd ) )
                    if len( counts ) == 0:
                        raise StopIteration
                except StopIteration:
                    break

            while len( procs ) > 0:
                p, tmpcmd = procs.pop()
                p.wait()
                if p.returncode != 0:
                    e = CalledProcessError(
                        cmd = tmpcmd, returncode = p.returncode
                    )
        finally:
            for p, _ in procs:
                p.kill()
            for fh in open_files:
                fh.close()

        if e is not None:
            raise e

class BasicMetric:
    def __init__( self, in_parallel ):
        self.in_parallel = in_parallel
        self.fitness_file = None

    def __del__( self ):
        self.close()

    def close( self ):
        if self.fitness_file is not None:
            self.fitness_file.__exit__( None, None, None )
            self.fitness_file = None

    def getFitnessFile( self, num_jobs ):
        if self.fitness_file is not None:
            self.close()
        self.fitness_file = Multitmp( num_jobs ).__enter__()
        return self.fitness_file

    def inParallel( self ):
        return self.in_parallel

    def getPrefix( self, count, num_jobs ):
        self.getFitnessFile( num_jobs )
        return self.prefix + [
            "-o", self.getFitnessFile( num_jobs ),
            "-r", str( count ),
            "--"
        ]

    def parse( self, fh ):
        return map( float, next( fh ).split() )

    # results is a list of lists: one for each dimension containing a value for
    # each run
    def getFitness( self ):
        results = list()
        if self.fitness_file is not None:
            for fname in self.fitness_file:
                with open( fname ) as fh:
                    fitness = [ 1.0 / ( 1.0 + x ) for x in self.parse( fh ) ]
                    while len( results ) < len( fitness ):
                        results.append( list() )
                    for dim, value in zip( results, fitness ):
                        dim.append( value )
        return results

class EmonMetric( BasicMetric ):
    def __init__( self, root, options ):
        BasicMetric.__init__( self, False )
        self.prefix = \
            [ os.path.join( root, "bin", "emon.py" ) ] + list( options )

    def parse( self, fh ):
        reader = csv.DictReader( fh )
        fitness = 0.0
        for row in reader:
            fitness += float( row[ "joules" ] )
        return [ fitness ]

class ModelMetric( BasicMetric ):
    def __init__( self, root ):
        BasicMetric.__init__( self, True )
        self.prefix = [ os.path.join( root, "bin", "est-energy.py" ) ]

class RaplMetric( BasicMetric ):
    def __init__( self, root, options ):
        BasicMetric.__init__( self, False )
        self.prefix = [ os.path.join( root, "bin", "rapl.py" ) ]
        for plane in options:
            self.prefix += [ "--plane", plane ]

class TimeMetric( BasicMetric ):
    def __init__( self, root ):
        BasicMetric.__init__( self, False )
        self.prefix = os.path.join( root, "bin", "hires-time" )

    def getPrefix( self, count, num_jobs ):
        self.getFitnessFile( num_jobs )
        return [ self.prefix, self.fitness_file ]

class WuMetric( BasicMetric ):
    def __init__( self, root, options ):
        BasicMetric.__init__( self, False )
        self.prefix = [ os.path.join( root, "bin", "wu.py" ), options ]

    def parse( self, fh ):
        reader = csv.DictReader( fh )
        row = next( reader )
        seconds = float( row[ "time" ] )
        watts   = float( row[ "watts" ] )
        return [ seconds * watts ]

class ParallelTest:
    def __init__( self ):
        self.output = None

    def getCommand( self, outfile ):
        raise NotImplementedError( "getCommand()" )

    def getOutputSuffix( self ):
        return ""

    def getGolden( self ):
        return "outputs/%s%s" % ( self.size, self.getOutputSuffix() )

    def diff( self, golden, actual ):
        with open( "/dev/null", 'w' ) as null:
            Multitmp.check_call(
                [ "diff", "-r", golden, actual ],
                stdout = null, stderr = null, verbose = self.options.verbose
            )
        return True

    def validateCorrectness( self, outfile ):
        golden = self.getGolden()

        new_golden = False
        if not os.path.exists( golden ):
            if self.options.create_golden:
                if not os.path.exists( os.path.dirname( golden ) ):
                    os.makedirs( os.path.dirname( golden ) )
                fname = next( iter( outfile ) )
                if os.path.isdir( fname ):
                    check_call( [ "rsync", "-a", fname + "/", golden ] )
                else:
                    check_call( [ "cp", "-p", fname, golden ] )
                new_golden = True
            else:
                infomsg(
                    "ERROR: no golden output to compare against",
                    file = sys.stderr
                )
                infomsg(
                    "ERROR: try running with original program and --create-golden",
                    file = sys.stderr
                )
                raise IOError( 2, "No such file or directory", golden )

        try:
            return self.diff( golden, outfile )
        except Exception as e:
            if new_golden:
                check_call( [ "rm", "-rf", golden ] )
            if isinstance( e, CalledProcessError ):
                return False
            raise

    def getParser( self ):
        return OptionParser(
            usage = "%prog [options] __EXE_NAME__ size __FITNESS_FILE__"
        )

    def _getHostMapping( self, root ):
        mappingfile = os.path.join( root, "etc", "host-emon-mapping.txt" )
        host = socket.gethostname()
        with open( mappingfile ) as fh:
            keys = next( fh ).split()
            for line in fh:
                line = dict( zip( keys, line.split() ) )
                if len( line ) == 0:
                    continue
                if line[ "host" ] == host:
                    return line
        return None

    def checkArgs( self, parser, args ):
        if len( args ) < 3:
            parser.print_help()
            raise ValueError( "insufficient arguments" )

        if self.options.emon is not None or self.options.cpu is not None:
            mapping = self._getHostMapping( self.root )
            if mapping is not None:
                if self.options.emon is not None:
                    self.options.emon = [
                        mapping[ x ] for x in [ "emon", "port", "channel" ]
                    ]
                if self.options.cpu is not None:
                    self.options.cpu = mapping[ "variant-core" ]

        use_default = True
        for opt in [ self.options.emon, self.options.time, self.options.wu ]:
            if opt is not None and opt is not False:
                use_default = False
        if len( self.options.rapl ) > 0:
            use_default = False
        if use_default:
            self.options.model = True

        self.exe  = args[ 0 ]
        self.size = args[ 1 ]
        self.fitnessfile = args[ 2 ]

    def addCommonOptions( self, parser ):
        group = OptionGroup( parser, "Common Options" )
        group.add_option(
            "-j", "--jobs", metavar = "N", type = int, default = 5,
            help = "number of jobs to run in parallel"
        )
        group.add_option(
            "--create-golden", action = "store_true",
            help = "treat this run as the 'golden' run with the correct result"
        )
        group.add_option(
            "--cpu", metavar = "N", type = int,
            help = "restrict the program to be run on the given core"
        )
        group.add_option(
            "--csv", metavar = "file",
            help = "write fitness to named CSV file as well"
        )
        group.add_option(
            "--no-limit", action = "store_true",
            help = "do not limit run time of tested command"
        )
        group.add_option(
            "-r", "--repeat", metavar = "N", type = int, default = 1,
            help = "number of times to repeat the test"
        )
        group.add_option(
            "-t", "--timeout", metavar = "sec", type = int, default = 60,
            help = "max number of seconds to allow test process to run"
        )
        group.add_option(
            "--verbose", action = "store_true",
            help = "show commands that are executed"
        )
        parser.add_option_group( group )

        group = OptionGroup( parser, "Fitness Metrics" )
        group.add_option(
            "--emon", metavar = "host port chan", nargs = 3,
            help = "host, port, and channel to connect to emon server at"
        )
        group.add_option(
            "--model", action = "store_true",
            help = "use the est-energy model; default if no metric specified"
        )
        group.add_option(
            "--rapl", metavar = "plane", action = "append", default = list(),
            help = "use RAPL (running average power limit) counters on the "
                   "named plane (intel only)"
        )
        group.add_option(
            "--time", action = "store_true",
            help = "use time instead of energy as fitness value"
        )
        group.add_option(
            "--wu", metavar = "device",
            help = "USB device to connect to WattsUp? meter at"
        )
        group.add_option(
            "--error", action = "store_true",
            help = "Output fitness and error for multiobjective search"
        )
        parser.add_option_group( group )

    def getParallelFitness( self, root, metrics ):
        with Multitmp( self.options.jobs, self.getOutputSuffix() ) as output:
            cmd, kw = self.getCommand( output )
            with open( "/dev/null", 'w' ) as null:
                kw.setdefault( "stdout", null )
                kw.setdefault( "stderr", null )
                kw[ "verbose" ] = self.options.verbose

                prefix = list()
                prefix += [ "setarch", platform.machine(), "-R" ]
                if not self.options.no_limit:
                    prefix += [
                        os.path.join( root, "bin", "limit" ),
                        str( self.options.timeout)
                    ]
                for metric in metrics:
                    prefix += metric.getPrefix( self.options.repeat, self.options.jobs )
                if self.options.cpu is not None:
                    prefix += [ "taskset", "-c", str( self.options.cpu ) ]
                Multitmp.check_call( prefix + cmd, **kw )

            # results is a list of lists: one for each dimension containing a
            # value for each run
            if self.validateCorrectness( output ):
                results = list()
                for metric in metrics:
                    results.extend( metric.getFitness() )
            else:
                results = [ [ 0 ] ]
        return results

    def run( self, root, argv = sys.argv ):
        self.root = root
        parser = self.getParser()
        self.addCommonOptions( parser )

        self.options, args = parser.parse_args( args = argv[ 1: ] )
        try:
            self.checkArgs( parser, args )
        except ValueError:
            return 0 if len( args ) == 0 else 1

        if find_executable( self.exe ) is None:
            raise ValueError( "%s: command not found" % self.exe )
        self.exe = find_executable( self.exe )
        if "/" not in self.exe:
            self.exe = os.path.join( ".", self.exe )

        metrics = list()
        if self.options.emon is not None:
            metrics.append( EmonMetric( root, self.options.emon ) )
        if self.options.model:
            metrics.append( ModelMetric( root ) )
        if len( self.options.rapl ) > 0:
            metrics.append( RaplMetric( root, self.options.rapl ) )
        if self.options.time:
            metrics.append( TimeMetric( root ) )
        if self.options.wu is not None:
            metrics.append( WuMetric( root, self.options.wu ) )

        try:
            if self.options.cpu is None and \
                    all( [ metric.inParallel() for metric in metrics ] ):
                fitness = self.getParallelFitness( root, metrics )
            else:
                jobs = self.options.jobs
                self.options.jobs = 1
                fitness = list()
                for i in range( jobs ):
                    result = self.getParallelFitness( root, metrics )
                    while len( fitness ) < len( result ):
                        fitness.append( list() )
                    for dim, values in zip( fitness, result ):
                        dim.extend( values )
                self.options.jobs = jobs
        except IOError as e:
            exit( e.errno )

        results = [ list() for i in range( self.options.jobs ) ]
        for dim in fitness:
            if len( dim ) != self.options.jobs:
                results = [ 0 ]
                break
            for i, x in enumerate( dim ):
                results[ i ].append( x )

        if self.options.csv is not None:
            with open( self.options.csv, 'a' ) as fh:
                writer = csv.writer( fh )
                for row in results:
                    writer.writerow( [ "%g" % y for y in row ] )
        with open( self.fitnessfile, 'w' ) as fh:
            for row in results:
                infomsg( *[ "%g" % y for y in row ], file = fh )

