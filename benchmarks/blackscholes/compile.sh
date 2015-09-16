#!/bin/sh

# Usage: compile.sh __SOURCE_NAME__ __EXE_NAME__

src=`dirname "$1"`/blackscholes.s

g++ -lpthread "$src" -o "$2"

