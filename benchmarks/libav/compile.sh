#!/bin/sh

if [ $# -lt 1 ] ; then
    echo "Usage: $0 libav-dir"
    exit
fi

LIBAV="$1"

echo "Copying files"
rsync -ar src/ "$LIBAV"

echo "Compiling"
cp compilation_script.sh "$LIBAV"
cd "$LIBAV"
time ./compilation_script.sh
rm compilation_script.sh
cd - > /dev/null
