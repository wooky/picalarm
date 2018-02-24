#include "init.h"
#include "segment.h"
#include "clock.h"
#include "button.h"

void main()
{
    init();
    while (1)
    {
        clock_set_timer();
        clock_tick();
        button_tick();
        segment_render();
        SLEEP();
    }
}
