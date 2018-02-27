#include "clock.h"
#include "segment.h"

inline void clock_tick()
{
    static uint8_t ticks = 0;
    PIR0 &= ~_PIR0_TMR0IF_MASK;
    ticks++;
#define US_IN_SECONDS 1000000
#define TICKS_PER_SECOND US_IN_SECONDS / TICK_LENGTH_US
    if (ticks == TICKS_PER_SECOND - 1)
    {
        ticks = 0;
        clock_increment_second();
        SECONDS_INDICATOR_PORT ^= SECONDS_INDICATOR_MASK;
    }
}

inline static void clock_increment_second()
{
    static uint8_t seconds = 0;
    static uint8_t minutes_for_correction = 0;
    if (seconds == 59)
    {
        if (minutes_for_correction == CORRECTION_MIN)
        {
            minutes_for_correction = 0;
        }
        else
        {
            minutes_for_correction++;
            seconds = 0;
            segment_increment_minute();
        }
    }
    else
    {
        seconds++;
    }
}
