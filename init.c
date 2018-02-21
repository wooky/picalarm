#include "init.h"

inline void init()
{
//  ;;;;;;;; CLOCK SETUP ;;;;;;;;
//  ; Use internal oscillator at 31 kHz (i.e. LFINTOSC)
//  ; OSCCON<6:4> = 101 indicates 31 kHz
//  ; OSCCON<3:0> = 0000 indicates using no clock division (i.e. 1)
    #define FREQ_31_KHZ 0b01100000
//    OSCCON1 = FREQ_31_KHZ;
    
//    ;;;;;;;; PIN SETUP ;;;;;;;;
//    ; Set all I/O ports to be digital, not analog
    ANSELA = 0;
    ANSELB = 0;
    ANSELC = 0;
    
//    ; Don't output any signals on I/O ports just yet
    LATA = 0;
    LATB = 0;
    LATC = 0;
    
//    ; Get the ports to a known state
    PORTA = 0;
    PORTB = 0;
    PORTC = 0;
    
//    ; Set input/output mode
//    ; PORTA will be used for input only (default)
//    ; PORTB & PORTC will be used for output only
    TRISA = 0xFF;
    TRISB = 0;
    TRISC = 0;
    
#ifndef __DEBUG
//    ; Wait until internal oscillator stabilizes
//    while(!OSCSTATbits.LFOR) {}
#endif
}
