#!/bin/sh

CXX=g++

CPPFLAGS="
-DPARSEC_VERSION=3.0-beta-20120904
-DENABLE_THREADS
-DNCO=4
"

CFLAGS="
-O3
-g
-funroll-loops
-fprefetch-loop-arrays
-fpermissive
-fno-exceptions
-pthread
"

LDFLAGS="
-static-libgcc
-Wl,--hash-style=both,--as-needed
"

if [ `basename "$0"` = "compile.sh" ] ; then
    if [ $# -lt 2 ] ; then
        echo "Usage: $0 __SOURCE_NAME__ __EXE_NAME__"
        exit 2
    fi

    src=`dirname "$1"`
    $CXX ${CFLAGS} ${LDFLAGS} ${CPPFLAGS} "$src"/blackscholes.s -o "$2"
    exit $?
else
    if [ `basename "$0"` = "compile-afl.sh" ] ; then
        if [ $# -lt 2 ] ; then
            echo "Usage: $0 parsec-dir __EXE_NAME__"
            exit
        fi
        CXX="$AFL_PATH/afl-g++"
        if [ ! -x "$CXX" ] ; then
            echo "ERROR: Please set AFL_PATH."
            exit 2
        fi

    elif [ $# -lt 1 ] ; then
        echo "Usage: $0 parsec-dir"
        exit
    fi

    prefix=$1/pkgs/apps/blackscholes
    tmpcpp=`mktemp --suffix .cpp`

    cleanup()
    {
        test -r $tmpcpp && rm $tmpcpp
    }

    trap cleanup EXIT

    /usr/bin/m4 $prefix/src/c.m4.pthreads $prefix/src/blackscholes.c > $tmpcpp \
        || exit $?

    if [ `basename "$0"` = "compile-afl.sh" ] ; then
        target=$2
        $CXX ${CFLAGS} ${LDFLAGS} ${CPPFLAGS} $tmpcpp -o "$target"
        exit $?
    else
        mkdir -p src
        $CXX -S ${CFLAGS} ${LDFLAGS} ${CPPFLAGS} $tmpcpp -o src/blackscholes.s \
            || exit $?

        mkdir -p inputs
        cd inputs
        for input in "$prefix/inputs"/* ; do
            echo "unpacking input" `basename "$input"`
            tar xf "$input"
        done
    fi
fi

