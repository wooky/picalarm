#include "init.h"
#include "segment.h"
#include "clock.h"
#include "button.h"
#include "buzzer.h"

#ifdef __DEBUG
void on_interrupt()
#else
void __interrupt() on_interrupt()
#endif
{
    PIR1bits.CCP1IF = 0;
    clock_tick();
    button_tick();
    segment_render();
    buzzer_tick();
}

void main()
{
    init();
    // Spin, waiting for an interrupt
    while (1)
    {
#ifdef __DEBUG
        on_interrupt();
#endif
        CLRWDT();
    }
}
