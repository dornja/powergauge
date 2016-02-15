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
    test)   input="inputs/in_4.txt" ;;
    tiny)   input="inputs/in_16.txt" ;;
    small)  input="inputs/in_4K.txt" ;;
    medium) input="inputs/in_16K.txt" ;;
    large)  input="inputs/in_64K.txt" ;;
    huge)   input="inputs/in_10M.txt" ;;
esac
golden=`echo $input | sed -e 's/in/out/g'`

run_test() {
    set x "$root"/bin/est-energy.py -o "$tmpfit" -- "$@" ; shift
    set x setarch `uname -m` -R "$@" ; shift
    "$@"
}

cleanup() {
    status=$?
    test -f "$output" && rm -f "$output"
    test -f "$tmpfit" && rm -f "$tmpfit"
    exit $status
}

check_status() {
    if [ $1 -ne 0 ] ; then
        echo 0 > "$fitnessfile"
        exit $1
    fi
}

trap cleanup EXIT INT

output=`mktemp`
tmpfit=`mktemp`

# disable address space randomization
run_test "$exe" 1 "$input" "$output"
check_status $?

if [ ! -r "$golden" ] ; then
    mkdir -p `dirname "$golden"`
    cp "$output" "$golden"
fi

diff "$output" "$golden" > /dev/null 2>&1
check_status $?

awk '{print 1/$1}' < "$tmpfit" > "$fitnessfile"

# exit 1 so that genprog doesn't find a "repair"
exit 1

