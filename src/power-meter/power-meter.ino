// vim: filetype=cpp

// define theoretical vref calibration constant for use in readvcc()
// 1100mV*1024 ADC steps http://openenergymonitor.org/emon/node/1186
// override in your code with value for your specific AVR chip
// determined by procedure described under "Calibrating the internal reference voltage" at
// http://openenergymonitor.org/emon/buildingblocks/calibration
#ifndef READVCC_CALIBRATION_CONST
#define READVCC_CALIBRATION_CONST 1126400L
#endif

#if defined(__arm__)
#  define ADC_BITS 12
#else
#  define ADC_BITS 10
#endif
#define ADC_COUNTS ( 1 << ADC_BITS )

// emonTx V3 LED
const byte LEDpin = 6;

// Number of CT channels we can read
const byte NUM_CT = 4;

unsigned long lastpost = 0;
unsigned long period = 500;
unsigned long samples = 0;

String command;

float vCal;
float phaseCal;
float offsetV  = ADC_COUNTS >> 1;
float filteredV, sqV;

float iCal[ NUM_CT ];
int sampleI[ NUM_CT ];
float offsetI[ NUM_CT ];
float sqI[ NUM_CT ];
float instP[ NUM_CT ];

long readVcc();

void
setup()
{
    pinMode( LEDpin, HIGH );
    digitalWrite( LEDpin, HIGH );

    Serial.begin( 9600 );
    Serial.println( "emonTx V3" );

    // Initialize calibration factors.

    //vCal      = 276.9;
    //iCal[ 0 ] =  90.9;
    //iCal[ 1 ] =  90.9;
    //iCal[ 4 ] =  16.6;
    //phaseCal  =   1.7;
    vCal      = 126.324;
    iCal[ 0 ] =  92.36;
    iCal[ 1 ] =  90.9;
    iCal[ 2 ] =  80.953;
    iCal[ 3 ] =  15.350;
    phaseCal  =   1.319;

    lastpost = 0;

    digitalWrite( LEDpin, LOW );
}

void
reset()
{
    samples = 0;
    sqV = 0.0;
    for ( char i = 0; i < NUM_CT; ++i ) {
        sqI[ i ]   = 0.0;
        instP[ i ] = 0.0;
    }
}

void
updateCalibration()
{
    command += Serial.readString();
    if ( command.indexOf( ';' ) == -1 )
        return;

    char pivot = command.indexOf( ';' );
    while ( pivot > -1 ) {
        switch ( command.charAt( 0 ) ) {
            case 'p':
                period = command.substring( 2, pivot ).toInt();
                break;
        }
        command.remove( 0, pivot + 1 );
        pivot = command.indexOf( ';' );
    }
    lastpost = millis();
    reset();
}

void
loop()
{
    // Only post data every $period milliseconds

    if ( period <= ( millis() - lastpost ) ) {
        lastpost = millis();
        int supplyV = readVcc();
        float inv_samples = 1.0 / samples;

        Serial.print( samples );
        Serial.print( ' ' );

        float vRatio = vCal * supplyV / 1000.0 / ADC_COUNTS;
        float vRMS = vRatio * sqrt( sqV * inv_samples );
        Serial.print( vRMS );
        Serial.print( '|' );

        float tmp = vRatio * inv_samples;
        for ( char i = 1; i <= NUM_CT; ++i ) {
            float iRatio = iCal[ i - 1 ] * supplyV / 1000.0 / ADC_COUNTS;
            float iRMS = iRatio * sqrt( sqI[ i - 1 ] * inv_samples );
            float power = tmp * iRatio * instP[ i - 1 ];
            Serial.print( iRMS );
            Serial.print( ' ' );
            // real power
            Serial.print( power );
            Serial.print( ' ' );
            // apparent power
            Serial.print( vRMS * iRMS );
            Serial.print( '|' );
            sqI[ i - 1 ]   = 0.0;
            instP[ i - 1 ] = 0.0;
        }
        Serial.print( "\r\n" );

        samples = 0;
        sqV = 0.0;
        //reset();
    }

    samples += 1;
    float lastFilteredV = filteredV;
    int sampleV = analogRead( 0 );
    offsetV = offsetV + ( sampleV - offsetV ) / 1024;
    filteredV = sampleV - offsetV;
    sqV += filteredV * filteredV;
    float phaseShiftedV = lastFilteredV + phaseCal * ( filteredV - lastFilteredV );

    for ( char i = 0; i < NUM_CT; ++i ) {
        sampleI[ i ] = analogRead( i + 1 );
        offsetI[ i ] = offsetI[ i ] + ( sampleI[ i ] - offsetI[ i ] ) / 1024;
        float filteredI = sampleI[ i ] - offsetI[ i ];
        sqI[ i ] += filteredI * filteredI;
        instP[ i ] += phaseShiftedV * filteredI;
    }

    if (Serial.available() > 0)
        updateCalibration();
}

/*
 Taken from https://github.com/openenergymonitor/EmonLib/blob/master/EmonLib.cpp
 */

long
readVcc()
{
    long result;

    // not used on emonTx V3 - as Vcc is always 3.3V - eliminates bandgap
    // error and need for calibration
    // http://harizanov.com/2013/09/thoughts-on-avr-adc-accuracy/

#if defined(__AVR_ATmega168__) || defined(__AVR_ATmega328__) || defined (__AVR_ATmega328P__)
    ADMUX = _BV(REFS0) | _BV(MUX3) | _BV(MUX2) | _BV(MUX1);
#elif defined(__AVR_ATmega32U4__) || defined(__AVR_ATmega1280__) || defined(__AVR_ATmega2560__) || defined(__AVR_AT90USB1286__)
    ADMUX = _BV(REFS0) | _BV(MUX4) | _BV(MUX3) | _BV(MUX2) | _BV(MUX1);
    // Without this the function always returns -1 on the ATmega2560
    // http://openenergymonitor.org/emon/node/2253#comment-11432
    ADCSRB &= ~_BV(MUX5);
#elif defined (__AVR_ATtiny24__) || defined(__AVR_ATtiny44__) || defined(__AVR_ATtiny84__)
    ADMUX = _BV(MUX5) | _BV(MUX0);
#elif defined (__AVR_ATtiny25__) || defined(__AVR_ATtiny45__) || defined(__AVR_ATtiny85__)
    ADMUX = _BV(MUX3) | _BV(MUX2);
#endif

#if defined(__AVR__)
    delay(2);                                        // Wait for Vref to settle
    ADCSRA |= _BV(ADSC);                             // Convert
    while (bit_is_set(ADCSRA,ADSC));
    result = ADCL;
    result |= ADCH<<8;
    result = READVCC_CALIBRATION_CONST / result;  //1100mV*1024 ADC steps http://openenergymonitor.org/emon/node/1186
    return result;
#elif defined(__arm__)
    return (3300);                                  //Arduino Due
#else
    return (3300);                                  //Guess that other un-supported architectures will be running a 3.3V!
#endif
}

