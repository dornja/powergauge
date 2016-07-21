#!/bin/sh

LIBAV="libav-src"
SRC="src"
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

if [ $# -ne 0 ] ; then
    echo "$0 takes no arguments. Assumes that get_sources.sh has set up the $LIBAV and $SRC directories"
    exit
fi

if [ ! -d "$DIR/$LIBAV" ] ; then
    echo "$LIBAV folder not found. Did you run get_sources.sh?"
    exit 1
fi

if [ ! -d "$DIR/$SRC" ] ; then
    echo "$SRC folder not found. Did you run get_sources.sh?"
    exit 1
fi

rsync -ar "$DIR/$SRC/" "$DIR/$LIBAV"
cd "$LIBAV" &> /dev/null
make -f "$DIR/Makefile" avconv avplay avprobe &> /dev/null
