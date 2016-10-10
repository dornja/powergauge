#!/bin/bash

CC=/usr/bin/gcc

CFLAGS="
-std=gnu99
-O3
-funroll-loops
-fprefetch-loop-arrays
-pthread
"

LDFLAGS="
-static-libgcc
-Wl,--hash-style=both,--as-needed
-Wl,--export-dynamic
"

root=`dirname "$0"`
root=`cd "$root" ; pwd`

if [ `basename "$0"` = "compile.sh" ] ; then
    if [ $# -lt 2 ] ; then
        echo "Usage: $0 __SOURCE_NAME__ __EXE_NAME__"
        exit 2
    fi

    src=`dirname "$1"`
    $CC ${CFLAGS} ${CPPFLAGS} ${LDFLAGS} -o "$2" "$src"/*.s \
        "$root/src/libgmodule-2.0.a" \
        "$root/src/libxml2.a" \
        -ldl \
        "$root/src/libz.a" \
        "$root/src/libgobject-2.0.a" \
        "$root/src/libgthread-2.0.a" \
        -lpthread \
        "$root/src/libglib-2.0.a" \
        -lm \
        -lstdc++ \
        -pthread
else
    if [ $# -lt 1 ]; then
        echo "Usage: $0 parsec-dir"
        exit
    fi

    parsec=$1
    prefix=$parsec/pkgs/apps/vips

    # First, build the libraries this package depends on

    libs="libxml2 glib zlib"
    for lib in $libs ; do
        PATH="$1/bin:$PATH" "$1/bin/parsecmgmt" -p $lib -a clean || exit $?
        PATH="$1/bin:$PATH" "$1/bin/parsecmgmt" -p $lib -a build || exit $?
    done

    # Need to know the compilation platform to know which libraries to use

    for dir in "$parsec/pkgs/libs/glib/inst/"* ; do
        if [ "X$plat" != "X" ] ; then
            echo "multiple compilation platforms found!"
            echo "cannot auto-detect the platform to use"
            exit 2
        fi
        plat=`basename "$dir"`
        for lib in $libs ; do
            if [ ! -d "$parsec/pkgs/libs/$lib/inst/$plat" ] ; then
                plat=
            fi
        done
    done
    if [ "X$plat" == "X" ] ; then
        echo "could not auto-detect platform for libraries"
        exit 2
    fi

    # Copy the libraries we need so that we don't have to remember the
    # compilation platform later.

    mkdir -p src
    src=`pwd`/src

    cp "$parsec/pkgs/libs/libxml2/inst/$plat/lib/libxml2.a" src/ || exit $?
    cp "$parsec/pkgs/libs/glib/inst/$plat/lib/libgmodule-2.0.a" src/ || exit $?
    cp "$parsec/pkgs/libs/glib/inst/$plat/lib/libgobject-2.0.a" src/ || exit $?
    cp "$parsec/pkgs/libs/glib/inst/$plat/lib/libgthread-2.0.a" src/ || exit $?
    cp "$parsec/pkgs/libs/glib/inst/$plat/lib/libglib-2.0.a" src/ || exit $?
    cp "$parsec/pkgs/libs/zlib/inst/$plat/lib/libz.a" src/ || exit $?

    configdir=`mktemp -d`
    cleanup()
    {
        status=$?
        test -d $configdir && rm -rf $configdir
        exit $status
    }
    trap cleanup EXIT INT

    pushd $configdir
    $prefix/src/configure --disable-shared --disable-cxx --without-fftw3 --without-magick --without-liboil --without-lcms --without-OpenEXR --without-matio --without-pangoft2 --without-tiff --without-jpeg --without-zip --without-png --without-libexif --without-python --without-x --without-perl --without-v4l --without-cimg --enable-threads --prefix=/localtmp/jad5ju/parsec-3.0/pkgs/apps/vips/inst/amd64-linux.gcc || exit $?
    popd

    CPPFLAGS="
    -DHAVE_CONFIG_H
    -I$configdir
    -I$prefix/src/libvips/include
    -DG_DISABLE_CAST_CHECKS
    -I$parsec/pkgs/libs/libxml2/inst/$plat/include/libxml2
    -I$parsec/pkgs/libs/glib/inst/$plat/lib/glib-2.0/include
    -I$parsec/pkgs/libs/glib/inst/$plat/include/glib-2.0
    -DPARSEC_VERSION=3.0-beta-20150206
    "

    subdirs="
    libvips/acquire
    libvips/arithmetic
    libvips/boolean
    libvips/colour
    libvips/conversion
    libvips/convolution
    libvips/deprecated
    libvips/format
    libvips/freq_filt
    libvips/histograms_lut
    libvips/inplace
    libvips/iofuncs
    libvips/mask
    libvips/morphology
    libvips/mosaicing
    libvips/other
    libvips/relational
    libvips/resample
    libvips/video
    libvips/dummy.c
    tools/iofuncs/vips.c
    "
    pushd $prefix/src
    for subdir in $subdirs ; do
        for f in `find $subdir -name \*.c` ; do
            asm=`dirname $f | tr / _`_`basename $f .c`.s
            asm="$src"/`echo "$asm" | sed -e 's/^._//'`
            $CC $CFLAGS $CPPFLAGS -S $f -o $asm || exit $?
        done
    done
    popd

    mkdir -p inputs
    pushd inputs
        for input in "$prefix/inputs"/* ; do
            echo "unpacking input" `basename "$input"`
            tar xf "$input"
        done
    popd
fi

