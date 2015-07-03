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
    test)   input="inputs/in_4.txt" ;;
    tiny)   input="inputs/in_16.txt" ;;
    small)  input="inputs/in_4K.txt" ;;
    medium) input="inputs/in_16K.txt" ;;
    large)  input="inputs/in_64K.txt" ;;
    huge)   input="inputs/in_10M.txt" ;;
esac
golden=`echo $input | sed -e 's/in/out/g'`

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

"$root"/bin/est-energy.py -o "$tmpfit" -- "$exe" 1 $input $outfile
check_status $?

diff $outfile $golden > /dev/null 2>&1
check_status $?

awk '{print 1/$1}' < "$tmpfit" > "$fitnessfile"
cleanup

# exit 1 so that genprog doesn't find a "repair"
exit 1
