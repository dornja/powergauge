#!/bin/sh

# Usage: compile.sh __SOURCE_NAME__ __EXE_NAME__

src=`dirname "$1"`/swaptions.s

g++ -pthread -DENABLE_THREADS "$src" -o "$2"
