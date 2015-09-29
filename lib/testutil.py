from math import factorial, pi, sqrt
import os
from subprocess import check_call
import sys
from util import infomsg, mktemp

debug_file = None

def get_fitness(
        root, run_cmd, validate_cmd = None,
        stdout = sys.stdout, stderr = sys.stderr ):
    with mktemp() as tmpfit:
        cmd = [
            os.path.join( root, "bin", "limit" ),
            os.path.join( root, "bin", "est-energy.py" ), "-o", tmpfit,
            "--",
        ] + run_cmd

        if debug_file is not None:
            infomsg( "DEBUG:", *cmd, fh = debug_file )
        check_call( cmd, stdout = stdout, stderr = stderr )

        if validate_cmd is not None:
            if debug_file is not None:
                infomsg( "DEBUG:", *validate_cmd, fh = debug_file )
            check_call( validate_cmd, stdout = stdout, stderr = stderr )

        with open( tmpfit ) as fh:
            line = fh.next().strip()
            if debug_file is not None:
                infomsg( "DEBUG: raw fitness:", line, fh = debug_file )
            return 1.0 / float( line )

def reduce_error( f, alpha, probes = 5 ):
    global debug_file

    # variance computation adapted from:
    # https://en.wikipedia.org/wiki/Algorithms_for_calculating_variance
    # correction computation adapted from:
    # https://en.wikipedia.org/wiki/Unbiased_estimation_of_standard_deviation

    # The correction below is for odd numbers of probes. Rather than coding
    # up both corrections, we just force the number of probes to be odd.

    if probes % 2 == 0:
        probes += 1

    log = debug_file
    debug_file = None

    n = 0
    mean = 0.0
    M2   = 0.0
    errp = 1.0

    while alpha < errp:
        for i in range( probes ):
            x = f()
            if log is not None:
                infomsg( x, fh = log )
            yield x
            n = n + 1
            delta = x - mean
            mean = mean + delta / n
            M2 = M2 + delta * ( x - mean )
        var = M2 / ( n - 1 )
        errp = sqrt( var / n ) / mean
        if n < 100:
            k = n // 2
            c4 = sqrt( pi / k ) * factorial ( 2*k-1 ) / ( 2 ** ( 2*k-1 ) * factorial( k - 1 ) ** 2 )
            errp = c4 * errp

        probes += probes

    if log is not None:
        infomsg( n, "probes: relative standard error =", errp, fh = log )
        debug_file = log

