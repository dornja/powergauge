#!/usr/bin/Rscript --vanilla

args <- commandArgs( TRUE )
if ( length( args ) < 4 || length( args ) %% 2 != 0 )
    stop( "Usage: plot_fitness.R pdffile title {legend csvfile}..." )
 
# The fitness of the original variant

original <- NA

# Loop through all CSV files, collecting data points as well as X and Y ranges.

xlim <- c( 0, 0 )
ylim <- c( 0, 0 )
fig <- list()
for ( i in 2:( length(args) / 2 ) ) {
    name <- args[ i*2 - 1 ]
    csvfile <- args[ i*2 ]
    csv <- read.csv( csvfile )
    cat( paste( "processing", name, "...\n" ) )

    # Get all reported fitness values. We may have to filter these later

    if ( "model" %in% names( csv ) ) {
      fitness <- 1 / csv[ ,"model" ]
    } else if ( "fitness" %in% names( csv ) ) {
      fitness <- csv[ ,"fitness" ]
    } else if ( "best" %in% names( csv ) ) {
      fitness <- csv[ ,"best" ]
    } else {
        stop( paste( "do not know how to process", csvfile ) )
    }

    # If this CSV contains the original variant, store its fitness value

    if ( ( "variant" %in% names( csv ) ) && ( "original" %in% csv$variant ) )
        original <- fitness[ csv$variant == "original" ][ 1 ]

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
    } else if ( ( "generation" %in% names( csv ) ) &&
                ( max( csv$generation ) > min( csv$generation ) ) ) {
        # Generational search. Find the max entry in each generation.

        tmp <- data.frame(
            x = rep( NA, max( csv$generation ) + 1 ),
            y = rep( NA, max( csv$generation ) + 1 )
        )
        for ( j in unique( csv$generation ) ) {
            tmp$x[ j + 1 ] <- max( which( csv$generation == j ) )
            tmp$y[ j + 1 ] <- max( csv$fitness[ csv$generation == j ] )
        }
    } else {
        # For all other data files, we assume one fitness value per variant, in
        # the order they were evaluated. Collect only the data points that
        # represent an increase in the best fitness seen.
        #
        # Note that this algorithm is the only one guaranteed to monotonically
        # increase.

        tmp <- data.frame( x = 1, y = fitness[ 1 ] )
        best <- fitness[ 1 ]
        for ( i in 2:length( fitness ) ) {
            if ( fitness[ i ] > best ) {
                tmp <- rbind( tmp, c( i, fitness[ i ] ) )
                best <- fitness[ i ]
            }
        }

        # Don't forget the last data point, since it likely doesn't happen to
        # have the maximum fitness seen.

        if ( tmp$x[ length( tmp$x ) ] < length( fitness ) )
            tmp <- rbind( tmp, c( length( fitness ), best ) )
    }

    fig[[ name ]] <- tmp
    xlim <- range( xlim, fig[[ name ]]$x )
    ylim <- range( ylim, fig[[ name ]]$y )
}

# If we know the original fitness, rescale to show improvement instead of raw
# fitness values. Also sets the minimum of the fitness axis to 1 (100%)

if ( !is.na( original ) ) {
    ylim <- c(1, max(ylim / original))
    for ( name in names( fig ) )
        fig[[ name ]]$y <- fig[[ name ]]$y / original
}

col <- rainbow( length( fig ), start = 0.55, end = 0.1 )

# Plot the fitness / improvement for each data set in turn.

pdf( args[ 1 ] )
plot( NA,
    xlim = xlim,
    ylim = ylim,
    xlab = "fitness evaluations",
    ylab = if ( is.na( original ) ) "fitness" else "improvement",
    main = args[ 2 ]
)
for ( i in 1:length( fig ) ) {
    name <- names( fig )[ i ]
    lines( fig[[ name ]], col = col[ i ], lwd = 2, type = "s" )
}

if ( ! is.na( original ) ) {
    # If we know the original fitness, plot it and add it to the legend.

    points( 0, 1, cex = 1.5 )
    col <- c( "black", col )
    legend <- c( "original", names( fig ) )
    lty <- c( 0, rep( 1, length( fig ) ) )
    lwd <- c( 1, rep( 2, length( fig ) ) )
    pch <- c( 1, rep( NA, length( fig ) ) )
} else {
    # Otherwise, just include the names of the data sets.

    legend <- names( fig )
    lty <- 1
    lwd <- 2
    pch <- NA
}
legend( "bottomright", legend = legend, col = col, lwd = lwd, lty = lty, pch = pch, pt.cex = 1.5 )
dev.off()

