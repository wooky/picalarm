#ifndef PICALARM_CLOCK_H_
#define	PICALARM_CLOCK_H_

#include "pinout.h"

#define US_IN_SECONDS 1000000
#define TICK_LENGTH_US 4096

inline void clock_tick();

inline static void clock_increment_second();

#endif  //PICALARM_CLOCK_H_
