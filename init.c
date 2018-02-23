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

    // Use HFINTOSC as the clock source (1 MHz)
#define TIMER1_HFINTOSC 0b0011
    T1CLK = TIMER1_HFINTOSC;

    // To have the timer wake from sleep, interrupts must be enabled
    PIE4 |= _PIE4_TMR1IE_MASK; // Enable TIMER1 interrupts
    INTCON |= _INTCON_PEIE_MASK; // Enable peripheral interrupts

#ifndef __DEBUG
    // Wait until internal oscillator stabilizes
    while (!OSCSTATbits.HFOR);
#endif
}
