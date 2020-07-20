#include "button.h"
#include "pinout.h"
#include "segment.h"
#include "timing.h"

static button button_minutes = {BTN_MINUTE, true, 0};
static button button_hours = {BTN_HOUR, true, 0};
static button button_alarm = {BTN_ALARM_ADJUST, false, 0};

inline void button_tick()
{
    bool minutes_pressed = button_is_pressed(&button_minutes);
    bool hours_pressed = button_is_pressed(&button_hours);
    button_alarm_pressed = button_is_pressed(&button_alarm);

    if (minutes_pressed)
    {
        segment_increment_minute(button_alarm_pressed);
    }
    if (hours_pressed)
    {
        segment_increment_hour(button_alarm_pressed);
    }
}

static bool button_is_pressed(button* btn)
{
    if (!(BUTTON_LAT & btn->button_mask))
    {
        btn->ticks_pushed = 0;
        return 0;
    }

    uint8_t current_value = btn->ticks_pushed;

    if (current_value == TICKS_FOR_PRESS)
    {
        if (btn->reset_ticks_between_holds) {
            btn->ticks_pushed = 0;
        }

        return 1;
    }
    else
    {
        btn->ticks_pushed = ++current_value;
        return 0;
    }
}
