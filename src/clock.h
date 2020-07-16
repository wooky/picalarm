#ifndef PICALARM_CLOCK_H_
#define PICALARM_CLOCK_H_

#include "pinout.h"

#define CYCLES_PER_TICK 128     // Approx 4ms @ 32.768kHz
#define TICKS_PER_SECOND 247    // IDK

inline void clock_tick();

inline static void clock_increment_second();

#endif  //PICALARM_CLOCK_H_
