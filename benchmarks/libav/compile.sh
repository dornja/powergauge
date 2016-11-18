#!/bin/bash

if [ $# -lt 2 ] ; then
    echo "Usage: $0 __SOURCE_NAME__ __EXE_NAME__"
    exit 1
fi

root=`dirname "$0"`
root=`cd "$root" ; pwd`

src=`dirname "$1"`
exe=$2

tmpdir=build

rsync -a --checksum --no-times "$src/" "$tmpdir"
chmod -R u+w $tmpdir

make -C "$tmpdir" -f "$root/Makefile" avconv > /dev/null 2>&1 || exit $?
cp $tmpdir/avconv $exe
