#ifndef PICALARM_CLOCK_H_
#define	PICALARM_CLOCK_H_

#include "pinout.h"

#define CLOCK_FREQUENCY_HZ 1000000
#define TICK_LENGTH_MS 4

#define TIMER_EXPIRATION 0x10000 - (CLOCK_FREQUENCY_HZ * TICK_LENGTH_MS / 1000 * 4) + 100
#define CLOCK_SET_TIMER()                           \
    T1CON = _T1CON_nT1SYNC_MASK;                    \
    TMR1 += TIMER_EXPIRATION;                       \
    T1CON = _T1CON_nT1SYNC_MASK | _T1CON_ON_MASK;   \
    PIR4 &= ~_PIR4_TMR1IF_MASK;

inline void clock_set_timer();
inline void clock_tick();

inline static void clock_increment_second();

#endif  //PICALARM_CLOCK_H_
