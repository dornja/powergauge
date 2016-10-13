import bpy

from optparse import OptionParser
import sys

if "--" not in sys.argv:
    sys.argv = []
else:
    sys.argv = sys.argv[ sys.argv.index( "--" ) + 1 : ]

parser = OptionParser( usage = "%prog [options] filename" )
parser.add_option(
    "--scene", metavar = "N", type = int,
    help = "index of scene to render, if multiple exist"
)
parser.add_option(
    "--size", metavar = "WxH", help = "dimensions of scene to render"
)
options, args = parser.parse_args( sys.argv )

if len( args ) < 1:
    parser.print_help()
    exit()

if options.size is not None:
    sizes = options.size.split( "x" )
    if len( sizes ) != 2:
        print( "ERROR: could not parse size '%s'" % options.size )
        parser.print_help()
        exit( 1 )
    options.size = int( sizes[ 0 ] ), int( sizes[ 1 ] )

def show_info( obj ):
    if obj.__doc__ is not None:
        print( obj.__doc__ )
    for key in dir( obj ):
        if not key.startswith( "_" ):
            print( key, ":", getattr( obj, key ) )

if options.scene is None:
    if len( bpy.data.scenes ) > 1:
        print( "ERROR: found %d scenes. Please pick one with --scene"
            % len( bpy.data.scenes )
        )
        exit( 2 )
    scene = bpy.data.scenes[ 0 ]
else:
    scene = bpy.data.scenes[ options.scene ]
if options.size is not None:
    print( "INFO: resetting image resolution from {0}x{1} to {2}x{3}".format(
        scene.render.resolution_x, scene.render.resolution_y,
        options.size[ 0 ], options.size[ 1 ]
    ) )
    scene.render.resolution_x = options.size[ 0 ]
    scene.render.resolution_y = options.size[ 1 ]
scene.render.image_settings.file_format = "PNG"
scene.render.filepath = args[ 0 ]
bpy.ops.render.render( write_still = True )

exit( 0 )

