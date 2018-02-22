#ifndef PICALARM_CLOCK_H_
#define	PICALARM_CLOCK_H_

//Number of ticks in a second
//Good luck figuring this number out
#define TICK_LENGTH 157.125

inline void clock_tick();

inline static void clock_increment_second();

#endif  //PICALARM_CLOCK_H_
