from contextlib import contextmanager
import os
from subprocess import call, check_call
import tempfile

from util import mktemp

class Config( dict ):
    def load( self, fname ):
        with open( fname ) as fh:
            for line in fh:
                terms = line.strip().split( None, 1 )
                if len( terms ) == 1:
                    self[ terms[ 0 ] ] = None
                else:
                    self[ terms[ 0 ] ] = terms[ 1 ]

class GenProgEnv:
    def __init__( self, genprog, configfile ):
        self.genprog    = genprog
        self.configfile = configfile
        self.config     = Config()

        self.config.load( configfile )

    @contextmanager
    def build_variant( self, genome ):
        if len( genome ) == 0:
            genome = [ "original" ]

        seed = self.config.get( "--config", "0" )

        with mktemp() as genome_file:
            with open( genome_file, 'w' ) as fh:
                print >>fh, "--oracle-genome", " ".join( genome )
            cmd = [
                self.genprog, self.configfile, genome_file,
                    "--seed", seed,
                    "--keep-source",
                    "--no-test-cache",
                    "--search", "oracle",
                    "--test-command", "true",
            ]

            keepfiles = [ "000000", "repair.debug." + seed ]

            tmpdir = tempfile.mkdtemp( dir = "." )
            try:
                for fname in keepfiles:
                    if os.path.exists( fname ):
                        os.rename( fname, os.path.join( tmpdir, fname ) )
                with open( "/dev/null", 'w' ) as fh:
                    check_call( cmd, stdout = fh, stderr = fh )
                if os.path.exists( genome_file ):
                    os.remove( genome_file )

                if os.path.exists( "000000/000000" ):
                    yield "000000/000000"
                else:
                    yield None
            finally:
                for fname in keepfiles:
                    if os.path.exists( fname ):
                        check_call( [ "rm", "-rf", fname ] )
                    if os.path.exists( os.path.join( tmpdir, fname ) ):
                        os.rename( os.path.join( tmpdir, fname ), fname )
                check_call( [ "rm", "-rf", tmpdir ] )

    def run_test( self, exe ):
        cmd = self.config[ "--test-command" ]
        cmd = cmd.replace( "__EXE_NAME__", exe )
        with mktemp() as fitnessfile:
            tmp = cmd.replace( "__FITNESS_FILE__", fitnessfile )
            call( [ "sh", "-c", tmp ] )
            with open( fitnessfile ) as fh:
                return float( fh.next().strip() )

