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

check_status() {
    if [ $1 -ne 0 ] ; then
        echo 0 > "$fitnessfile"
        exit $1
    fi
}

outfile=`mktemp`

"$root"/bin/est-energy.py -o "$fitnessfile" -- "$exe" 1 $input $outfile
check_status $?

diff $outfile $golden > /dev/null 2>&1
check_status $?

rm -f $outfile
fitness=`awk '{print 1/$1}' < "$fitnessfile"`
echo $fitness > "$fitnessfile"

# exit 1 so that genprog doesn't find a "repair"
exit 1
