#!/bin/sh

CC=gcc

CPPFLAGS="
-I.
-DPARSEC_VERSION=3.0-beta-20120904
-DHAVE_MALLOC_H
-DARCH_X86_64
-DSYS_LINUX
-DHAVE_PTHREAD
"

CFLAGS="
-ffast-math
-Wall
-O3
-funroll-loops
-fprefetch-loop-arrays
-fomit-frame-pointer
-s
"

if [ `basename "$0"` = "compile.sh" ] ; then
    if [ $# -lt 2 ] ; then
        echo "Usage: $0 __SOURCE_NAME__ __EXE_NAME__"
        exit 2
    fi

    src=`dirname "$1"`
    $CC -o "$2" "$src"/*.s -lm -lpthread -s
    exit $?
else
    if [ $# -lt 1 ] ; then
        echo "Usage: $0 parsec-dir"
        exit
    fi

    prefix=$1/pkgs/apps/x264
    mkdir -p src

    cwd=`pwd`
    tmp=`mktemp -d --tmpdir=.`
    cleanup()
    {
        status="$?"
        cd "$cwd"
        rm -rf "$tmp"
        exit $status
    }
    trap cleanup EXIT INT

    rsync -av "$prefix/src/" "$tmp"

    cd "$tmp"
    patch -p5 < "$cwd/double-free.patch" || exit $?
    ./configure || exit $?

    srcs="
    x264.c
    matroska.c
    muxers.c
    common/mc.c
    common/predict.c
    common/pixel.c
    common/macroblock.c
    common/frame.c
    common/dct.c
    common/cpu.c
    common/cabac.c
    common/common.c
    common/mdate.c
    common/set.c
    common/quant.c
    common/vlc.c
    encoder/analyse.c
    encoder/me.c
    encoder/ratecontrol.c
    encoder/set.c
    encoder/macroblock.c
    encoder/cabac.c
    encoder/cavlc.c
    encoder/encoder.c
    "
    for f in $srcs
    do
        obj=`dirname $f | tr / _`_`basename $f .c`.s
        obj="$cwd"/src/`echo "$obj" | sed -e 's/^._//'`
        $CC ${CFLAGS} ${CPPFLAGS} -S -o $obj $f || exit $?
    done
    cd "$cwd"

    mkdir -p inputs
    cd inputs
    for input in "$prefix/inputs"/* ; do
        echo "unpacking input" `basename "$input"`
        tar xf "$input"
    done
fi

