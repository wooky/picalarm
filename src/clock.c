#include "clock.h"
#include "segment.h"

inline void clock_tick()
{
    static uint24_t elapsed = 0;
    PIR0 &= ~_PIR0_TMR0IF_MASK;
    elapsed += TICK_LENGTH_US;
    while (elapsed >= US_IN_SECONDS)
    {
        elapsed -= US_IN_SECONDS;
        clock_increment_second();
        SECONDS_INDICATOR_PORT ^= SECONDS_INDICATOR_MASK;
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
