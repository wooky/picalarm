#ifndef PICALARM_BUTTON_H_
#define PICALARM_BUTTON_H_

#include <stdbool.h>
#include <stdint.h>

typedef struct {
    const uint8_t button_mask: 8;
    const bool reset_ticks_between_holds: 1;
    uint8_t ticks_pushed: 7;
} button;

bool button_alarm_pressed;

inline void button_tick();

static bool button_is_pressed(button* btn);

#endif  //PICALARM_BUTTON_H_
