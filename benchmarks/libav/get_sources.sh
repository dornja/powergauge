#!/bin/bash

LIBAV="libav-src"
LIBAV_VERSION="v12_dev0-2969-ga8cbe5a"
SRC="src"
CURDIR=`pwd`


if [ $# -ne 0 ] ; then
    echo "Usage: $0"
    echo "Automatically clones the libav git repository and checks out version $LIBAV_VERSION. The libav repository is in the $LIBAV directory and the compiled assembly files for genprog are in the $SRC directory"
    exit
fi

if [ ! -d "$LIBAV" ] ; then
    git clone git://git.libav.org/libav.git "$LIBAV"
    cd "$LIBAV"
    git checkout "$LIBAV_VERSION"
    cd - > /dev/null
fi

cd "$LIBAV"
echo "Running configure"
./configure

# avversion.h needs to be created before compilation
echo "Creating avversion.h"
echo '#define LIBAV_VERSION "'`./version.sh`'"' > avversion.h

if [ ! -d "$SRC" ] ; then
    mkdir "$SRC"
fi

echo -n "Compiling source  "
i=1
sp="/-\|"
while read CMD; do
    eval $CMD || eval 'echo "" ; exit 1'
    # Progress spinner
    printf "\b${sp:i++%${#sp}:1}"
done < "$CURDIR"/create_assembly.sh
echo ""
cd "$CURDIR" > /dev/null

echo "Copying assembly files"
rsync -a --include "*/" --include "*.s" --exclude "*" --prune-empty-dirs "$LIBAV/" "$SRC"
rsync -a --delete "$LIBAV/" "$SRC" --exclude "*.c"

mkdir inputs
cd inputs
wget https://media.xiph.org/video/derf/y4m/deadline_cif.y4m
wget https://media.xiph.org/video/derf/y4m/bus_cif_15fps.y4m
