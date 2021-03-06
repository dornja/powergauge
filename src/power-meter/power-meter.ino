// vim: filetype=cpp

#include <EEPROM.h>

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

struct calibration_info {
    float vCal;
    float iCal[ NUM_CT ];
    float pCal[ NUM_CT ];
};

calibration_info cal;
boolean calibration_mode = false;

unsigned long nextpost = 0;
unsigned long period = 100;
unsigned long samples = 0;

String buffer;

float offsetV;
float V, Vsq, Vratio;

float Iratio[ NUM_CT ];
float offsetI[ NUM_CT ];
float Isq[ NUM_CT ];
float Pinst[ NUM_CT ];

long readVcc();

void
setup()
{
    pinMode( LEDpin, HIGH );
    digitalWrite( LEDpin, HIGH );

    Serial.begin( 115200 );

    // Initialize calibration factors.

    EEPROM.get( 0, cal );

    Vratio = cal.vCal / 1000 / ADC_COUNTS;
    offsetV = ADC_COUNTS >> 1;
    V = ADC_COUNTS >> 1;
    Vsq = 0.0f;
    for ( int i = 0; i < NUM_CT; ++i ) {
        Iratio[ i ] = cal.iCal[ i ] / 1000 / ADC_COUNTS;
        offsetI[ i ] = ADC_COUNTS >> 1;
        Isq[ i ] = 0.0f;
        Pinst[ i ] = 0.0f;
    }

    digitalWrite( LEDpin, LOW );
}

void
menu()
{
    buffer += Serial.readString();
    if ( buffer.indexOf( ';' ) == -1 )
        return;

    unsigned long user_delay = 2000;
    char pivot = buffer.indexOf( ';' );
    while ( pivot > -1 ) {
        while ( pivot > -1 ) {
            boolean valid = true;
            String command = buffer.substring( 0, pivot );
            if ( command.startsWith( F( "delay " ) ) ) {
                user_delay = command.substring( 6 ).toInt();
            } else if ( command == F( "get Vcc" ) ) {
                Serial.print( F( "ANS: " ) );
                Serial.print( readVcc() );
                Serial.print( F( "\r\n" ) );
            } else if ( command == F( "get ADC_BITS" ) ) {
                Serial.print( F( "ANS: " ) );
                Serial.print( ADC_BITS );
                Serial.print( F( "\r\n" ) );
            } else if ( command == F( "get vCal" ) ) {
                Serial.print( F( "ANS: " ) );
                Serial.print( cal.vCal );
                Serial.print( F( "\r\n" ) );
            } else if ( command.startsWith( F( "get iCal " ) ) ) {
                char idx = command.substring( 9 ).toInt();
                if ( 0 < idx && idx <= 4 ) {
                    Serial.print( F( "ANS: " ) );
                    Serial.print( cal.iCal[ idx - 1 ] );
                    Serial.print( F( "\r\n" ) );
                } else {
                    valid = false;
                }
            } else if ( command.startsWith( F( "get pCal " ) ) ) {
                char idx = command.substring( 9 ).toInt();
                if ( 0 < idx && NUM_CT ) {
                    Serial.print( F( "ANS: " ) );
                    Serial.print( cal.pCal[ idx - 1 ] );
                    Serial.print( F( "\r\n" ) );
                } else {
                    valid = false;
                }
            } else if ( command == F( "get period" ) ) {
                Serial.print( F( "ANS: " ) );
                Serial.print( period );
                Serial.print( F( "\r\n" ) );
            } else if ( command.startsWith( F( "set calibrate " ) ) ) {
                calibration_mode = command.substring( 14 ).toInt();
            } else if ( command.startsWith( F( "set vCal " ) ) ) {
                float value = command.substring( 9 ).toFloat();
                if ( value != 0.0f ) {
                    cal.vCal = value;
                    Vratio = cal.vCal / 1000 / ADC_COUNTS;
                    EEPROM.put( 0, cal );
                }
            } else if ( command.startsWith( F( "set iCal " ) ) ) {
                char space = command.indexOf( ' ', 9 );
                int idx = command.substring( 9, space ).toInt();
                if ( 0 < idx && idx <= 4 ) {
                    float value = command.substring( space + 1 ).toFloat();
                    if ( value != 0.0f ) {
                        cal.iCal[ idx - 1 ] = value;
                        Iratio[ idx - 1 ] = cal.iCal[ idx - 1 ] / 1000 / ADC_COUNTS;
                        EEPROM.put( 0, cal );
                    }
                } else {
                    valid = false;
                }
            } else if ( command.startsWith( F( "set pCal " ) ) ) {
                char space = command.indexOf( ' ', 9 );
                int idx = command.substring( 9, space ).toInt();
                if ( 0 < idx && idx <= 4 ) {
                    float value = command.substring( space + 1 ).toFloat();
                    if ( value != 0.0f ) {
                        cal.pCal[ idx - 1 ] = value;
                        EEPROM.put( 0, cal );
                    }
                } else {
                    valid = false;
                }
            } else if ( command.startsWith( F( "set period " ) ) ) {
                unsigned long value = command.substring( 11 ).toInt();
                if ( value != 0 )
                    period = value;
                else {
                    Serial.print( F( "ERROR: " ) );
                    Serial.print( command.substring( 13 ) );
                    Serial.print( F( " parse to " ) );
                    Serial.print( value );
                    Serial.print( F( "\r\n" ) );
                }
            } else {
                valid = false;
            }
            if ( !valid ) {
                Serial.print( F( "Available commands:\r\n" ) );
                Serial.print( F( "  delay millis\r\n" ) );
                Serial.print( F( "  get ADC_BITS\r\n" ) );
                Serial.print( F( "  get Vcc\r\n" ) );
                Serial.print( F( "  get iCal [1-4]\r\n" ) );
                Serial.print( F( "  get pCal [1-4]\r\n" ) );
                Serial.print( F( "  get period\r\n" ) );
                Serial.print( F( "  get vCal\r\n" ) );
                Serial.print( F( "  set calibrate 0|1\r\n" ) );
                Serial.print( F( "  set iCal [1-4] value\r\n" ) );
                Serial.print( F( "  set pCal [1-4] value\r\n" ) );
                Serial.print( F( "  set period value\r\n" ) );
                Serial.print( F( "  set vCal value\r\n" ) );
            }
            buffer.remove( 0, pivot + 1 );
            if ( Serial.available() )
                buffer += Serial.readString();
            pivot = buffer.indexOf( ';' );
        }

        long end = millis() + user_delay;
        while ( millis() < end )
            if ( Serial.available() )
                buffer += Serial.readString();
        pivot = buffer.indexOf( ';' );
    }

    samples = 0;
    Vsq = 0.0;
    for ( char i = 0; i < NUM_CT; ++i ) {
        Isq[ i ]   = 0.0;
        Pinst[ i ] = 0.0;
    }
    // Cause us to report all zeros / nans before resuming. This allows
    // whatever is reading the output to sync with the changes if necessary.
    nextpost = 0;
}

template< boolean Calibrate >
struct main {

static
void
loop()
{
    if ( Serial.available() )
        menu();

    if ( nextpost <= millis() ) {
        float vcc = readVcc();
        float Vscale = Vratio * vcc;

        Serial.print( samples );

        if ( Calibrate ) {
            float Vrms = Vscale * sqrt( Vsq / samples );
            Serial.print( ' ' );
            Serial.print( Vrms, 3 );
            Vsq = 0;
        }

        for ( char j = 0; j < NUM_CT; ++j ) {
            if ( Calibrate ) {
                float Irms = Iratio[ j ] * vcc * sqrt( Isq[ j ] / samples );
                Isq[ j ] = 0;
                Serial.print( ' ' );
                Serial.print( Irms, 3 );
            }

            float power = Pinst[ j ] * cal.pCal[ j ] / samples;
            power *= Vscale * Iratio[ j ] * vcc;
            Serial.print( ' ' );
            Serial.print( power );
            Pinst[ j ] = 0;
        }

        Serial.print( "\r\n" );

        samples = 0;
        nextpost = millis() + period;
    }

    float V = analogRead( 0 );
    offsetV += ( V - offsetV ) / 1024;
    V -= offsetV;
    if ( Calibrate )
        Vsq += V * V;

    for ( char j = 0; j < NUM_CT; ++j ) {
        float I = analogRead( j + 1 );
        offsetI[ j ] += ( I - offsetI[ j ] ) / 1024;
        I -= offsetI[ j ];
        if ( Calibrate )
            Isq[ j ] += I * I;
        Pinst[ j ] += V * I;
    }

    samples += 1;
}

};

void
loop()
{
    if ( calibration_mode )
        main< true >::loop();
    else
        main< false >::loop();
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

