#!/bin/sh

# I combined get_sources.sh and compile.sh since they both use the same
# compilation flags. The compilation flags were determined by building the
# program in the parsec directory and dumping the make output to a file. This
# means the flags could potentially be different on different systems. However,
# a visual check suggests that they are likely to be system independent.

CXX=g++

CFLAGS="
-O3
-funroll-loops
-fprefetch-loop-arrays
-fpermissive
-fno-exceptions
-DPARSEC_VERSION=3.0-beta-20120904
-D_GNU_SOURCE
-D__XOPEN_SOURCE=600
"

LDFLAGS="
-static-libgcc
-Wl,--hash-style=both,--as-needed
"

root=`dirname "$0"`
root=`cd "$root" ; pwd`

if [ `basename "$0"` = "compile.sh" ] ; then
    # If we're compiling, just dump all the assembly files into a single
    # compile-and-link command

    if [ $# -lt 2 ] ; then
        echo "Usage: $0 __SOURCE_NAME__ __EXE_NAME__"
        exit 2
    fi

    src=`dirname "$1"`
    $CXX ${CFLAGS} ${LDFLAGS} -pthread \
        "$src"/pthreads.s \
        "$src"/cellpool.s \
        "$src"/parsec_barrier.s \
        -o "$2"
    exit $?
else
    # If we're getting the sources, we need to compile each source file into a
    # separate assembly file.

    if [ $# -lt 1 ] ; then
        echo "Usage: $0 parsec-dir"
        exit
    fi

    prefix=$1/pkgs/apps/fluidanimate

    mkdir -p src
    for f in pthreads cellpool parsec_barrier ; do
        $CXX -S ${CFLAGS} ${LDFLAGS} -pthread -c $prefix/src/$f.cpp -o src/$f.s
    done

    # Also copy the inputs from the parsec directory into the local directory

    mkdir -p inputs
    cd inputs
    for input in "$prefix/inputs"/* ; do
        echo "unpacking input" `basename "$input"`
        tar xf "$input"
    done
fi
