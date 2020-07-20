#ifndef PICALARM_BUTTON_H_
#define PICALARM_BUTTON_H_

#include <stdbool.h>
#include <stdint.h>

uint8_t __all_pressed_buttons;
#define IS_BUTTON_PRESSED(x) (__all_pressed_buttons & x)

typedef struct {
    const uint8_t button_mask: 8;
    const bool reset_ticks_between_holds: 1;
    uint8_t ticks_pushed: 7;
} button;

inline void button_tick();

static uint8_t button_single_tick(button* btn);

#endif  //PICALARM_BUTTON_H_
