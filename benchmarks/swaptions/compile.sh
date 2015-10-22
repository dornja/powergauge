#!/bin/sh

# Usage: compile.sh __SOURCE_NAME__ __EXE_NAME__

g++ -static-libgcc -Wl,--hash-style=both,--as-needed -pthread -DENABLE_THREADS \
    `dirname "$1"`/*.s -o "$2"

