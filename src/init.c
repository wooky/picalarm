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

    // Operate the timer in 8-bit mode so we can set a period buffer
    T0CON0bits.T016BIT = 0;

    // Use HFINTOSC as the clock source (1 MHz)
#define TIMER0_HFINTOSC 0b011
    T0CON1bits.T0CS = TIMER0_HFINTOSC;

    // Make the timer asynchronous to have it wake up from sleep
    T0CON1bits.T0ASYNC = 1;

    // Make the timer tick every 4096 us
    // For some reason the prescale needs to be twice as big?
#define TIMER0_PRESCALE_8192 0b1101
    T0CON1bits.T0CKPS = TIMER0_PRESCALE_8192;

    // Reaching 4096 us is good enough, so the period buffer can be 1
    TMR0H = 1;

    // To have the timer wake from sleep, interrupts must be enabled
    PIE0bits.TMR0IE = 1;

    // Finally, turn on the timer
    T0CON0bits.T0EN = 1;

#ifndef __DEBUG
    // Wait until internal oscillator stabilizes
    while (!OSCSTATbits.HFOR);
#endif
}
