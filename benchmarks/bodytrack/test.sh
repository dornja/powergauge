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
    test)   set x $exe inputs/sequenceB_1   4   1    5 1 0 1 ;;
    tiny)   set x $exe inputs/sequenceB_1   4   1  100 3 0 1 ;;
    small)  set x $exe inputs/sequenceB_1   4   1 1000 5 0 1 ;;
    medium) set x $exe inputs/sequenceB_2   4   2 2000 5 0 1 ;;
    large)  set x $exe inputs/sequenceB_4   4   4 4000 5 0 1 ;;
    huge)   set x $exe inputs/sequenceB_261 4 261 4000 5 0 1 ;;
esac
shift
input=$2
golden="outputs/$size"

backup=`mktemp --suffix .tgz`
tmpfit=`mktemp`
tar cfz "$backup" "$input"

run_test() {
  set x "$root"/bin/est-energy.py -o "$tmpfit" -- "$@" ; shift
  set x setarch `uname -m` -R "$@" ; shift
  "$@"
}

cleanup() {
    rm -rf "$input"
    test -f "$backup" && tar xzf "$backup" && rm -f "$backup"
    test -f "$tmpfit" && rm -f "$tmpfit"
}

check_status() {
    if [ $1 -ne 0 ] ; then
        cleanup
        echo 0 > "$fitnessfile"
        exit $1
    fi
}

run_test "$@" > /dev/null
check_status $?

if [ ! -d "$golden" ] ; then
    mkdir -p "$golden"
    ( cd "$input" ; tar cf - . ) | ( cd "$golden" ; tar xf - )
fi

diff -r $input $golden > /dev/null 2>&1
check_status $?

awk '{print 1/$1}' < "$tmpfit" > "$fitnessfile"
cleanup

# exit 1 so that genprog doesn't find a "repair"
exit 1
