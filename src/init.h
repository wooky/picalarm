#ifndef PICALARM_INIT_H_
#define PICALARM_INIT_H_

// PIC16F73 Configuration Bit Settings

// 'C' source line config statements

// CONFIG
#pragma config FOSC = RC        // Oscillator Selection bits (RC oscillator)
#pragma config WDTE = ON        // Watchdog Timer Enable bit (WDT enabled)
#pragma config PWRTE = OFF      // Power-up Timer Enable bit (PWRT disabled)
#pragma config CP = OFF         // FLASH Program Memory Code Protection bit (Code protection off)
#pragma config BOREN = ON       // Brown-out Reset Enable bit (BOR enabled)

// #pragma config statements should precede project file includes.
// Use project enums instead of #define for ON and OFF.

#include <xc.h>

inline void init();

#endif  //PICALARM_INIT_H_
