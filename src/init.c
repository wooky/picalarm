#include "init.h"
#include "pinout.h"

inline void init()
{
    //    ;;;;;;;; PIN SETUP ;;;;;;;;
    //    ; Set all I/O ports to be digital, not analog
#define ADCON1_ALL_DIGITAL 0b110
    ADCON1bits.PCFG = ADCON1_ALL_DIGITAL;

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

    // Use external oscillator as the clock source (32.768 kHz)
    T1CONbits.TMR1CS = 1;
    
    // Make the timer asynchronous to have it wake up from sleep
    T1CONbits.T1INSYNC = 1;
    
    // Get the timer to trigger an interrupt
    PIE1bits.TMR1IE = 1;
    INTCONbits.PEIE = 1;
    
    // Turn on timer oscillator
    T1CONbits.T1OSCEN = 1;
}
