#ifndef PICALARM_SEGMENT_H_
#define PICALARM_SEGMENT_H_

#include <stdbool.h>
#include <stdint.h>

#define SEGMENT_COUNT 4

typedef struct {
    const uint8_t cathode_bitmask;
    const bool no_zero_render: 1;
    uint8_t value: 7;
} segment_single;

typedef struct {
    segment_single segment_tens;
    segment_single segment_ones;
    const uint8_t max_tens: 4;
    const uint8_t max_ones: 4;
} segment_pair;

inline void segment_tick();

// TODO re-add statics
inline  void segment_toggle_seconds();
 bool segment_increment(uint8_t, bool);
inline  void segment_render(bool);

#endif  //PICALARM_SEGMENT_H_
