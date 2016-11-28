#!/usr/bin/python

import sys

f1 = open(sys.argv[1], 'r')
f2 = open(sys.argv[2], 'r')

prices1 = list()
prices2 = list()

for line in f1:
    line = line.strip()
    prices1.append(float(line.split()[3]))

for line in f2:
    line = line.strip()
    prices2.append(float(line.split()[3]))

print sum([abs(p1-p2) for p1,p2 in zip(prices1, prices2)])
