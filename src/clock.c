#include "clock.h"
#include "segment.h"
#include "pinout.h"

inline void clock_set_timer()
{
    // Clear interrupt so we can go to sleep next time
    PIR4 &= ~_PIR4_TMR1IF_MASK;

    // Timer expiration. Notes:
    //  - Timer counts up until it overflows, which is why it's subtracted from
    //    the largest 16-bit value (plus one?)
    //  - Timer only increments as fast as each instruction does, i.e. every 4
    //    clock cycles, hence the multiplication by 4
#define TIMER_EXPIRATION 0x10000 - (CLOCK_FREQUENCY_HZ * TICK_LENGTH_MS / 1000 * 4)
    TMR1L = (unsigned char) (TIMER_EXPIRATION);
    TMR1H = (TIMER_EXPIRATION) >> 8;

    // Finally, turn on the timer unsynchronized (this lets us run it during
    // sleep and allow the device to wake up, I think)
    T1CON = _T1CON_nT1SYNC_MASK | _T1CON_ON_MASK;
}

inline void clock_tick()
{
#define TICKS_PER_SECOND 1000/TICK_LENGTH_MS
    static unsigned char tick = 0;
    if (tick >= TICKS_PER_SECOND)
    {
        tick = 0;
        clock_increment_second();
        SECONDS_INDICATOR_PORT ^= SECONDS_INDICATOR_MASK;
    }
    else
    {
        tick++;
    }
}

inline static void clock_increment_second()
{
    static unsigned char seconds = 0;
    if (seconds == 59)
    {
        seconds = 0;
        segment_increment_minute();
    }
    else
    {
        seconds++;
    }
}
