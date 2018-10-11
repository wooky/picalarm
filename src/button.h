#ifndef PICALARM_BUTTON_H_
#define PICALARM_BUTTON_H_

#include <stdint.h>

#define TICKS_FOR_PRESS 62

typedef struct {
    const uint8_t button_mask;
    uint8_t ticks_pushed;
} button;

inline void button_tick();

static bit button_is_pressed(button* btn);

#endif  //PICALARM_BUTTON_H_
