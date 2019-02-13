#ifndef PICALARM_CLOCK_H_
#define PICALARM_CLOCK_H_

#include "pinout.h"

#define TICK_LENGTH_MS 4

inline void clock_tick();

inline static void clock_increment_second();

#endif  //PICALARM_CLOCK_H_
