#!/bin/bash

# Get location of script so that by default it can find the bb_trace tool
# Code from http://stackoverflow.com/a/246128
SOURCE="${BASH_SOURCE[0]}"
while [ -h "$SOURCE" ]; do
    DIR="$( cd -P "$( dirname "$SOURCE" )" && pwd)"
    SOURCE="$(readlink "$SOURCE")"
    [[ $SOURCE != /* ]] && SOURCE="$DIR/$SOURCE"
done
DIR="$( cd -P "$( dirname "$SOURCE" )" && pwd )"

# Default location of the bb_trace tool relative to the location of this script
BBTRACE="$DIR/../pintool/obj-intel64/bb_trace.so"

function show_help {
    echo "Usage: $(basename $0) [OPTION]... -- [EXE] [ARGS]

Uses the bb_trace pintool to trace through an execution of the provided program
and then collects and parses the results. The output of bb_trace is stored in 
bb-trace.out, a specially formatted objdump of EXE is stored in EXE-dump.out, and
a sorted and formatted version of the trace is stored in bb-trace-EXE-sorted.out.

Options:
  -h   show this help
  -p   location of pin executable. Default: \$PIN_ROOT/pin
  -t   location of bb_trace.so. Default: goa2/pintool/obj-intel64/bb_trace.so"
}

while getopts "h?t:p:" opt; do
    case "$opt" in
	h|\?)
	    show_help
	    exit 0
	    ;;
	t)
	    BBTRACE=$OPTARG
	    ;;
	p)
	    PIN=$OPTARG
    esac
done

# Get the executable and arguments
shift $(($OPTIND -1))
EXE=$1
shift
ARGS=$*

TRACE="bb-trace.out"
DUMPFILE="`basename $EXE`-dump.out"
SORTEDTRACE="bb-trace-`basename $EXE`-sorted.out"
PERADDRESS="per-address-`basename $EXE`.out"

# If bb-trace.out exists, we don't need to run pin
if [ ! -f "$TRACE" ]; then
    # Check that we can find pin
    if [ -z ${PIN+x} ]; then
	if [ -z ${PIN_ROOT+x} ]; then
	    echo "Error: No pin executable specified and \$PIN_ROOT not set"
	    show_help
	    exit 1
	else
	    PIN="$PIN_ROOT/pin"
	fi
    fi

    # Check that we can find the pin tool
    if [ ! -f $BBTRACE ]; then
	echo "Error: trace tool does not exist or not found. Have you compiled it?"
	exit 1
    fi

    # Run the pin tool
    echo "Running pin"
    eval "$PIN" -t "$BBTRACE" -filter_no_shared_libs -- "$EXE" "$ARGS"
fi

# Dump text section of executable and format addresses
if [ ! -f "$DUMPFILE" ]; then
    echo "Dumping `basename $EXE`"
    EXEPATH=`which $EXE`
    TMPFILE=$(mktemp /tmp/dump.XXXX)
    objdump -d --prefix-addresses -j ".text" $EXEPATH | tail -n +6 | sed 's/^0\+/0x/' > "$TMPFILE"
    mv "$TMPFILE" "$DUMPFILE"
else
    echo "$DUMPFILE found"
fi

# Sort the trace and count the number of executions of each basic block
if [ ! -f "$SORTEDTRACE" ]; then
    echo "Sorting trace"
    TMPFILE=$(mktemp /tmp/sorted.XXXX)
    sort "$TRACE" | uniq -c > "$TMPFILE"
    mv "$TMPFILE" "$SORTEDTRACE"
else
    echo "$SORTEDTRACE found"
fi


# This is pretty dumb, fix later

# Grep through object file to get the per-address execution numbers
TMPFILE=$(mktemp /tmp/something.XXXX)
while read -r COUNT ADDRESS BB_SIZE; do
    grep "$ADDRESS" "$DUMPFILE" -A "$((BB_SIZE-1))" | sed "s/^/$COUNT\t/" | cut -f 1 -d " ">> "$TMPFILE"
done < "$SORTEDTRACE"
mv "$TMPFILE" "$PERADDRESS"

# Format the output
TOTAL=0
while read -r ADDRESS FUNCTION INSTRUCTION; do
    COUNT=`grep "[0-9]*[[:space:]]*$ADDRESS" "$PERADDRESS" | awk '{print $1}' | paste -s -d '+' | bc`
    if [ -z "$COUNT" ]; then
        COUNT=0
    fi
    # Increment count so that lines that are never run do not have weight 0
    COUNT=$((COUNT+1))
    TOTAL=$((TOTAL+COUNT))
    printf "%s\t%s\t%s\t%s\n" "$COUNT" "$ADDRESS" "$FUNCTION" "$INSTRUCTION"
done < "$DUMPFILE"
echo "Total count: $TOTAL"
