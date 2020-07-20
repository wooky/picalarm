#include "clock.h"
#include "buzzer.h"
#include "segment.h"
#include "timing.h"

inline void clock_tick()
{
    static uint8_t ticks = 0;
    if (ticks == TICKS_PER_SECOND - 1)
    {
        ticks = 0;
        clock_increment_second();
        segment_toggle_seconds();
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
        segment_increment_minute(false);
        buzzer_trigger();
    }
    else
    {
        seconds++;
    }
}
