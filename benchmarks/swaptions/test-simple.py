#!/usr/bin/env python

from __future__ import division, print_function

import os
import subprocess
import sys
import time

# Usage: test-simple.py __EXE_NAME__ __FITNESS_FILE__

exe = sys.argv[1]
fitness_file = sys.argv[2]
limit = os.path.dirname(sys.argv[0]) + '/../../bin/limit'

if not '/' in exe:
    exe = './' + exe
null = open('/dev/null', 'w')

def run(exe, fout):
    p = subprocess.Popen([limit, '30', exe] + '-ns 16 -sm 10000 -nt 1'.split(),
                         stdout=null, stderr=fout)
    return p
        
def parse(lines):
    return [float(line.split()[3]) for line in lines]

golden_file = os.path.dirname(sys.argv[0]) + '/golden'
if not os.path.exists(golden_file):
    with open(golden_file, 'w') as fout:
        p = run(exe, fout)
        p.wait()
with open(golden_file) as fin:
    golden = parse(fin)

fitness = []
for i in range(5):
    with open('/dev/null', 'w') as fout:
        start = time.time()
        p = run(exe, subprocess.PIPE)
        output = parse(p.communicate()[1].splitlines())
        stop = time.time()
    if len(output) != len(golden):
        error = float('inf')
    else:
        error = sum([(x-y)**2 for x, y in zip(golden, output)])
    fitness.append((1/(1 + stop - start), 1/(1 + error)))
with open(fitness_file, 'w') as fout:
    for time, error in fitness:
        print(time, error, file=fout)
# Test script must always have a non-zero exit code
exit(1)
