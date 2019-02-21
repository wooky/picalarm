#ifndef PICALARM_SEGMENT_H_
#define PICALARM_SEGMENT_H_

#include <stdbool.h>
#include <stdint.h>

typedef struct _segment {
    uint8_t value;
    uint8_t alarm_value;
    const uint8_t max;
    const uint8_t cathode_bitmask;
    struct _segment* next;
    __bit(*incrementer)(struct _segment*, bool);
} segment;

extern segment hours_tens;
extern segment hours_ones;
extern segment minutes_tens;
extern segment minutes_ones;

inline void segment_toggle_seconds();
inline void segment_increment_minute(bool);
inline void segment_increment_hour(bool);
inline void segment_render();

static __bit segment_incrementer_standard(segment*, bool);
static __bit segment_incrementer_for_hours_ones(segment*, bool);

#endif  //PICALARM_SEGMENT_H_
