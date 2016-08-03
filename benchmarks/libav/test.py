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
        use_default = True
        for opt in [ self.options.emon, self.options.time, self.options.wu ]:
            if opt is not None and opt is not False:
                use_default = False
        if len( self.options.rapl ) > 0:
            use_default = False
        if use_default:
            self.options.model = True
        self.test  = args[ 0 ]
        # Horrible hack. Since we've chdir'd into libav-src the fitness file
        # won't end up where expected, so "../" gets prepended unelss the fitness
        # file path starts with a "/" (e.g., /dev/tty)
        if args[ 1 ][ 0 ] == "/":
            self.fitnessfile = args[ 1 ]
        else:
            self.fitnessfile = "../" + args[ 1 ]

LibavTest().run( root )

# exit non-zero so GenProg won't consider this a "repair"
exit( 1 )

