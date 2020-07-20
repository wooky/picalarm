#include "buzzer.h"

#define ALARM_SWITCHED_ON (BUTTON_LAT & SWT_ALARM)
#define BUZZER_RINGING (BUZZER_LAT & BUZZER_PIN)

inline void buzzer_trigger()
{
#if 0
    if (ALARM_SWITCHED_ON && hours_tens.value == hours_tens.alarm_value
            && hours_ones.value == hours_ones.alarm_value
            && minutes_tens.value == minutes_tens.alarm_value
            && minutes_ones.value == minutes_ones.alarm_value)
    {
        // Setup PWM using these steps (from section 29.1.9 in the manual):
        // Assume 770Hz, then 960Hz
        // 1. Set buzzer pin to input
        BUZZER_TRIS |= BUZZER_PIN;
        
        // 2. Configure PWM polarity
        // Skip, it will always be active high
        
        // 3. Load PWM period value
        // With PR2=80 and prescale=4, frequency becomes 771.60 Hz
#define TIMER2_PR 80
#define TIMER2_PRESCALE 4
        T2PRbits.PR = TIMER2_PR;
        
        // 4. Load PWM duty cycle
        // Duty cycle is 50%, so PWM3DC becomes 0.5*4(80+1) = 162
#define MY_PWM3DC 162
        PWM3DCHbits.DC = PWM3DC >> 2;
        PWM3DCLbits.DC = PWM3DC & 0b11;
        
        // 5a. Clear TMR2 interrupt flag
        PIR4bits.TMR2IF = false;
        
        // 5b. Set TMR2 prescale
        T2CONbits.CKPS = TIMER2_PRESCALE;
        
        // 5c. Enable Timer2
        T2CONbits.ON = true;
        
        // 6. Wait until TMR2IF is set
        while (!PIR4bits.TMR2IF);

        // 7a. Enable buzzer pin output
        BUZZER_TRIS &= ~BUZZER_PIN;
        
        // 7b. Route PWM signal to desired pin, i.e. BUZZER_PIN
#define PWM3OUT_PPS 0x0B
        BUZZER_PPS = PWM3OUT_PPS;
        
        // 7c. Enable PWM module
        PWM3CONbits.EN = true;
    }
#endif
}

inline void buzzer_tick()
{
#if 0
    if (BUZZER_RINGING)
    {
        if (ALARM_SWITCHED_ON)
        {
            // TODO maybe change the frequency or something here
        }
        else
        {
            // TODO de-setup PWM
            PWM3CONbits.EN = false;
        }
    }
#endif
}
