#!/usr/bin/Rscript --vanilla

args <- commandArgs( TRUE )
if ( length( args ) < 4 || length( args ) %% 2 != 0 )
    stop( "Usage: plot_fitness.R pdffile title {legend csvfile}..." )
 
original <- NA

xlim <- c( 0, 0 )
ylim <- c( 0, 0 )
fig <- list()
for ( i in 2:( length(args) / 2 ) ) {
    name <- args[ i*2 - 1 ]
    csvfile <- args[ i*2 ]
    csv <- read.csv( csvfile )
    if ( "model" %in% names( csv ) ) {
        fig[[ name ]] <- data.frame(
            x = csv$variant, y1 = 1 / csv$model, y2 = NA
        )
    } else if ( "generation" %in% names( csv ) ) {
	tmp <- data.frame(
            x = rep( NA, max( csv$generation ) + 1 ),
            y1 = rep( NA, max( csv$generation ) + 1 ),
            y2 = rep( NA, max( csv$generation ) + 1 )
        )
        for ( j in unique( csv$generation ) ) {
            tmp$x[ j + 1 ] <- max( which( csv$generation == j ) )
            tmp$y1[ j + 1 ] <- max( csv$fitness[ csv$generation == j ] )
            tmp$y2[ j + 1 ] <- mean( csv$fitness[ csv$generation == j ] )
        }
        original <- csv$fitness[ csv$variant == "original" ]
        fig[[ name ]] <- tmp
    } else if ( "best" %in% names( csv ) ) {
        fig[[ name ]] <- data.frame(
            x = (1:nrow(csv)) * 2, y1 = csv$best, y2 = csv$average
        )
    } else {
        stop( paste( "do not know how to process", csvfile ) )
    }
    xlim <- range( xlim, fig[[ name ]]$x )
    ylim <- range( ylim, fig[[ name ]]$y1 )
}

col <- rainbow( length( fig ), start = 0.55, end = 0.1 )

pdf( args[ 1 ] )
plot( NA,
    xlim = xlim,
    ylim = if ( is.na( original ) ) ylim else ylim / original,
    xlab = "fitness evaluations",
    ylab = if ( is.na( original ) ) "fitness" else "improvement",
    main = args[ 2 ]
)
for ( i in 1:length( fig ) ) {
    name <- names( fig )[ i ]
    if ( is.na( original ) )
        lines( fig[[ name ]]$x, fig[[ name ]]$y1, col = col[ i ], lwd = 2 )
    else
        lines( fig[[ name ]]$x, fig[[ name ]]$y1 / original, col = col[ i ], lwd = 2 )
}
if ( ! is.na( original ) ) {
    points( 0, 1, cex = 1.5 )
    col <- c( "black", col )
    legend <- c( "original", names( fig ) )
    lty <- c( 0, rep( 1, length( fig ) ) )
    lwd <- c( 1, rep( 2, length( fig ) ) )
    pch <- c( 1, rep( NA, length( fig ) ) )
} else {
    legend <- names( fig )
    lty <- 1
    lwd <- 2
    pch <- NA
}
legend( "bottomright", legend = legend, col = col, lwd = lwd, lty = lty, pch = pch, pt.cex = 1.5 )
dev.off()

