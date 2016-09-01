#include <stdio.h>
#include <sched.h>

int
main( int argc, char ** argv ) {
    int cpu = sched_getcpu();
    if ( cpu == -1 ) {
        perror( "unable to determine CPU:" );
        return 1;
    }

    printf( "%d\n", cpu );
    return 0;
}

