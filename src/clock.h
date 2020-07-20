#ifndef PICALARM_CLOCK_H_
#define PICALARM_CLOCK_H_

#include <stdbool.h>

bool __second_elapsed;
#define CLOCK_SECOND_ELAPSED() (__second_elapsed)

bool __minute_elapsed;
#define CLOCK_MINUTE_ELAPSED() (__second_elapsed && __minute_elapsed)

inline void clock_tick();

inline static void clock_increment_second();

#endif  //PICALARM_CLOCK_H_
