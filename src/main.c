#include "init.h"
#include "segment.h"
#include "clock.h"
#include "button.h"
#include "buzzer.h"

void main()
{
    init();
    // Spin, waiting for an interrupt
    while (1)
    {
        CLRWDT();
    }
}

void __interrupt() on_interrupt()
{
    PIR1bits.CCP1IF = 0;
    clock_tick();
    button_tick();
    segment_render();
    buzzer_tick();
}
