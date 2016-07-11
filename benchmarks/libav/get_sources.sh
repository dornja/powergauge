#!/bin/sh

LIBAV="libav-src"
LIBAV_VERSION="v12_dev0-2969-ga8cbe5a"
SRC="src"

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


cp create_assembly.sh "$LIBAV"
cd "$LIBAV"
echo "Running configure"
./configure

# avversion.h needs to be created before compilation
echo "Creating avversion.h"
echo '#define LIBAV_VERSION "'`./version.sh`'"' > avversion.h

if [ ! -d "$SRC" ] ; then
    mkdir "$SRC"
fi

echo "Compiling source"
./create_assembly.sh
rm create_assembly.sh
cd -

echo "Copying assembly files"
rsync -ar --include "*/" --include "*.s" --exclude "*" --prune-empty-dirs "$LIBAV/" src
