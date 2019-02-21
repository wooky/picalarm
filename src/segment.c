#include "segment.h"
#include "button.h"
#include "pinout.h"

#define LED_SEG_ALL LED_SEG_TOP | LED_SEG_TOP_LEFT | LED_SEG_TOP_RIGHT | LED_SEG_MID | LED_SEG_BOT_LEFT | LED_SEG_BOT_RIGHT | LED_SEG_BOT

const uint8_t digit_masks[10] = {
    LED_SEG_TOP | LED_SEG_TOP_LEFT | LED_SEG_TOP_RIGHT | LED_SEG_BOT_LEFT | LED_SEG_BOT_RIGHT | LED_SEG_BOT,
    LED_SEG_TOP_RIGHT | LED_SEG_BOT_RIGHT,
    LED_SEG_TOP | LED_SEG_TOP_RIGHT | LED_SEG_MID | LED_SEG_BOT_LEFT | LED_SEG_BOT,
    LED_SEG_TOP | LED_SEG_TOP_RIGHT | LED_SEG_MID | LED_SEG_BOT_RIGHT | LED_SEG_BOT,
    LED_SEG_TOP_LEFT | LED_SEG_TOP_RIGHT | LED_SEG_MID | LED_SEG_BOT_RIGHT,
    LED_SEG_TOP | LED_SEG_TOP_LEFT | LED_SEG_MID | LED_SEG_BOT_RIGHT | LED_SEG_BOT,
    LED_SEG_TOP | LED_SEG_TOP_LEFT | LED_SEG_MID | LED_SEG_BOT_LEFT | LED_SEG_BOT_RIGHT | LED_SEG_BOT,
    LED_SEG_TOP | LED_SEG_TOP_RIGHT | LED_SEG_BOT_RIGHT,
    LED_SEG_ALL,
    LED_SEG_TOP | LED_SEG_TOP_LEFT | LED_SEG_TOP_RIGHT | LED_SEG_MID | LED_SEG_BOT_RIGHT | LED_SEG_BOT
};

segment hours_tens = {0, 0, 9, CATHODE_HOURS_TENS, &minutes_ones, segment_incrementer_standard};
segment hours_ones = {0, 0, 9, CATHODE_HOURS_ONES, &hours_tens, segment_incrementer_for_hours_ones};
segment minutes_tens = {0, 0, 5, CATHODE_MINUTES_TENS, &hours_ones, segment_incrementer_standard};
segment minutes_ones = {0, 0, 9, CATHODE_MINUTES_ONES, &minutes_tens, segment_incrementer_standard};

uint8_t seconds_indicator_state = 0;

inline void segment_toggle_seconds()
{
    seconds_indicator_state ^= LED_SECONDS_INDICATOR;
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
    LED_SEG_LAT = digit_masks[value] | seconds_indicator_state;
    seg = seg->next;
}

static __bit segment_incrementer_standard(segment* seg, bool adjust_alarm)
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

static __bit segment_incrementer_for_hours_ones(segment* seg, bool adjust_alarm)
{
    if (adjust_alarm && seg->alarm_value == 3 && seg->next->alarm_value == 2)
    {
        seg->alarm_value = 0;
        seg->next->alarm_value = 0;
        return 1;
    }
    if (seg->value == 3 && seg->next->value == 2)
    {
        seg->value = 0;
        seg->next->value = 0;
        return 1;
    }
    return segment_incrementer_standard(seg, adjust_alarm);
}
