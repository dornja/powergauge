#!/bin/sh

if [ $# -lt 1 ] ; then
    echo "Usage: $0 parsec-dir"
    exit
fi

CXXFLAGS="-O3 -g"
CXXFLAGS="$CXXFLAGS -funroll-loops -fprefetch-loop-arrays"
CXXFLAGS="$CXXFLAGS -fpermissive -fno-exceptions"
CXXFLAGS="$CXXFLAGS -pthread -DENABLE_THREADS"

root=`dirname $0`
root=`cd "$root" ; pwd`

parsec="$1/pkgs/apps/swaptions/src"
if [ ! -d "$parsec" ] ; then
    echo "Parsec directory '$1' does not contain swaptions sources!"
    exit 1
fi

if [ ! -d src ] ; then
    mkdir src
fi

for fname in "$parsec"/*.c ; do
    src=src/`basename "$fname" .c`.s
    g++ -S $CXXFLAGS "$fname" -o "$src"
done
for fname in "$parsec"/*.cpp ; do
    src=src/`basename "$fname" .cpp`.s
    g++ -S $CXXFLAGS "$fname" -o "$src"
done

