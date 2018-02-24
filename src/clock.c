#include "clock.h"
#include "segment.h"

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
