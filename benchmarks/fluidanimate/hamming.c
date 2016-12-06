#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

#define CHUNK_SIZE 4096

unsigned char
hamming( unsigned char x, unsigned char y )
{
    return __builtin_popcount( x ^ y );
}

int
main( int argc, char ** argv )
{
    FILE *fh1, *fh2;
    unsigned char *chunk1, *chunk2;
    unsigned i, bits;
    size_t n, n1, n2, l1, l2;
    unsigned long distance;

    if ( argc < 3 ) {
        printf( "Usage: %s file1 file2\n", argv[ 0 ] );
        return 0;
    }
    bits = hamming( 0, -1 );

    fh1 = fopen( argv[ 1 ], "rb" );
    if ( ! fh1 ) {
        perror( argv[ 1 ] );
        return 1;
    }
    fseek( fh1, 0, SEEK_END );
    l1 = ftell( fh1 );
    fseek( fh1, 0, SEEK_SET );

    fh2 = fopen( argv[ 2 ], "rb" );
    if ( ! fh2 ) {
        perror( argv[ 2 ] );
        fclose( fh1 );
        return 1;
    }
    fseek( fh2, 0, SEEK_END );
    l2 = ftell( fh2 );
    fseek( fh2, 0, SEEK_SET );

    chunk1 = malloc( CHUNK_SIZE );
    chunk2 = malloc( CHUNK_SIZE );
    distance = 0;
    n1 = n2 = 1;
    while ( n1 > 0 && n2 > 0 && n1 == n2 ) {
        n1 = fread( chunk1, 1, CHUNK_SIZE, fh1 );
        n2 = fread( chunk2, 1, CHUNK_SIZE, fh2 );
        if ( n1 == 0 || n2 == 0 )
            break;
        n = n1 < n2 ? n1 : n2;
        for ( i = 0; i < n; ++i )
            distance += hamming( chunk1[ i ], chunk2[ i ] );
        l1 -= n;
        l2 -= n;
        if ( n1 != n2 ) {
            distance += ( l1 + l2 ) * bits;
            break;
        }
    }

    free( chunk2 );
    free( chunk1 );
    fclose( fh2 );
    fclose( fh1 );

    printf( "%lu\n", distance );
    return 0;
}

