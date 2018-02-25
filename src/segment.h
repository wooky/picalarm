#ifndef PICALARM_SEGMENT_H_
#define	PICALARM_SEGMENT_H_

#include <stdint.h>

typedef struct _segment {
    uint8_t value;
    const uint8_t max;
    const uint8_t cathode_bitmask;
    struct _segment* next;
    bit(*incrementer)(struct _segment*);
} segment;

extern segment hours_tens;
extern segment hours_ones;
extern segment minutes_tens;
extern segment minutes_ones;

inline void segment_increment_minute();
inline void segment_increment_hour();
inline void segment_render();

static bit segment_incrementer_standard(segment*);
static bit segment_incrementer_for_hours_ones(segment*);

#endif  //PICALARM_SEGMENT_H_
