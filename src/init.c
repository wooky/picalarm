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

    // Tune HFINTOSC to be more accurate
    OSCTUNE = 0b000100;

    // Operate the timer in 8-bit mode so we can set a period buffer
    T0CON0bits.T016BIT = 0;

    // Use HFINTOSC as the clock source (1 MHz)
#define TIMER0_HFINTOSC 0b011
    T0CON1bits.T0CS = TIMER0_HFINTOSC;

    // Make the timer asynchronous to have it wake up from sleep
    T0CON1bits.T0ASYNC = 1;

    // Make the timer tick every 4000 us
    // At 1 MHZ (1 us), we would need to divide that by 4000
    // Setting the prescaler to 32, the period buffer will be set to 125
    // However, for some reason, the prescaler really needs to be set 4 times
    // higher
#define TIMER0_PRESCALER_128 0b0111
    T0CON1bits.T0CKPS = TIMER0_PRESCALER_128;
#define PERIOD_BUFFER 125
    TMR0H = PERIOD_BUFFER;

    // To have the timer wake from sleep, interrupts must be enabled
    PIE0bits.TMR0IE = 1;

    // Finally, turn on the timer
    T0CON0bits.T0EN = 1;

#ifndef __DEBUG
    // Wait until internal oscillator stabilizes
    while (!OSCSTATbits.HFOR);
#endif
}
