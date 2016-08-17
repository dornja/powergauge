#!/usr/bin/Rscript --vanilla

args <- commandArgs( TRUE )
if ( length( args ) < 4 || length( args ) %% 2 != 0 )
    stop( "Usage: plot_energy.R pdffile title {legend csvfile}..." )
 
# The fitness of the original variant

original <- NA

# Loop through all CSV files, collecting data points as well as X and Y ranges.

xlim <- c( 0, 0 )
ylim <- c( 0, 0 )
original <- 0
fig <- list()
for ( i in 2:( length(args) / 2 ) ) {
    name <- args[ i*2 - 1 ]
    csvfile <- args[ i*2 ]
    cat( paste( "reading", name, "...\n" ) )
    csv <- read.csv( csvfile )
    cat( paste( "processing", name, "...\n" ) )

    # Get all reported energy values. We may have to filter these later

    if ( "fitness" %in% names( csv ) ) {
      fitness <- csv[ ,"fitness" ]
      energy <- (1/fitness) - 1
    } else {
      stop( paste( "Cannot process as energy", csvfile ) )
    }

    # Store the fitness and energy of the original variant

    if ( ( "variant" %in% names( csv ) ) && ( "original" %in% csv$variant ) ) {
        original_energy <- energy[ csv$variant == "original" ][ 1 ]
	original <- 0
    } else {
        original_energy <- energy[ 1 ]
        original <- 0
    }

    # Collect the fitness data into X,Y datapoints. Because of differences in
    # the way the data files for different searches have been defined, we have
    # different algorithms for collecting data points.

    if ( "time" %in% names( csv ) ) {
        # Data is from the original GOA experiments. These files may combine
        # data from the search (what we want) with wall measurements from the
        # top search variants. The search did not measure wall time, so we only
        # want data from rows that do not have a time value.

        tmp <- data.frame(
            x = csv$variant[ is.na( csv$time ) ],
            y = fitness[ is.na( csv$time ) ]
        )
    # } else if ( ( "generation" %in% names( csv ) ) &&
    #             ( max( csv$generation ) > min( csv$generation ) ) ) {
    #     # Generational search. Find the max entry in each generation.

    #     tmp <- data.frame(
    #         x = rep( NA, max( csv$generation ) + 1 ),
    #         y = rep( NA, max( csv$generation ) + 1 )
    #     )
    #     for ( j in unique( csv$generation ) ) {
    #         tmp$x[ j + 1 ] <- max( which( csv$generation == j ) )
    #         tmp$y[ j + 1 ] <- max( csv$fitness[ csv$generation == j ] )
    #     }
    } else {
        # For all other data files, we assume one fitness value per variant, in
        # the order they were evaluated. Collect only the data points that
        # represent an increase in the best fitness seen.
        #
        # Note that this algorithm is the only one guaranteed to monotonically
        # increase.

        tmp <- data.frame( x = 1, y = ( 1 - ( energy[ 1 ] / original_energy ) ) * 100 )
        best <- ( 1 - ( energy[ 1 ] / original_energy ) ) * 100
        for ( i in 2:length( energy ) ) {
	    cur <- ( 1 - ( energy[ i ] / original_energy ) ) * 100
            if ( cur > best ) {
                tmp <- rbind( tmp, c( i, cur ) )
                best <- cur
            }
        }

        # Don't forget the last data point, since it likely doesn't happen to
        # have the maximum fitness seen.

        if ( tmp$x[ length( tmp$x ) ] < length( energy ) )
            tmp <- rbind( tmp, c( length( energy ), best ) )
    }

    fig[[ name ]] <- tmp
    xlim <- range( xlim, fig[[ name ]]$x )
}

col <- rainbow( length( fig ), start = 0.55, end = 0.1 )

## Plot the fitness / improvement for each data set in turn.

max_improvement <- 0
for ( i in 1:length( fig ) ) {
    name <- names( fig )[ i ]
    cur_max <- max( fig[[ name ]]$y )
    if ( cur_max > max_improvement )
        max_improvement <- cur_max
}
ylim <- c( 0, max_improvement )

pdf( args[ 1 ] )
plot( NA,
    xlim = xlim,
    ylim = ylim,
    xlab = "fitness evaluations",
    ylab = "energy improvement (%)",
    main = args[ 2 ]
)

for ( i in 1:length( fig ) ) {
    name <- names( fig )[ i ]
    lines( fig[[ name ]], col = col[ i ], lwd = 2, type = "s" )
}


## Legend code
## points( 0, 0, cex = 1.5 )
## col <- c( "black", col )
## legend <- c( "original", names( fig ) )
## lty <- c( 0, rep( 1, length( fig ) ) )
## lwd <- c( 1, rep( 2, length( fig ) ) )
## pch <- c( 1, rep( NA, length( fig ) ) )
## legend( "bottomleft", legend = legend, col = col, lwd = lwd, lty = lty, pch = pch, pt.cex = 1.5 )

dev.off()

