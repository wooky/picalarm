#ifndef PICALARM_BUTTON_H_
#define PICALARM_BUTTON_H_

#include <stdbool.h>
#include <stdint.h>

#define TICKS_FOR_PRESS 62

typedef struct {
    const uint8_t button_mask;
    const bool reset_ticks_between_holds;
    uint8_t ticks_pushed;
} button;

bool button_alarm_pressed;

inline void button_tick();

static bool button_is_pressed(button* btn);

#endif  //PICALARM_BUTTON_H_
