#!/bin/bash

# I combined get_sources.sh and compile.sh since they both use the same
# compilation flags. The compilation flags were determined by building the
# program in the parsec directory and dumping the make output to a file. This
# means the flags could potentially be different on different systems. However,
# a visual check suggests that they are likely to be system independent.

CXX=/usr/bin/g++

CXXFLAGS="
-O3
-funroll-loops
-fprefetch-loop-arrays
-fpermissive
-fno-exceptions
-fexceptions
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
    $CXX ${CXXFLAGS} ${LDFLAGS} -o "$2" \
        "$src/AnnealingFactor.s" \
        "$src/BodyGeometry.s" \
        "$src/BodyPose.s" \
        "$src/CameraModel.s" \
        "$src/CovarianceMatrix.s" \
        "$src/ImageMeasurements.s" \
        "$src/ImageProjection.s" \
        "$src/RandomGenerator.s" \
        "$src/TrackingModel.s" \
        "$src/main.s" \
        "$src/TrackingModelPthread.s" \
        "$src/AsyncIO.s" \
        -L/usr/lib64 -L/usr/lib \
        "$src/FlexImage.s" \
        "$src/FlexIO.s" \
        -lm \
        "$src/Thread.s" \
        "$src/ThreadGroup.s" \
        "$src/WorkerGroup.s" \
        "$src/Mutex.s" \
        "$src/Condition.s" \
        "$src/Barrier.s" \
        "$src/RWLock.s" \
        -lpthread
    exit $?
else
    # If we're getting the sources, we need to compile each source file into a
    # separate assembly file.

    if [ $# -lt 1 ] ; then
        echo "Usage: $0 parsec-dir"
        exit
    fi

    # First, build the package through parsec so that the config.h file is
    # available.

    PATH="$1/bin:$PATH" "$1/bin/parsecmgmt" -p bodytrack -a clean
    PATH="$1/bin:$PATH" "$1/bin/parsecmgmt" -p bodytrack -a build

    prefix=$1/pkgs/apps/bodytrack

    # Need to get the directory where parsec built this package for config.h

    for dir in $prefix/obj/* ; do
        if [ "X$objdir" != "X" ] ; then
            echo "multiple object directories found!~"
            echo "cannot auto-detect the object directory to use"
            exit 2
        fi
        objdir=$dir
    done

    cppflags() {
        echo "
        -DHAVE_CONFIG_H
        -I`pwd | sed -e 's,obj/[^/]*,src,'`
        -I$objdir
        -DPARSEC_VERSION=3.0-beta-20120904
        "
    }

    mkdir -p src

    # Compile the FlexImage library

    for f in FlexImage FlexIO ; do
        $CXX -S `cppflags` ${CXXFLAGS} ${LDFLAGS} -fPIC -DPIC \
            -c $prefix/src/FlexImageLib/$f.cpp -o src/$f.s \
            || exit $?
    done

    # Compile the threading library

    for f in Thread ThreadGroup WorkerGroup Mutex Condition Barrier RWLock ; do
        $CXX -S `cppflags` -pthread ${CXXFLAGS} ${LDFLAGS} -fPIC -DPIC \
            -c $prefix/src/TrackingBenchmark/threads/$f.cpp -o src/$f.s \
            || exit $?
    done

    # Compile the benchmark itself

    for f in AnnealingFactor BodyGeometry BodyPose CameraModel CovarianceMatrix ImageMeasurements ImageProjection RandomGenerator TrackingModel main TrackingModelPthread AsyncIO ; do
        $CXX -S `cppflags` -I$prefix/src/FlexImageLib ${CXXFLAGS} ${LDFLAGS} \
            -c $prefix/src/TrackingBenchmark/$f.cpp -o src/$f.s \
            || exit $?
    done

    # Also copy the inputs from the parsec directory into the local directory

    mkdir -p inputs
    pushd inputs
    for input in "$prefix/inputs"/* ; do
        echo "unpacking input" `basename "$input"`
        tar xf "$input"
    done
    popd
fi

