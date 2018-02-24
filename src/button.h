#ifndef PICALARM_BUTTON_H_
#define	PICALARM_BUTTON_H_

#define TICKS_FOR_PRESS 62

typedef struct {
    const unsigned char button_mask;
    unsigned char ticks_pushed;
} button;

inline void button_tick();

static bit button_is_pressed(button* btn);

#endif  //PICALARM_BUTTON_H_
