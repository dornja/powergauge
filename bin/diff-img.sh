#!/bin/sh

DIR1="$1"
DIR2="$2"

for file in `find "$DIR1" -type f`; do
    fname=`basename "$file"`
    if diff "$DIR1/$fname" "$DIR2/$fname"; then
	echo "total error: 0"
	echo "avg error:   0"
	echo "max error:   0"
    else
	../../bin/diff-img --thresh 500000 "$DIR1/$fname" "$DIR2/$fname"
    fi
done
	    
