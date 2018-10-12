#include "buzzer.h"
#include "segment.h"

#define ALARM_SWITCHED_ON (BUTTON_PORT & SWT_ALARM)
static bool alarm_ringing;

inline void buzzer_trigger()
{
    if (ALARM_SWITCHED_ON && hours_tens.value == hours_tens.alarm_value
            && hours_ones.value == hours_ones.alarm_value
            && minutes_tens.value == minutes_tens.alarm_value
            && minutes_ones.value == minutes_ones.alarm_value)
    {
        // TODO setup PWM
        alarm_ringing = true;
    }
}

inline void buzzer_tick()
{
    if (alarm_ringing)
    {
        if (ALARM_SWITCHED_ON)
        {
            // TODO maybe change the frequency or something here
        }
        else
        {
            // TODO de-setup PWM
            alarm_ringing = false;
        }
    }
}
