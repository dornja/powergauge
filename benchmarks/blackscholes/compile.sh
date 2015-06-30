#!/bin/sh

# Usage: compile.sh __SOURCE_NAME__ __EXE_NAME__

g++ -lpthread "$1" -o "$2"

