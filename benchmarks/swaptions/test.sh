#!/bin/sh

# Usage: test.sh __EXE_NAME__ size __FITNESS_FILE__

#echo $0 "$@" >> testlog

exe=$1
size=$2
fitnessfile=$3

root=`dirname "$0"`
root=`cd "$root" ; pwd`
root=`dirname "$root"`
root=`dirname "$root"`

case "$exe" in
    */*) : ;;
    *)   exe=./$exe ;;
esac

case $size in
    test)   args="-ns   1 -sm       5 -nt 1" ;;
    tiny)   args="-ns   3 -sm      50 -nt 1" ;;
    small)  args="-ns  16 -sm   10000 -nt 1" ;;
    medium) args="-ns  32 -sm   20000 -nt 1" ;;
    large)  args="-ns  64 -sm   40000 -nt 1" ;;
    huge)   args="-ns 128 -sm 1000000 -nt 1" ;;
esac
golden="outputs/$size.txt"

outfile=`mktemp`
tmpfit=`mktemp`

cleanup() {
    test -f "$outfile" && rm -f "$outfile"
    test -f "$tmpfit"  && rm -f "$tmpfit"
}

check_status() {
    if [ $1 -ne 0 ] ; then
        cleanup
        echo 0 > "$fitnessfile"
        exit $1
    fi
}

"$root"/bin/est-energy.py -o "$tmpfit" -- "$exe" $args 2> "$outfile" > /dev/null
check_status $?

if [ ! -r $golden ] ; then
    cp $outfile $golden
fi

diff $outfile $golden > /dev/null 2>&1
check_status $?

awk '{print 1/$1}' < "$tmpfit" > "$fitnessfile"
cleanup

# exit 1 so that genprog doesn't find a "repair"
exit 1
