#!/usr/bin/python
#SBATCH --exclusive

import datetime
import optparse
import os
import subprocess


parser = optparse.OptionParser("%prog [options] benchmark")
options, args = parser.parse_args()

if len(args) < 1:
    parser.print_usage()
    exit(1)

benchmark = args[0]
parsecdir = "/localtmp/sources/" + benchmark + "/"

# clone clean repo
os.chdir("/localtmp/")
jobid = os.environ["SLURM_JOB_ID"]
subprocess.check_call(["git", "clone", "powergauge", jobid])
    
# Make in src
os.chdir(jobid)
subprocess.check_call(["make", "-C", "src"])

# copy sources/input based on passed in benchmark
os.chdir("benchmarks/" + benchmark)
subprocess.check_call(["rsync", "-a", parsecdir, "."])

# Sanity check compile with a test input and create golden
subprocess.check_call(["./compile.sh", "src/.", "exe"])
subprocess.call(["./test.py", "exe"])

# log start timestamp
# log the git hash and hostname to a file
# modify/deal with the config file
# run genprog
# create dir for artifacts (figure out how to name this stuff)
# copy artifacts
# compress and store in some location

