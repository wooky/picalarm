#include "clock.h"
#include "segment.h"
#include "pinout.h"

inline void clock_tick()
{
    static float tick = 0;
    if(tick >= TICK_LENGTH)
    {
        tick -= TICK_LENGTH;
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
    if(seconds == 59)
    {
        seconds = 0;
        segment_increment_minute();
    }
    else
    {
        seconds++;
    }
}
