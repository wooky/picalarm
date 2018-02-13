#ifndef PICALARM_CLOCK_H_
#define	PICALARM_CLOCK_H_

//Length of a tick in ms, equivalent to the WDT period, ***minus one***
//The program is written in such a way that if you divide 1000 by the tick
//length, the result will
// (a) be an integer (strongly recommended)
// (b) fit in a byte/8 bits (mandatory, otherwise all hell breaks loose)
#define TICK_LENGTH 7

inline void clock_tick();

inline static void clock_increment_second();

#endif  //PICALARM_CLOCK_H_
