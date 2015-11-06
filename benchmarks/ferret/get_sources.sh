#!/bin/sh

# I combined get_sources.sh and compile.sh since they both use the same
# compilation flags. The compilation flags were determined by building the
# program in the parsec directory and dumping the make output to a file. This
# means the flags could potentially be different on different systems. However,
# a visual check suggests that they are likely to be system independent.

CC=cc
CXX=g++

CFLAGS="
-O3
-funroll-loops
-fprefetch-loop-arrays
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
    $CXX $CFLAGS $LDFLAGS \
        "$src/ferret-pthreads.s" \
        "$src/arena.s" \
        "$src/assign.s" \
        "$src/bench.s" \
        "$src/bitmap.s" \
        "$src/cass.s" \
        "$src/cass_dist.s" \
        "$src/cass_reg.s" \
        "$src/cuckoo_hash.s" \
        "$src/dataset.s" \
        "$src/dist.s" \
        "$src/emd.s" \
        "$src/env.s" \
        "$src/error.s" \
        "$src/hash.s" \
        "$src/hash_table.s" \
        "$src/heap.s" \
        "$src/import.s" \
        "$src/map.s" \
        "$src/matrix.s" \
        "$src/queue.s" \
        "$src/raw.s" \
        "$src/stat.s" \
        "$src/table.s" \
        "$src/timer.s" \
        "$src/topk.s" \
        "$src/tp.s" \
        "$src/tpool.s" \
        "$src/util.s" \
        "$src/local.s" \
        "$src/LSH.s" \
        "$src/LSH_query_batch.s" \
        "$src/LSH_query.s" \
        "$src/perturb.s" \
        "$src/recall.s" \
        "$src/image.s" \
        "$src/extract.s" \
        "$src/edge.s" \
        "$src/srm.s" \
        -o "$2" \
        -lrt -lm \
        "$root/src/libgsl.a" "$root/src/libgslcblas.a" "$root/src/libjpeg.a" \
        -lstdc++ -lpthread
    exit $?
else
    # If we're getting the sources, we need to compile each source file into a
    # separate assembly file.

    if [ $# -lt 1 ] ; then
        echo "Usage: $0 parsec-dir"
        exit
    fi

    parsec=$1
    prefix=$parsec/pkgs/apps/ferret

    # First, build the libraries this package depends on

    PATH="$1/bin:$PATH" "$1/bin/parsecmgmt" -p gsl -a clean
    PATH="$1/bin:$PATH" "$1/bin/parsecmgmt" -p gsl -a build
    PATH="$1/bin:$PATH" "$1/bin/parsecmgmt" -p libjpeg -a clean
    PATH="$1/bin:$PATH" "$1/bin/parsecmgmt" -p libjpeg -a build

    # Need to know the compilation platform to know which gsl and jpeg libraries
    # to use

    for dir in "$parsec/pkgs/libs/gsl/inst/"* ; do
        if [ "X$plat" != "X" ] ; then
            echo "multiple compilation platforms found!"
            echo "cannot auto-detect the platform to use"
            exit 2
        fi
        plat=`basename "$dir"`
        if [ ! -d "$parsec/pkgs/libs/libjpeg/inst/$plat/include" ] ; then
            plat=
        fi
    done

    CPPFLAGS="
    -I$parsec/pkgs/libs/gsl/inst/$plat/include
    -I$parsec/pkgs/libs/libjpeg/inst/$plat/include
    -I$prefix/src/include
    -DPARSEC_VERSION=3.0-beta-20120904
    "

    mkdir -p src

    for f in $prefix/src/src/*.c \
             $prefix/src/src/lsh/*.c \
             $prefix/src/image/*.c \
             $prefix/src/benchmark/ferret-pthreads.c
    do
        $CC -S $CPPFLAGS $CFLAGS $LDFLAGS \
            -c $f \
            -o src/`basename $f .c`.s \
            || exit $?
    done

    # Copy the libraries we need so that we don't have to remember the
    # compilation platform later.

    cp "$parsec/pkgs/libs/gsl/inst/$plat/lib/libgsl.a" src/
    cp "$parsec/pkgs/libs/gsl/inst/$plat/lib/libgslcblas.a" src/
    cp "$parsec/pkgs/libs/libjpeg/inst/$plat/lib/libjpeg.a" src/

    mkdir -p inputs
    pushd inputs
    for input in "$prefix/inputs"/* ; do
        output=`basename "$input" .tar | sed -e 's/_sim/_/'`
        mkdir -p "$output"
        pushd "$output"
        tar xf "$input"
        popd
    done
    popd
fi

