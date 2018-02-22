#include "init.h"
#include "segment.h"
#include "clock.h"
#include "button.h"

void main()
{
    init();
    CLRWDT();
    while(1)
    {
        clock_tick();
//        button_tick();
        segment_render();
        SLEEP();
    }
}
