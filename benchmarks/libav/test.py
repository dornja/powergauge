#!/usr/bin/python

import os
import sys

root = os.path.abspath( sys.argv[ 0 ] )
for i in range( 3 ):
    root = os.path.dirname( root )
sys.path.append( os.path.join( root, "lib" ) )
os.chdir("libav-src")
from testutil import ParallelTest
from optparse import OptionGroup, OptionParser
from distutils.spawn import find_executable
from util import infomsg

# Run test.py -h to get usage information

class LibavTest( ParallelTest ):
    def getGolden( self ):
        return "outputs/%s%s" % ( self.test, self.getOutputSuffix() )

    def getCommand( self, outfile ):
        cmd = [ self.exe ]
        cmd += {
            "prores":   ['fate-vsynth1-prores', 
                         '',
                         '',
                         root + '/benchmarks/libav/libav-src',
                         """enc_dec "rawvideo -s 352x288 -pix_fmt yuv420p" tests/data/vsynth1.yuv mov "-c prores -profile hq" rawvideo "-s 352x288 -pix_fmt yuv420p " -keep""",
                         '',
                         'genprog-tests/ref/vsynth/vsynth1-prores',
                         '',
                         '1',
                         '',
                         '',
                         '',
                         '',
                         '',
                         '1',
                         '',
                         '',
                         outfile],
            "mpeg4":    ['fate-vsynth1-mpeg4', 
                         '',
                         '',
                         root + '/benchmarks/libav/libav-src',
                         """enc_dec "rawvideo -s 352x288 -pix_fmt yuv420p" tests/data/vsynth1.yuv mp4 "-c mpeg4 -qscale 10 -flags +mv4 -mbd bits" rawvideo "-s 352x288 -pix_fmt yuv420p " -keep""",
                         '',
                         'genprog-tests/ref/vsynth/vsynth1-mpeg4',
                         '',
                         '1',
                         '',
                         '',
                         '',
                         '',
                         '',
                         '1',
                         '',
                         '',
                         outfile],
        }[ self.test ]
        return cmd, dict() #{ "stderr": outfile }


    def getParser( self ):
        return OptionParser(
            usage = "%prog [options] test __FITNESS_FILE__"
        )

    def checkArgs( self, parser, args ):
        if len( args ) < 2:
            parser.print_help()
            raise ValueError( "insufficient arguments" )

        self.exe  = "tests/genprog-fate-run.sh"
        self.test = args[ 0 ]

        # Horrible hack. Since we've chdir'd into libav-src the fitness file
        # won't end up where expected, so "../" gets prepended unelss the fitness
        # file path starts with a "/" (e.g., /dev/tty)
        if args[ 1 ][ 0 ] == "/":
            self.fitnessfile = args[ 1 ]
        else:
            self.fitnessfile = "../" + args[ 1 ]

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

        try:
            results = self.getParallelFitness( root )
        except IOError as e:
            exit( e.errno )
        # except Exception:
        #     results = list()

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



LibavTest().run( root )

# exit non-zero so GenProg won't consider this a "repair"
exit( 1 )

