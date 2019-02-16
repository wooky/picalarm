#include "init.h"
#include "segment.h"
#include "clock.h"
#include "button.h"
#include "buzzer.h"

void main()
{
    init();
    while (1)
    {
        clock_tick();
        button_tick();
        segment_render();
        buzzer_tick();
        
        SLEEP();
    }
}
