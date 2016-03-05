from distutils.spawn import find_executable
from itertools import repeat
from math import factorial, pi, sqrt
from optparse import OptionGroup, OptionParser
import os
import platform
from subprocess import check_call, Popen, CalledProcessError
import sys
from util import infomsg, mktemp

debug_file = None

def get_fitness(
        root, run_cmd, validate_cmd = None,
        stdout = sys.stdout, stderr = sys.stderr ):
    with mktemp() as tmpfit:
        cmd = [
            os.path.join( root, "bin", "limit" ),
            os.path.join( root, "bin", "est-energy.py" ), "-o", tmpfit,
            "--",
        ] + run_cmd

        if debug_file is not None:
            infomsg( "DEBUG:", *cmd, file = debug_file )
        check_call( cmd, stdout = stdout, stderr = stderr )

        if validate_cmd is not None:
            if debug_file is not None:
                infomsg( "DEBUG:", *validate_cmd, file = debug_file )
            check_call( validate_cmd, stdout = stdout, stderr = stderr )

        with open( tmpfit ) as fh:
            line = fh.next().strip()
            if debug_file is not None:
                infomsg( "DEBUG: raw fitness:", line, file = debug_file )
            return 1.0 / float( line )

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
    def __init__( self, num ):
        self.num = num

    def __enter__( self ):
        self.fnames = list()
        for i in range( self.num ):
            self.fnames.append( mktemp().__enter__() )
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
                os.remove( fname )
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
            for p in procs:
                p.kill()
            for fh in open_files:
                fh.close()

        if e is not None:
            raise e

class ParallelTest:
    def __init__( self ):
        self.output = None

    def getCommand( self, outfile ):
        raise NotImplementedError( "getCommand()" )

    def validateCorrectness( self, outfile ):
        golden = "outputs/%s.txt" % self.size

        new_golden = False
        if not os.path.exists( golden ):
            if self.options.create_golden:
                if not os.path.exists( os.path.dirname( golden ) ):
                    os.makedirs( os.path.dirname( golden ) )
                check_call( [ "cp", next( iter( outfile ) ), golden ] )
                new_golden = True
            else:
                raise IOError( 2, "No such file or directory", golden )

        try:
            with open( "/dev/null", 'w' ) as null:
                Multitmp.check_call(
                    [ "diff", outfile, golden ],
                    stdout = null, stderr = null, verbose = self.options.verbose
                )
        except Exception as e:
            if new_golden:
                os.remove( golden )
            raise e

        return True

    def getParser( self ):
        return OptionParser(
            usage = "%prog [options] __EXE_NAME__ size __FITNESS_FILE__"
        )

    def checkArgs( self, parser, args ):
        if len( args ) < 3:
            parser.print_help()
            raise ValueError( "insufficient arguments" )

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
            "--verbose", action = "store_true",
            help = "show commands that are executed"
        )
        parser.add_option_group( group )

    def getParallelFitness( self, root ):
        with Multitmp( self.options.jobs ) as tmpfit:
            with Multitmp( self.options.jobs ) as output:
                cmd, kw = self.getCommand( output )
                with open( "/dev/null", 'w' ) as null:
                    kw.setdefault( "stdout", null )
                    kw.setdefault( "stderr", null )
                    kw[ "verbose" ] = self.options.verbose

                    cmd = [
                        "setarch", platform.machine(), "-R",
                        os.path.join( root, "bin", "limit" ),
                        os.path.join( root, "bin", "est-energy.py" ), "-o", tmpfit,
                        "--"
                    ] + cmd
                    Multitmp.check_call( cmd, **kw )

                results = list()
                if self.validateCorrectness( output ):
                    for fname in tmpfit:
                        with open( fname ) as fh:
                            fitness = map( float, next( fh ).split() )
                            fitness = map( lambda x: 1.0 / ( 1.0 + x ), fitness )
                            results.append( list( fitness ) )
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

        results = self.getParallelFitness( root )

        fitness = [ ( 0.0, 0 ) ]
        if len( results ) == self.options.jobs:
            for result in results:
                while len( fitness ) < len( result ):
                    fitness.append( ( 0.0, 0 ) )
                for i, x in enumerate( result ):
                    y, n = fitness[ i ]
                    n += 1
                    y += ( x - y ) / n
                    fitness[ i ] = y, n
        with open( self.fitnessfile, 'w' ) as fh:
            infomsg( *[ "%g" % y for y, n in fitness ], file = fh )

