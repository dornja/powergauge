#!/bin/bash

LIBAV="libav-src"
SRC=`dirname "$1"`
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

if [ ! -d "$DIR/$LIBAV" ] ; then
    echo "$LIBAV folder not found. Did you run get_sources.sh?"
    exit 1
fi

rsync -rlpgoD "$SRC/" "$DIR/$LIBAV"
cd "$LIBAV"
make -f "$DIR/Makefile" avconv &> /dev/null
