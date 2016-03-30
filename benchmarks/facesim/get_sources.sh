#!/bin/sh

CXX=/usr/bin/g++

CPPFLAGS="
-DPARSEC_VERSION=3.0-beta-20120904
-DENABLE_PTHREADS
"

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
    $CXX -o "$2" $src/*.s -pthread -xW -lm -L/usr/lib64 -L/usr/lib 
    exit $?
else
    # If we're getting the sources, we need to compile each source file into a
    # separate assembly file.

    if [ $# -lt 2 ] ; then
        echo "Usage: $0 parsec-dir facesim-inputs"
        exit
    fi

    prefix=$1/pkgs/apps/facesim

    mkdir -p src

    for f in `find ${prefix}/src/Benchmarks/facesim -name \*.cpp` \
             `find ${prefix}/src/Public_Library -name \*.cpp`
    do
        $CXX -S ${CXXFLAGS} ${LDFLAGS} ${CPPFLAGS} \
            -I${prefix}/src/TaskQ/include \
            -DUSE_ALAMERE_TASKQ -DNDEBUG -w \
            -o src/`basename $f .cpp`.s \
            $f \
        || exit $?
    done

    $CXX -S ${CXXFLAGS} ${LDFLAGS} ${CPPFLAGS} \
        -DTASKQ_DIST_FIXED \
        -o src/taskQDistCommon.s \
        ${prefix}/src/TaskQ/lib/taskQDistCommon.c \
    || exit $?

    mkdir -p inputs/native inputs/large
    tmp=`mktemp -d --tmpdir=.`
    tar xf "$2" -C $tmp
    pushd inputs/native
    tar xf `find ../../$tmp -name \*native\*`
    popd
    pushd inputs/large
    tar xf `find ../../$tmp -name \*large\*`
    popd
    rm -rf $tmp
fi

