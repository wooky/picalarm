#include "init.h"
#include "pinout.h"

inline void init()
{
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
    //    ; PORTA will be partially used for input
    //    ; PORTB & PORTC will be used for output only
    TRISA = BTN_HOUR | BTN_MINUTE | BTN_ALARM_ADJUST | SWT_ALARM;
    TRISB = 0;
    TRISC = 0;

    //////////////// CLOCK SETUP ////////////////

    // Use LFINTOSC as the clock source (31 kHz)
    // TODO change this to an external signal
#define TIMER2_LFINTOSC 0b0100
    T2CLKCONbits.CS = TIMER2_LFINTOSC;
    
    // We want the timer to trigger often enough to render the segments, around
    // 4ms. With this TEST timer it's 124 cycles or so.
    T2PRbits.PR = 124;
    
    // Get the timer to trigger an interrupt
    INTCONbits.PEIE = 1;
    PIE4bits.TMR2IE = 1;
    
    // Finally, turn on the timer
    T2CONbits.ON = 1;

#ifndef __DEBUG
    // Wait until internal oscillator stabilizes
    while (!OSCSTATbits.HFOR);
#endif
}
