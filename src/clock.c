#include "clock.h"
#include "timing.h"
#include <stdint.h>

inline void clock_tick()
{
    static uint8_t ticks = 0;
    if (ticks == TICKS_PER_SECOND - 1)
    {
        ticks = 0;
        clock_increment_second();
        __second_elapsed = true;
    }
    else
    {
        ticks++;
        __second_elapsed = false;
    }
}

inline static void clock_increment_second()
{
    static uint8_t seconds = 0;
    if (seconds == 59)
    {
        seconds = 0;
        __minute_elapsed = true;
    }
    else
    {
        seconds++;
        __minute_elapsed = false;
    }
}
