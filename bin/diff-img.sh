#!/bin/sh

DIR1="$1"
DIR2="$2"

FILES1=`cd $DIR1; find . -type f | sort`
FILES2=`cd $DIR2; find . -type f | sort`

if [ "x$FILES1" != "x$FILES2" ]; then
    exit 1
fi

for file in $FILES1; do
    fname=`basename "$file"`
    if diff "$DIR1/$fname" "$DIR2/$fname"; then
	echo "total error: 0"
	echo "avg error:   0"
	echo "max error:   0"
    else
	../../bin/diff-img --thresh 500000 "$DIR1/$fname" "$DIR2/$fname"
    fi
done
	    
