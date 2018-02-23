#ifndef PICALARM_CLOCK_H_
#define	PICALARM_CLOCK_H_

#define CLOCK_FREQUENCY_HZ 1000000
#define TICK_LENGTH_MS 4

inline void clock_set_timer();
inline void clock_tick();

inline static void clock_increment_second();

#endif  //PICALARM_CLOCK_H_
