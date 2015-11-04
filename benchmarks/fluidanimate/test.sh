#!/bin/sh

# Usage: test.sh __EXE_NAME__ size __FITNESS_FILE__

if [ $# -lt 3 ] ; then
    echo "Usage: $0 __EXE_NAME__ size __FITNESS_FILE__"
    exit 2
fi

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
    test)   set x $exe 1   1 inputs/in_5K.fluid ;;
    tiny)   set x $exe 1   3 inputs/in_15K.fluid ;;
    small)  set x $exe 1   5 inputs/in_35K.fluid ;;
    medium) set x $exe 1   5 inputs/in_100K.fluid ;;
    large)  set x $exe 1   5 inputs/in_300K.fluid ;;
    huge)   set x $exe 1 500 inputs/in_500K.fluid ;;
esac
shift
input=$4
golden=`echo $input | sed -e 's/in/out/g'`

output=`mktemp`
tmpfit=`mktemp`

run_test() {
  set x "$root"/bin/est-energy.py -o "$tmpfit" -- "$@" ; shift
  set x setarch `uname -m` -R "$@" ; shift
  "$@"
}

cleanup() {
    test -f "$output" && rm -f "$output"
    test -f "$tmpfit" && rm -f "$tmpfit"
}

check_status() {
    if [ $1 -ne 0 ] ; then
        cleanup
        echo 0 > "$fitnessfile"
        exit $1
    fi
}

run_test "$@" "$output" > /dev/null
check_status $?

if [ ! -d "$golden" ] ; then
    mkdir -p `dirname "$golden"`
    cp "$output" "$golden"
fi

diff $output $golden
check_status $?

awk '{print 1/$1}' < "$tmpfit" > "$fitnessfile"
cleanup

# exit 1 so that genprog doesn't find a "repair"
exit 1
