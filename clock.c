#include "clock.h"
#include "segment.h"

inline void clock_tick()
{
    static unsigned char tick = 0;
    if(tick == TICK_LENGTH)
    {
        tick = 0;
        clock_increment_second();
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
