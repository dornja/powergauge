import csv
from distutils.spawn import find_executable
from itertools import repeat
from math import factorial, pi, sqrt
from optparse import OptionGroup, OptionParser
import os
import platform
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

    # The correction below is for odd numbers of probes. Rather than coding
    # up both corrections, we just force the number of probes to be odd.

    if probes % 2 == 0:
        probes += 1

    log = debug_file
    debug_file = None

    n = 0
    mean = 0.0
    M2   = 0.0
    errp = 1.0

    while alpha < errp:
        for i in range( probes ):
            x = f()
            if log is not None:
                infomsg( x, file = log )
            yield x
            n = n + 1
            delta = x - mean
            mean = mean + delta / n
            M2 = M2 + delta * ( x - mean )
        var = M2 / ( n - 1 )
        if var == 0:
            break
        errp = sqrt( var / n ) / mean
        if n < 100:
            k = n // 2
            c4 = sqrt( pi / k ) * factorial ( 2*k-1 ) / ( 2 ** ( 2*k-1 ) * factorial( k - 1 ) ** 2 )
            errp = errp / c4

        probes += probes

    if log is not None:
        infomsg( n, "probes: relative standard error =", errp, file = log )
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

    def inParallel( self ):
        return self.in_parallel

    def run( self, count, prefix, cmd, fitnessfile, **kw ):
        cmd = prefix + self.prefix + [
            "-o", fitnessfile,
            "-r", str( count ),
            "--"
        ] + cmd
        Multitmp.check_call( cmd, **kw )

    def parse( self, fh ):
        return map( float, next( fh ).split() )

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
        BasicMetric.__init__( self, True )

    def parse( self, fh ):
        for term in next( fh ).split():
            if not term.endswith( "elapsed" ):
                continue
            term = term[ :-7 ].split( ":" )
            return [ int( term[ 0 ] ) * 60 + float( term[ 1 ] ) ]
        return list()

    def run( self, count, prefix, cmd, fitnessfile, **kw ):
        cmd = prefix + [
            "/usr/bin/time", "-o", fitnessfile, "--append", "--"
        ] + cmd
        for i in range( count ):
            Multitmp.check_call( cmd, **kw )

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
            with open( "/dev/null", 'w' ) as null:
                Multitmp.check_call(
                    [ "diff", "-r", outfile, golden ],
                    stdout = null, stderr = null, verbose = self.options.verbose
                )
        except Exception as e:
            if new_golden:
                check_call( [ "rm", "-rf", golden ] )
            if isinstance( e, CalledProcessError ):
                return False
            raise

        return True

    def getParser( self ):
        return OptionParser(
            usage = "%prog [options] __EXE_NAME__ size __FITNESS_FILE__"
        )

    def checkArgs( self, parser, args ):
        if len( args ) < 3:
            parser.print_help()
            raise ValueError( "insufficient arguments" )

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
            "--no-limit", action = "store_true",
            help = "do not limit run time of tested command"
        )
        group.add_option(
            "-r", "--repeat", metavar = "N", type = int, default = 1,
            help = "number of times to repeat the test"
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
        parser.add_option_group( group )

    def getParallelFitness( self, root, metric ):
        with Multitmp( self.options.jobs ) as tmpfit:
            with Multitmp( self.options.jobs, self.getOutputSuffix() ) as output:
                cmd, kw = self.getCommand( output )
                with open( "/dev/null", 'w' ) as null:
                    kw.setdefault( "stdout", null )
                    kw.setdefault( "stderr", null )
                    kw[ "verbose" ] = self.options.verbose

                    prefix = [ "setarch", platform.machine(), "-R" ]
                    if not self.options.no_limit:
                        prefix += [ os.path.join( root, "bin", "limit" ) ]

                    metric.run( self.options.repeat, prefix, cmd, tmpfit, **kw )

                results = list()
                if self.validateCorrectness( output ):
                    for fname in tmpfit:
                        with open( fname ) as fh:
                            fitness = metric.parse( fh )
                            fitness = map( lambda x: 1.0 / ( 1.0 + x ), fitness )
                            results.append( fitness )
        return results

    def run( self, root, argv = sys.argv ):
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
            results = list()
            for metric in metrics:
                if metric.inParallel():
                    fitness = self.getParallelFitness( root, metric )
                else:
                    jobs = self.options.jobs
                    self.options.jobs = 1
                    fitness = list()
                    for i in range( jobs ):
                        fitness += self.getParallelFitness( root, metric )
                    self.options.jobs = jobs

                avgs = [ ( 0.0, 0 ) ]
                if len( fitness ) == self.options.jobs:
                    for fields in fitness:
                        while len( avgs ) < len( fields ):
                            avgs.append( ( 0.0, 0 ) )
                        for i, x in enumerate( fields ):
                            y, n = avgs[ i ]
                            n += 1
                            y += ( x - y ) / n
                            avgs[ i ] = y, n
                    results += [ y for y, n in avgs ]
                else:
                    results = [ 0 ]
                    break
        except IOError as e:
            exit( e.errno )

        with open( self.fitnessfile, 'w' ) as fh:
            infomsg( *[ "%g" % y for y in results ], file = fh )

