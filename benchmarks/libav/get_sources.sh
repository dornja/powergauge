#!/bin/sh

if [ $# -lt 1 ] ; then
    echo "Usage: $0 libav-dir"
    echo "You can get libav with:"
    echo "git clone git://git.libav.org/libav.git libav"
    exit
fi

LIBAV="$1"

if [ ! -d src ] ; then
    mkdir src
fi

cp create_assembly.sh compile_yasm.sh "$LIBAV"
cd "$LIBAV"
echo "Running configure"
./configure

# avversion.h needs to be created before compilation
echo "Creating avversion.h"
echo '#define LIBAV_VERSION "'`./version.sh`'"' > avversion.h

echo "Compiling source"
./create_assembly.sh
./compile_yasm.sh
rm create_assembly.sh
rm compile_yasm
cd -

echo "Copying assembly files"
rsync -ar --include "*/" --include "*.s" --exclude "*" --prune-empty-dirs "$LIBAV/" src
