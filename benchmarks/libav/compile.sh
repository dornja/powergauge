#!/bin/sh

LIBAV="libav-src"
SRC="src"
CURDIR=`pwd`

if [ $# -ne 0 ] ; then
    echo "$0 takes no arguments. Assumes that get_sources.sh has set up the $LIBAV and $SRC directories"
    exit
fi

if [ ! -d "$LIBAV" ] ; then
    echo "$LIBAV folder not found. Did you run get_sources.sh?"
    exit 1
fi

if [ ! -d "$SRC" ] ; then
    echo "$SRC folder not found. Did you run get_sources.sh?"
    exit 1
fi

echo "Copying files"
rsync -ar "$SRC/" "$LIBAV"
echo "Compiling"
cd "$LIBAV"
pwd
make -f "$CURDIR/Makefile" avconv avplay avprobe
cd "$CURDIR" > /dev/null
