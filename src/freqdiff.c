#include <math.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

struct entry {
    size_t keylen;
    double value;
};

struct entry parseLine( char * line, size_t n ) {
    struct entry entry;
    char * end;

    end = memchr( line, '(', n );
    if ( end == NULL || line + n <= end ) {
        entry.value = NAN;
    } else {
        entry.keylen = end - line;

        entry.value = strtod( line + entry.keylen + 1, &end );
        if ( end < line + n - 2 || line + n <= end || *end != ')' )
            entry.value = NAN;
    }
    return entry;
}

int
main( int argc, char ** argv )
{
    struct entry e1, e2;
    FILE *fh1, *fh2;
    ssize_t n1, n2;
    size_t len1, len2, count;
    char *line1, *line2;
    double delta, error;

    if ( argc < 3 ) {
        printf( "Usage: %s file1 file2\n", argv[ 0 ] );
        return 0;
    }

    fh1 = fopen( argv[ 1 ], "rb" );
    if ( !fh1 ) {
        perror( argv[ 1 ] );
        return 1;
    }

    fh2 = fopen( argv[ 2 ], "rb" );
    if ( !fh2 ) {
        perror( argv[ 2 ] );
        fclose( fh1 );
        return 1;
    }

    error = 0.0;
    count = 0;
    len1 = len2 = 0;
    line1 = line2 = NULL;
    while ( 1 ) {
        n1 = getline( &line1, &len1, fh1 );
        n2 = getline( &line2, &len2, fh2 );
        if ( n1 == -1 || n2 == -1 )
            break;
        e1 = parseLine( line1, n1 );
        e2 = parseLine( line2, n2 );
        if ( isnan( e1.value ) || isnan( e2.value ) ) {
            error = INFINITY;
            break;
        }
        if ( e1.keylen != e2.keylen || strncmp( line1, line2, e1.keylen ) != 0 ) {
            error = INFINITY;
            break;
        }
        delta = e2.value - e1.value;
        error += delta * delta;
        count += 1;
    }
    if ( n1 != -1 || n2 != -1 )
        error = INFINITY;

    printf( "%g\n", sqrt( error / count ) );

    fclose( fh2 );
    fclose( fh1 );

    return 0;
}

