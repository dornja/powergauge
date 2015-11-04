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
    test)   set x $exe inputs/T10I4D100K_3.dat     1 ;;
    tiny)   set x $exe inputs/T10I4D100K_1k.dat    3 ;;
    small)  set x $exe inputs/kosarak_250k.dat   220 ;;
    medium) set x $exe inputs/kosarak_500k.dat   410 ;;
    large)  set x $exe inputs/kosarak_990k.dat   790 ;;
    huge)   set x $exe inputs/webdocs_250k.dat 11000 ;;
esac
shift
input=$2
golden=`echo $input | sed -e 's/in/out/g'`

output=`mktemp`
tmpfit=`mktemp`

run_test() {
  set x "$root"/bin/est-energy.py -o "$tmpfit" -- "$@" ; shift
  set x setarch `uname -m` -R "$@" ; shift
  env OMP_NUM_THREADS=1 "$@"
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
