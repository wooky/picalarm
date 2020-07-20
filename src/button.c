#include "button.h"
#include "pinout.h"
#include "timing.h"

static button button_minutes = {BTN_MINUTE, true, 0};
static button button_hours = {BTN_HOUR, true, 0};
static button button_alarm = {BTN_ALARM_ADJUST, false, 0};

inline void button_tick()
{
    __all_pressed_buttons =
        button_single_tick(&button_minutes) |
        button_single_tick(&button_hours) |
        button_single_tick(&button_alarm);
}

static uint8_t button_single_tick(button* btn)
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

        return btn->button_mask;
    }
    else
    {
        btn->ticks_pushed = ++current_value;
        return 0;
    }
}
