#!/usr/bin/env python

from collections import defaultdict, OrderedDict
import csv
import fnmatch
from glob import glob
import numpy as np
from optparse import OptionParser
import os
import re
import sys

root = os.path.dirname( os.path.dirname( os.path.abspath( sys.argv[ 0 ] ) ) )
sys.path.append( os.path.join( root, "lib" ) )
from genprogutil import Config, LogParser
from pareto import ParetoSpace
from util import infomsg

parser = OptionParser( usage = "%prog [options] figfile resultsdirs" )
parser.add_option(
    "-c", "--config", metavar = "file", action = "append", default = list(),
    help = "specify config file for a subfigure"
)
parser.add_option(
    "--hide-legend", action = "store_true", help = "do not display the legend"
)
parser.add_option(
    "-i", "--improvement", metavar = "file", action = "append", default = list(),
    help = "specify improvement results for a subfigure"
)
parser.add_option(
    "-l", "--logfile", metavar = "file", action = "append", default = list(),
    help = "specify repair debug log for a subfigure"
)
parser.add_option(
    "--no-pct-y-axis", action = "store_true",
    help = "do not convert Y axes to percents"
)
parser.add_option(
    "--num-cols", metavar = "N", type = int, default = 3,
    help = "number of columns to arrange plots into"
)
parser.add_option(
    "--pct-x-axis", action = "store_true",
    help = "convert the X axis to percent energy reduction"
)
parser.add_option(
    "-s", "--single", metavar = "file", action = "append", default = list(),
    help = "specify 1D improvement results"
)
parser.add_option(
    "--size", metavar = "WxH", default = "8.5x11",
    help = "figure size in inches"
)
parser.add_option(
    "--stop-after", metavar = "N", type = int,
    help = "stop processing logfiles after the first N entries"
)
parser.add_option(
    "--xlab", metavar = "label", help = "set X-axis label for figures"
)
parser.add_option(
    "--ylab", metavar = "label", help = "set Y-axis label for figures"
)
parser.add_option(
    "--debug-improvement", action = "store_true",
    help = "print the energy improvement for points on the pareto frontier"
)
parser.add_option(
    "--no-acceptable", action = "store_true",
    help = "do not show markers for human-acceptable level of error"
)
parser.add_option(
    "--no-heldout", action = "store_true",
    help = "do not show results for held-out tests"
)
parser.add_option(
    "--no-perforation", action = "store_true",
    help = "do not show results for loop perforation"
)
parser.add_option(
    "--no-precision", action = "store_true",
    help = "do not show results for changing precision"
)
parser.add_option(
    "--no-single", action = "store_true",
    help = "do not show results for single-dimensional search"
)
options, args = parser.parse_args()

if len( args ) < 2:
    parser.print_help()
    exit()

options.size = map( float, options.size.split( "x", 1 ) )

figfile = args[ 0 ]
args = map( os.path.abspath, args[ 1: ] )

collateral = defaultdict( dict )
lookup = defaultdict( dict )

def collectFiles( flag, globpat, msg ):
    for fname in getattr( options, flag ):
        results = os.path.dirname( os.path.abspath( fname ) )
        collateral[ results ][ flag ] = fname
    for results in args:
        if flag in collateral[ results ]:
            continue
        fnames = glob( os.path.join( results, globpat ) )
        if len( fnames ) != 1:
            infomsg(
                "ERROR: %s: could not identify %s" %
                    ( collateral[ results ][ "name" ], msg )
            )
            infomsg( "Use --%s to specify" % flag )
            for fname in fnames:
                infomsg( "   ", fname )
            exit( 1 )
        collateral[ results ][ flag ] = fnames[ 0 ]

def getCondition( fname ):
    try:
        condition = {
            "txt":     "baseline",
            "uniform": "reductions",
            "line":    "profile",
        }[ os.path.basename( fname ).split( "-" )[ 1 ] ]
    except KeyError:
        infomsg( "warning: could not determine condition for", fname )
        condition = ""
    return condition

def getInput( fname ):
    config = Config()
    config.load( fname )
    i = config[ "--test-command" ].split().index( "__FITNESS_FILE__" )
    input_size = config[ "--test-command" ].split()[ i - 1 ]
    return input_size

def getROC( points ):
    area = 0
    x0 = 0
    for p in points:
        area += ( p[ 0 ] - x0 ) * ( 1 - p[ 1 ] )
        x0 = p[ 0 ]
    return area
    
def getTicks( lo, hi ):
    spacing = nice( nice( hi - lo ) / 4, True )
    first = np.floor( lo / spacing ) * spacing
    last  = np.ceil( hi / spacing ) * spacing
    ticks = np.arange( first, last + spacing, spacing )
    return ticks[ ( lo <= ticks ) & ( ticks <= hi ) ]

def nice( rng, rnd = False ):
    exp = np.floor( np.log10( rng ) )
    frac = rng / pow( 10, exp )

    if rnd:
        thresh = np.array( [ 1.5, 3, 7, np.inf ] )
    else:
        thresh = np.array( [ 1, 2, 5, np.inf ] )
    return [ 1, 2, 5, 10 ][ np.argmax( frac <= thresh ) ] * pow( 10, exp )

def pad( n, padding, lst ):
    if len( lst ) < n:
        return list( lst ) + [ padding ] * ( n - len( lst ) )
    if len( lst ) > n:
        raise ValueError(
            "list is longer (%d) than target (%d)" % ( len( lst ), n )
        )
    return lst

def readImprovement( fname, original, input_size = "", stop_after = None, include_orig = False, requested = dict() ):
    if options.debug_improvement:
        infomsg( "DEBUG: improvement file:", fname )
    simplify_results = False
    with open( fname ) as fh:
        reader = csv.reader( fh )
        keys = next( reader )
        if "genome" in keys:
            simplify_results = True

    front = list()
    if simplify_results:
        if stop_after is None:
            pat = r"(genome\.\d+)"
        else:
            pat = r"(genome\.%d-\d+)" % stop_after
        if input_size == "":
            pat += r"\.orig((?:\.[^.]+)*)$"
        else:
            pat += r"\.orig((?:\.(?:%s|min))*)$" % re.escape( input_size )
        pat = re.compile( pat )
        rank = [ "min", "huge", "large", "medium", "small", "tiny", "test", "" ]

        imprv = defaultdict( lambda: ( [], dict() ) )
        with open( fname ) as fh:
            reader = csv.DictReader( fh )
            for row in reader:
                if input_size != "" and row[ "input" ] != input_size:
                    continue
                m = pat.match( row[ "genome" ] )
                if not m:
                    continue
                genome, refs = m.groups()
                tail = [ rank.index(r) for r in refs.split( "." ) ]
                if tail < imprv[ genome ][ 0 ]:
                    continue
                if tail > imprv[ genome ][ 0 ]:
                    imprv[ genome ] = tail, dict()
                p = map( float, row[ "improvement" ].split() )
                p = pad( original.shape[ 1 ], 0, p )
                imprv[ genome ][ 1 ][ row[ "input" ] ] = p
        for genome, ( _, sizes ) in imprv.items():
            value = np.mean( sizes.values(), axis = 0 )
            # ParetoSpace gets confused by np.array so convert back to list
            front.append( ( genome, list( value ) ) )
            if genome in requested:
                requested[ genome ] = value
    else:
        with open( fname ) as fh:
            reader = csv.DictReader( fh )
            for i, row in enumerate( reader ):
                p = map( float, row[ "improvement" ].split() )
                p = pad( original.shape[ 1 ], 0, p )
                front.append( ( i, p ) )

    if include_orig:
        front.append( ( "original", [ 0 ] * original.shape[ 1 ] ) )

    best = ParetoSpace( lambda a, b: float( a ) < float( b ) )
    for i, p in front:
        best.add( i, p )
    front = list()
    for i, p in sorted( best.getFrontier(), key = lambda x: x[ 1 ] ):
        if len( front ) > 0 and front[ -1 ] == p:
            continue
        front.append( p )
        if options.debug_improvement:
            p = original / ( 1 - np.array( p ) )
            p = 1 / p - 1
            p = 1 - p / ( 1 / original - 1 )
            infomsg( "   ", i, p )
    for key in requested:
        requested[ key ] = original / ( 1 - requested[ key ] )
    if len( front ) == 0:
        return np.array([])

    # Improvements are stored as (1 - orig/optim) in fitness units. So, we need
    # to do some math with the original fitness to get the actual optimizations
    # in fitness units.

    return original / ( 1 - np.array( front ) )

########
# Identify basic information about each results directory
########

for results in args:
    params = collateral[ results ]
    params[ "bmark" ] = os.path.basename( os.path.dirname( results ) )
    params[ "condition" ] = getCondition( results )
    params[ "condkey" ] = os.path.basename( results ).split( "-" )[ 1 ]
    params[ "name" ] = os.path.join(
        params[ "bmark" ], os.path.basename( results )
    )

########
# Collect the data files for all results directories
########

collectFiles( "logfile", "repair.debug.*", "logfile" )
collectFiles( "config", "configuration", "config file" )
collectFiles( "improvement", "improvement", "improvements" )

########
# Determine the training inputs used
########

for results in args:
    params = collateral[ results ]
    params[ "input" ] = getInput( params[ "config" ] )
    lookup[ params["bmark"], params["condition"] ][ params["input"] ] = params

########
# Collect original fitness
########

infomsg( "INFO: loading logfiles for %d experiments" % len( args ) )
for results in args:
    params = collateral[ results ]
    with open( params[ "logfile" ] ) as fh:
        for entry in LogParser( fh, options.stop_after ).getEntries():
            if entry.variant != "original":
                continue
            params[ "orig" ] = np.array( [ map( float, entry.fitness ) ] )
            break
        else:
            infomsg(
                "ERROR: %s: could not find original fitness" % params["logfile"]
            )
            exit( 1 )

########
# Collect scale factors for Y axis
########

if not options.no_pct_y_axis:
    for results in args:
        params = collateral[ results ]
        scalefile = os.path.join( results, "scale" )
        if os.path.exists( scalefile ):
            with open( scalefile ) as fh:
                for line in fh:
                    params[ "scale" ] = float( line.strip() )

########
# Collect human-acceptable genomes
########

for results in args:
    params = collateral[ results ]
    acceptfile = os.path.join( results, "acceptable-genome" )
    if os.path.exists( acceptfile ):
        with open( acceptfile ) as fh:
            for line in fh:
                params[ "acceptable-genome" ] = line.strip()

########
# Collect baseline pareto frontier
########

for results in args:
    params = collateral[ results ]
    request = dict()
    if "acceptable-genome" in params:
        request[ params[ "acceptable-genome" ] ] = 0
    params[ "ours" ] = readImprovement(
        params[ "improvement" ],
        params[ "orig" ],
        params[ "input" ],
        options.stop_after,
        True,
        request
    )
    if "acceptable-genome" in params:
        params[ "acceptable" ] = request[ params[ "acceptable-genome" ] ]

########
# Collect performance on held-out workloads
########

for results in args:
    params = collateral[ results ]
    params[ "heldout" ] = readImprovement(
        params[ "improvement" ],
        params[ "orig" ],
        stop_after = options.stop_after,
        include_orig = True
    )

########
# Collect loop perforation results
########

for results in args:
    params = collateral[ results ]
    for fname in glob( os.path.join( results, "../perf*/improvement.csv" ) ):
        if "rinard-11" in os.path.basename( os.path.dirname( fname ) ):
            key = "2011"
        else:
            key = "2009"
        if key in params:
            infomsg( "ERROR: multiple sources for perforation (%s) in %s" % (
                key, params[ "name" ]
            ) )
        params[ key ] = readImprovement( fname, params[ "orig" ], True )

########
# Collect results of precision change, if any
########

for results in args:
    params = collateral[ results ]
    precision = os.path.join( results, "..", "precision", "improvement.csv" )
    if os.path.exists( precision ):
        params[ "precision" ] = readImprovement( precision, params[ "orig" ] )

########
# Determine the 1D search directory for all results directories
########

for fname in options.single:
    results = os.path.dirname( os.path.abspath( fname ) )
    bmark = os.path.basename( os.path.dirname( results ) )
    condition = getCondition( results )
    inputs = lookup[ bmark, condition ]
    if len( inputs ) == 0:
        continue
    elif len( inputs ) == 1:
        params = list( inputs.values() )[ 0 ]
    else:
        configfile = os.path.join( results, "configuration" )
        if not os.path.exists( configfile ):
            infomsg(
                "ERROR: %s: could not identify corresponding config file" % fname
            )
            exit( 1 )
        params = inputs[ getInput( configfile ) ]
    params[ "single" ] = readImprovement(
        fname, params[ "orig" ], params[ "input" ], options.stop_after
    )
for results in args:
    params = collateral[ results ]
    if "single" in params:
        continue

    improvements = list()
    pattern = "gasga35-%s-*.1703" % params[ "condkey" ]
    for fname in glob( os.path.join( os.path.dirname( results ), pattern ) ):
        improvement = os.path.join( fname, "improvement" )
        if not os.path.exists( improvement ):
            continue
        configfile = os.path.join( fname, "configuration" )
        if not os.path.exists( configfile ):
            continue
        if params[ "input" ] != getInput( configfile ):
            continue
        p = readImprovement(
            improvement, params[ "orig" ], params[ "input" ], options.stop_after
        )
        if len( p ) > 0:
            improvements.append( ( improvement, p ) )
    if len( improvements ) != 1:
        infomsg( "warning: %s: could not identify 1D results" % params["name"] )
        for fname, _ in improvements:
            infomsg( "   ", fname )
    else:
        params[ "single" ] = improvements[ 0 ][ 1 ]

########
# Display results
########

import matplotlib
matplotlib.use( "Agg" )
matplotlib.rc( "text", usetex = "true" )
matplotlib.rc( "font", family = "serif" )
import matplotlib.pyplot as plt

m = np.array( [
    [  1.05, -0.05 ],
    [ -0.05,  1.05 ]
] )

colors = plt.get_cmap( "gnuplot" )
basic_line = dict(
    marker    = 'o',
    drawstyle = 'steps-pre',
    linewidth = 1.5
)
basic_point = dict(
    linestyle       = 'None',
    markersize      = 10,
    markerfacecolor = 'None',
    markeredgewidth = 1
)

styles = list()
styles.append( (
    "ours", "Our Technique", dict(
        basic_line,
        color = colors( 0 ),
) ) )
if not options.no_heldout:
    styles.append( (
        "heldout", "Held-out Tests", dict(
            basic_line,
            color = 'r',
    ) ) )
if not options.no_perforation:
#    styles.append( (
#        "2009", "Loop Perforation (2009)", dict(
#            basic_line,
#            marker = 'x',
#            color = colors( 0.33 ),
#    ) ) )
    styles.append( (
        "2011", "Loop Perforation", dict(
            basic_line,
            marker = 's',
            color = colors( 0.67 ),
    ) ) )
if not options.no_single:
    styles.append( (
        "single", "1D Search", dict(
            basic_point,
            marker =          's',
            markeredgecolor = 'b',
    ) ) )
if not options.no_precision:
    styles.append( (
        "precision", "Precision Scaling", dict(
            basic_point,
            marker =          'D',
            markersize =      7,
            markeredgecolor = 'k',
            markerfacecolor = colors( 0.33 ),
    ) ) )
if not options.no_acceptable:
    styles.append( (
        "acceptable", "Human Acceptable", dict(
            basic_point,
            marker          = 'o',
            markersize      = 10,
            markeredgecolor = colors( 0.33 ),
            markerfacecolor = 'none'
    ) ) )
# "original" must be last so that we can convert to percents
styles.append( (
    "orig", "Original Program", dict(
        basic_point,
        marker =          'o',
        markeredgecolor = 'r',
) ) )

ncol = float( options.num_cols )
nrow = np.ceil( len( args ) / ncol )
fig, axes = plt.subplots( int( nrow ), int( ncol ) )
if isinstance( axes, matplotlib.axes.Axes ):
    axes = [ axes ]
else:
    axes = axes.flatten()
artists = dict()
for ax, results in zip( axes, args ):
    params = collateral[ results ]

    allpts = list()
    for key, _, _ in styles:
        if key in params:
            params[ key ] = 1 / params[ key ] - 1
            if "scale" in params:
                params[ key ][ :, 1 ] *= params[ "scale" ]
    for key, _, kwargs in styles:
        if key in params:
            if options.pct_x_axis:
                if key == "orig":
                    continue
                if not "orig" in params:
                    infomsg(
                        "ERROR: no original for " + params[ "name" ] + ": " +
                        "cannot convert X axis to percent"
                    )
                    exit( 1 )
                params[ key ][ ::,0 ] = \
                    1 - params[ key ][ ::,0 ] / params[ "orig" ][ ::,0 ]
            allpts.append( params[ key ] )
            a = ax.plot( params[ key ][ :, 0 ], params[ key ][ :, 1 ], **kwargs )
            artists[ key ] = a[ 0 ]
    allpts = np.concatenate( allpts )

    xmin, ymin = np.min( allpts, axis = 0 )
    xmax, ymax = np.max( allpts, axis = 0 )
    if options.pct_x_axis:
        xmin = min( xmin, 0 )
        xmax = max( xmax, 1 )
    if xmin == xmax:
        xmin -= 1
    if ymin == ymax:
        ymax += 1
    xmin, xmax = np.dot( ( xmin, xmax ), m )
    ymin, ymax = np.dot( ( ymin, ymax ), m )

    ax.set_xlim( xmin, xmax )
    ax.set_ylim( ymin, ymax )
    ticks = getTicks( xmin, xmax )
    ax.set_xticks( ticks )
    if options.pct_x_axis:
        ax.set_xticklabels( [ r"%.0f\%%" % ( tick * 100 ) for tick in ticks ] )
    ticks = getTicks( ymin, ymax )
    ax.set_yticks( ticks )
    if "scale" in params:
        digits = max( int( np.ceil( - np.log10( ticks[ 1 ] ) ) - 2 ), 0 )
        fmt = r"%%.%df\%%%%" % digits
        infomsg( ticks[ 1 ], digits, fmt )
        ax.set_yticklabels( [ fmt % ( tick * 100 ) for tick in ticks ] )
    ax.tick_params( top = 'off', right = 'off', direction = 'out' )

    if len( lookup[ params[ "bmark" ], params[ "condition" ] ] ) == 1:
        ax.set_title( params[ "bmark" ] )
    else:
        rename = {
            "mpeg4":  "mpeg4",
            "prores": "prores",
            "small":  "buggy",
            "tiny":   "planet",
        }[ params[ "input" ] ]
        ax.set_title( params[ "bmark" ] + ": " + rename )
    if options.xlab is not None:
        ax.set_xlabel( options.xlab )
    if options.ylab is not None:
        ax.set_ylabel( options.ylab )

    infomsg(
        params[ "bmark" ], "-", params[ "condition" ], "-", params[ "input" ]
    )
    infomsg( "    original: ", *( params[ "orig" ] ) )
    infomsg( "    frontier: ", len( params[ "ours" ] ), "points" )
    infomsg( "         roc: ", getROC( params[ "ours" ] ) )
    if "2011" in params:
        infomsg( "    peroration: ", len( params[ "2011" ] ), "points" )
        infomsg( "         roc: ", getROC( params[ "2011" ] ) )
    if options.debug_improvement:
        infomsg( params[ "ours" ] )

if len( artists ) > 1 and not options.hide_legend:
    fig.legend(
        [ artists[ key ] for key, _, _ in styles if key in artists ],
        [ legend for key, legend, _ in styles if key in artists ],
        loc = 'lower center',
        bbox_to_anchor = ( 0, 0.92, 1, 1 ),
        bbox_transform = plt.gcf().transFigure,
        numpoints = 1, ncol = 3
    )
if len( axes ) == 1:
    plt.subplots_adjust( left = 0.175 )
else:
    fig.tight_layout( h_pad = 0.0, rect = ( 0, 0.06, 1, 0.94 ) )
fig.set_size_inches( *options.size )
plt.savefig( figfile )

