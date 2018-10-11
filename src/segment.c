#include "segment.h"
#include "button.h"
#include "pinout.h"

#define SEGMENT_1 LED_SEG_TOP_RIGHT | LED_SEG_BOT_RIGHT
#define SEGMENT_2 LED_SEG_TOP | LED_SEG_TOP_RIGHT | LED_SEG_MID | LED_SEG_BOT_LEFT | LED_SEG_BOT

const uint8_t digit_masks[10] = {
    LED_SEG_TOP | LED_SEG_TOP_LEFT | LED_SEG_TOP_RIGHT | LED_SEG_BOT_LEFT | LED_SEG_BOT_RIGHT | LED_SEG_BOT,
    SEGMENT_1,
    SEGMENT_2,
    LED_SEG_TOP | LED_SEG_TOP_RIGHT | LED_SEG_MID | LED_SEG_BOT_RIGHT | LED_SEG_BOT,
    LED_SEG_TOP_LEFT | LED_SEG_TOP_RIGHT | LED_SEG_MID | LED_SEG_BOT_RIGHT,
    LED_SEG_TOP | LED_SEG_TOP_LEFT | LED_SEG_MID | LED_SEG_BOT_RIGHT | LED_SEG_BOT,
    LED_SEG_TOP | LED_SEG_TOP_LEFT | LED_SEG_MID | LED_SEG_BOT_LEFT | LED_SEG_BOT_RIGHT | LED_SEG_BOT,
    LED_SEG_TOP | LED_SEG_TOP_RIGHT | LED_SEG_BOT_RIGHT,
    LED_SEG_TOP | LED_SEG_TOP_LEFT | LED_SEG_TOP_RIGHT | LED_SEG_MID | LED_SEG_BOT_LEFT | LED_SEG_BOT_RIGHT | LED_SEG_BOT,
    LED_SEG_TOP | LED_SEG_TOP_LEFT | LED_SEG_TOP_RIGHT | LED_SEG_MID | LED_SEG_BOT_RIGHT | LED_SEG_BOT
};

const uint8_t hours_tens_digit_masks[7] = {
    0, // Blank
    SEGMENT_1,
    SEGMENT_2,
    0, // Unused
    SECONDS_INDICATOR,
    SECONDS_INDICATOR | SEGMENT_1,
    SECONDS_INDICATOR | SEGMENT_2
};

segment hours_tens = {0, 0, 9, CATHODE_HOURS_TENS, hours_tens_digit_masks, &minutes_ones, segment_incrementer_standard};
segment hours_ones = {0, 0, 9, CATHODE_HOURS_ONES, digit_masks, &hours_tens, segment_incrementer_for_hours_ones};
segment minutes_tens = {0, 0, 5, CATHODE_MINUTES_TENS, digit_masks, &hours_ones, segment_incrementer_standard};
segment minutes_ones = {0, 0, 9, CATHODE_MINUTES_ONES, digit_masks, &minutes_tens, segment_incrementer_standard};

#define SECONDS_INDICATOR_MAGIC_VALUE 4

inline void segment_toggle_seconds()
{
    hours_tens.value |= SECONDS_INDICATOR_MAGIC_VALUE;
}

inline void segment_increment_minute(bool adjust_alarm)
{
    segment *curr = &minutes_ones;
    while (!curr->incrementer(curr, adjust_alarm))
    {
        curr = curr->next;
    }
}

inline void segment_increment_hour(bool adjust_alarm)
{
    segment *curr = &hours_ones;
    while (!curr->incrementer(curr, adjust_alarm))
    {
        curr = curr->next;
    }
}

inline void segment_render()
{
    static segment *seg = &minutes_ones;
    int8_t value = button_alarm_pressed ? seg->alarm_value : seg->value;
    CATHODE_LAT = seg->cathode_bitmask;
    LED_SEG_LAT = seg->digit_masks[value];
    seg = seg->next;
}

static bit segment_incrementer_standard(segment* seg, bool adjust_alarm)
{
    uint8_t* current_value = adjust_alarm ? &seg->alarm_value : &seg->value;
    if (*current_value == seg->max)
    {
        *current_value = 0;
        return 0;
    }
    else
    {
        (*current_value)++;
        return 1;
    }
}

static bit segment_incrementer_for_hours_ones(segment* seg, uint8_t adjust_alarm)
{
    if (adjust_alarm && seg->alarm_value == 3 && (seg->next->alarm_value & ~SECONDS_INDICATOR_MAGIC_VALUE) == 2)
    {
        seg->alarm_value = 0;
        seg->next->alarm_value = 0;
        return 1;
    }
    if (seg->value == 3 && (seg->next->value & ~SECONDS_INDICATOR_MAGIC_VALUE) == 2)
    {
        seg->value = 0;
        seg->next->value = 0;
        return 1;
    }
    return segment_incrementer_standard(seg, adjust_alarm);
}
