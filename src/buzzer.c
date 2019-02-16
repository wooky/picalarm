#include "buzzer.h"
#include "segment.h"

#define ALARM_SWITCHED_ON (BUTTON_LAT & SWT_ALARM)
#define BUZZER_RINGING (BUZZER_LAT & BUZZER_PIN)

inline void buzzer_trigger()
{
    if (ALARM_SWITCHED_ON && hours_tens.value == hours_tens.alarm_value
            && hours_ones.value == hours_ones.alarm_value
            && minutes_tens.value == minutes_tens.alarm_value
            && minutes_ones.value == minutes_ones.alarm_value)
    {
        // TODO setup PWM using these steps (from section 29.1.9 in the manual):
        // 1. Set buzzer pin to input
        BUZZER_TRIS |= BUZZER_PIN;
        
        // 2. Configure PWM polarity
        // Skip, it will always be active high
        
        // 3. Load PWM period value
        // TODO
        
        // 4. Load PWM duty cycle
        // TODO
        
        // oh my fuck this is getting out of hand
    }
}

inline void buzzer_tick()
{
    if (BUZZER_RINGING)
    {
        if (ALARM_SWITCHED_ON)
        {
            // TODO maybe change the frequency or something here
        }
        else
        {
            // TODO de-setup PWM
        }
    }
}
