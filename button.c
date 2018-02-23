#include "button.h"
#include "pinout.h"
#include "segment.h"

static button button_minutes = {BTN_MINUTE, 0};
static button button_hours = {BTN_HOUR, 0};
static button button_alarm = {BTN_ALARM_ADJUST, 0};

inline void button_tick()
{
    signed char minutes_pressed = button_is_pressed(&button_minutes);
    signed char hours_pressed = button_is_pressed(&button_hours);

    if (minutes_pressed)
    {
        segment_increment_minute();
    }
    if (hours_pressed)
    {
        segment_increment_hour();
    }
}

static bit button_is_pressed(button* btn)
{
    if (!(BUTTON_PORT & btn->button_mask))
    {
        btn->ticks_pushed = 0;
        return 0;
    }

    unsigned char current_value = btn->ticks_pushed;

    if (current_value == TICKS_FOR_PRESS)
    {
        btn->ticks_pushed = 0;
        return 1;
    }
    else
    {
        btn->ticks_pushed = ++current_value;
        return 0;
    }
}
