#include "clock.h"
#include "segment.h"

inline void clock_tick()
{
    static uint8_t ticks = 0;
    PIR0 &= ~_PIR0_TMR0IF_MASK;
#define US_IN_SECONDS 1000000
#define TICKS_PER_SECOND US_IN_SECONDS / TICK_LENGTH_US
    if (ticks == TICKS_PER_SECOND - 1)
    {
        ticks = 0;
        clock_increment_second();
        SECONDS_INDICATOR_PORT ^= SECONDS_INDICATOR_MASK;
    }
    else
    {
        ticks++;
    }
}

inline static void clock_increment_second()
{
    static uint8_t seconds = 0;
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
