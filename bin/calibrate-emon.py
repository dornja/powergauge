#!/usr/bin/env python

from contextlib import contextmanager
from datetime import datetime
from functools import partial
from math import isnan
import numpy as np
import os
import serial
from subprocess import Popen, PIPE
import sys

root = os.path.dirname( os.path.dirname( os.path.abspath( __file__ ) ) )
sys.path.insert( 0, os.path.join( root, "lib" ) )

from util import infomsg

class Emon:
    def __init__( self, device, baud ):
        self.fh = serial.Serial( device, baud, timeout = 20 )

    def __enter__( self ):
        return self

    def __exit__( self, typ, val, trace ):
        self.close()

    def __del__( self ):
        self.close()

    def __iter__( self ):
        return self

    def close( self ):
        self.fh.close()

    def _readline( self ):
        return next( self.fh ).split()

    def next( self ):
        while True:
            line = self._readline()
            if ( len( line ) == 10 or len( line ) == 5 ) and line[ 0 ] != "0":
                break
        return map( float, line )

    def getConfig( self ):
        query = [ "get ADC_BITS", "get Vcc", "get vCal" ]
        for i in range( 4 ):
            query.append( "get iCal " + str( i + 1 ) )
            query.append( "get pCal " + str( i + 1 ) )
        self.fh.write( ";".join( [ "", "delay 0" ] + query + [ "" ] ) )
        self.fh.flush()
        try:
            os.fsync( self.fh.fileno() )
        except: pass

        num = 0
        values = dict()
        while num < len( query ):
            line = self._readline()
            if len( line ) == 2 and line[ 0 ] == "ANS:":
                key = " ".join( query[ num ].split()[ 1: ] )
                values[ key ] = float( line[ 1 ] )
                num += 1
        return values

    def set( self, configvar, value ):
        self.fh.write( ";delay 0;set %s %g;" % ( configvar, value ) )
        self.fh.flush()

def calibrate( device, baud, chan, wu_device, do_volt = True, threshold = 0.01 ):
    def read_wattsup( wu_device, counter, samples ):
        cmd = [
            os.path.join( root, "bin", "wu.py" ), wu_device,
                "--log-style", "external",
                "-i",
                "-e", counter,
                "-o", "/dev/stdout",
                "--",
                "sleep", str( samples )
        ]
        infomsg( "DEBUG:", *cmd )
        p = Popen( cmd, stdout = PIPE )
        lines = p.communicate()[ 0 ]
        if p.returncode != 0:
            raise _CalledProcessError( p.returncode, cmd )

        terms = len( counter.split( "," ) )
        values = list()
        first = True
        for line in lines.splitlines():
            if not first:
                values.append( map( float, line.strip().split( "," )[-terms:] ) )
            first = False
        mean = np.mean( values, 0 )
        err  = 1.96 * np.std( values, 0 ) / np.sqrt( len( values ) )
        return mean, err

    def read_emon( device, baud, columns, num_samples ):
        with Emon( device, baud ) as emon:
            emon.set( "calibrate", 1 )
            emon.set( "period", 1000 )
            samples = list()
            for i in range( num_samples ):
                row = next( emon )
                infomsg( row )
                selected = list()
                for col in columns:
                    selected.append( row[ col ] )
                samples.append( selected )
        mean = np.mean( samples, 0 )
        err  = 1.96 * np.std( samples, 0 ) / np.sqrt( len( samples ) )
        return mean, err

    def do_calibration( device, baud, name, cal, base, numer, denom ):
        if isnan( cal ):
            cal = base
            with Emon( device, baud ) as emon:
                emon.set( name, cal )
        tmp = 25
        while True:
            infomsg( name, "=", cal )
            dmean, derr = 1, 1
            while threshold < derr / dmean:
                sample = tmp
                infomsg( "collecting %d denominator samples" % sample, "@", datetime.now() )
                dmean, derr = denom( sample )
                infomsg( "sample =", sample, "dmean =", dmean, "derr =", derr )
                tmp = int( np.ceil( sample * ( derr / dmean / threshold )**2 ) )
                tmp = max( tmp, sample )
            infomsg( "collecting %d numerator samples" % sample, "@", datetime.now() )
            nmean, nerr = numer( sample )
            infomsg( "sample =", sample, "nmean =", nmean, "nerr =", nerr )
            if dmean - derr < nmean + nerr and nmean - nerr < dmean + derr:
                break
            cal *= nmean / dmean
            with Emon( device, baud ) as emon:
                emon.set( name, cal )
        return cal

    @contextmanager
    def calibration_mode( device, baud ):
        with Emon( device, baud ) as emon:
            emon.set( "calibration", 1 )
        try:
            yield
        finally:
            with Emon( device, baud ) as emon:
                emon.set( "calibration", 0 )

    with Emon( device, baud ) as emon:
        config = emon.getConfig()
        ADC_BITS = int( config[ "ADC_BITS" ] )
        Vcc = config[ "Vcc" ]
        vCal = config[ "vCal" ]
        iCal = list()
        iCal.append( config[ "iCal 1" ] )
        iCal.append( config[ "iCal 2" ] )
        iCal.append( config[ "iCal 3" ] )
        iCal.append( config[ "iCal 4" ] )
        pCal = list()
        pCal.append( config[ "pCal 1" ] )
        pCal.append( config[ "pCal 2" ] )
        pCal.append( config[ "pCal 3" ] )
        pCal.append( config[ "pCal 4" ] )

    with calibration_mode( device, baud ):
        if do_volt:
            infomsg( "calibrating voltage" )
            do_calibration( device, baud, "vCal", vCal, 276.9,
                partial( read_wattsup, wu_device, "volts" ),
                partial( read_emon, device, baud, [ 1 ] ),
            )
        infomsg( "calibrating current" )
        do_calibration( device, baud, "iCal %d" % chan, iCal[ chan - 1 ], 90.9,
            partial( read_wattsup, wu_device, "amps" ),
            partial( read_emon, device, baud, [ 2 * chan ] ),
        )

        # Phase calibration attempts to achieve a power factor of 1, so we only
        # use the emon. We set up a little wrapper so we don't end up collecting
        # lots of extra data.

        def phaseWrapper( data, device, baud, chan, numer, num_samples ):
            if numer:
                data = np.array( data )
                v = data[ :, 1 ]
                i = data[ :, 2 * chan ]
                return v * i
            else:
                del data[ : ]
                data += read_emon( device, baud, range( 10 ), num_samples )
                return np.array( data )[ :, 2 * chan + 1 ]

        data = list()
        infomsg( "calibrating phase" )
        do_calibration( device, baud, "pCal %d" % chan, pCal[ chan - 1 ], 1.7,
            partial( phaseWrapper, data, device, baud, chan, True ),
            partial( phaseWrapper, data, device, baud, chan, False ),
        )

if __name__ == "__main__":
    from optparse import OptionParser

    parser = OptionParser( usage = "%prog [options] channel" )
    parser.add_option(
        "--baud", metavar = "N", type = int, default = 115200,
        help = "baud rate for communicating with emon"
    )
    parser.add_option(
        "--emon", metavar = "device", help = "device name for Emon"
    )
    parser.add_option(
        "--wu", metavar = "device", help = "device name for WattsUP?"
    )
    parser.add_option(
        "--no-volt", action = "store_true", help = "do not calibrate voltage"
    )
    options, args = parser.parse_args()

    if len( args ) < 1 or options.wu is None or options.emon is None:
        parser.print_help()
        exit()
    else:
        calibrate(
            options.emon, options.baud, int( args[ 0 ] ), options.wu,
            not options.no_volt
        )

