#include "init.h"
#include "segment.h"
#include "clock.h"
#include "button.h"

void main()
{
    init();
    CLOCK_SET_TIMER();
    while (1)
    {
        clock_tick();
        button_tick();
        segment_render();

        SLEEP();
        CLOCK_SET_TIMER();
    }
}
