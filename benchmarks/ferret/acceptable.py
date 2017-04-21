#!/usr/bin/python

from sys import argv

# Given two ferret-formatted files, checks that they have the same queries
# and the results of each query have an intersection of at least intersection_size

intersection_size = 5

if len(argv) != 3:
    print ("Usage: " + argv[0] + " file1 file2")
    exit(1)
    
name, file_name1, file_name2 = argv

file1 = open(file_name1)
file2 = open(file_name2)

queries1 = {}
queries2 = {}

for line in file1:
    search = line.split()[0]
    results = set([l.split(":")[0] for l in line.split()[1:]])
    queries1[search] = results

for line in file2:
    search = line.split()[0]
    results = set([l.split(":")[0] for l in line.split()[1:]])
    queries2[search] = results

if (set(queries1.keys()) != set(queries2.keys())):
    print "No"
    exit(0)

for k in queries1:
    intersection =  queries1[k] & queries2[k]
    if (len(intersection) < intersection_size):
        # Lists look slightly nicer than sets when printed
        print "query: " + k
        print file_name1 + ": " + str(list(queries1[k]))
        print file_name2 + ": " + str(list(queries2[k]))
        print "intersection: " + str(list(intersection))
        print "No"
        exit(0)

print "Yes"
