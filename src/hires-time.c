#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <time.h>
#include <unistd.h>

double
hirestime()
{
    struct timespec t;
    if ( clock_gettime( CLOCK_MONOTONIC, &t ) != 0 ) {
        perror( "cannot read clock\n" );
        exit( 127 );
    }
    return t.tv_sec + t.tv_nsec * 1e-9;
}

int
main( int argc, char ** argv )
{
    pid_t pid;
    FILE * fh;
    double start, stop;
    int status;

    if ( argc < 3 ) {
        fprintf( stderr, "Usage: %s filename command...\n", argv[ 0 ] );
        return 127;
    }

    fh = fopen( argv[ 1 ], "w" );
    if ( ! fh ) {
        perror( NULL );
        return 127;
    }

    start = hirestime();

    pid = fork();
    if ( pid == 0 ) {
        argv += 2;
        if ( execvp( *argv, argv ) ) {
            perror( NULL );
            return 127;
        }
    }

    status = 127;
    if ( waitpid( pid, &status, 0 ) != pid )
        perror( NULL );

    stop = hirestime();
    fprintf( fh, "%g\n", stop - start );
    fclose( fh );

    if ( WIFEXITED( status ) )
        return WEXITSTATUS( status );
    if ( WIFSIGNALED( status ) ) {
        fprintf( stderr, "Killed (%d)\n", WTERMSIG( status ) );
        return WTERMSIG( status );
    }
    return 127;
}

