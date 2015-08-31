#!/bin/sh

# Usage: compile.sh __SOURCE_NAME__ __EXE_NAME__

g++ -pthread -DENABLE_THREADS "$1" -o "$2"
