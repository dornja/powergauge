#!/bin/sh

if [ $# -lt 1 ] ; then
    echo "Usage: $0 libav-dir"
    exit
fi

LIBAV="$1"
CURDIR=`pwd`

echo "Copying files"
rsync -ar src/ "$LIBAV"
echo "Compiling"
cd "$LIBAV"
pwd
make -f "$CURDIR/Makefile" avconv avplay avprobe
cd "$CURDIR" > /dev/null
