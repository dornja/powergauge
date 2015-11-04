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

case "$size" in
    tiny) size=dev ;;
esac

set x $exe "inputs/input_$size/corel" lsh "inputs/input_$size/queries"
shift
case $size in
    test)   set x "$@"  5  5 1 ;;
    dev)    set x "$@"  5  5 1 ;;
    small)  set x "$@" 10 20 1 ;;
    medium) set x "$@" 10 20 1 ;;
    large)  set x "$@" 10 20 1 ;;
    huge)   set x "$@" 50 20 1 ;;
esac
shift

tmpfit=`mktemp`
output=`mktemp`
golden=`dirname "$2" | sed -e 's/in/out/g'`

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

run_test "$@" "$output" > /dev/null 2>&1
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
