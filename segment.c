#include "segment.h"
#include "pinout.h"

segment hours_tens =   { 0, 2, CATHODE_HOURS_TENS,   &minutes_ones, segment_incrementer_standard };
segment hours_ones =   { 0, 9, CATHODE_HOURS_ONES,   &hours_tens,   segment_incrementer_for_hours_ones };
segment minutes_tens = { 0, 5, CATHODE_MINUTES_TENS, &hours_ones,   segment_incrementer_standard };
segment minutes_ones = { 0, 9, CATHODE_MINUTES_ONES, &minutes_tens, segment_incrementer_standard };

const unsigned char digit_masks[10] = {
    LED_SEG_TOP | LED_SEG_TOP_LEFT | LED_SEG_TOP_RIGHT | LED_SEG_BOT_LEFT | LED_SEG_BOT_RIGHT | LED_SEG_BOT,
    LED_SEG_TOP_RIGHT | LED_SEG_BOT_RIGHT,
    LED_SEG_TOP | LED_SEG_TOP_RIGHT | LED_SEG_MID | LED_SEG_BOT_LEFT | LED_SEG_BOT,
    LED_SEG_TOP | LED_SEG_TOP_RIGHT | LED_SEG_MID | LED_SEG_BOT_RIGHT | LED_SEG_BOT,
    LED_SEG_TOP_LEFT | LED_SEG_TOP_RIGHT | LED_SEG_MID | LED_SEG_BOT_RIGHT,
    LED_SEG_TOP | LED_SEG_TOP_LEFT | LED_SEG_MID | LED_SEG_BOT_RIGHT | LED_SEG_BOT,
    LED_SEG_TOP | LED_SEG_TOP_LEFT | LED_SEG_MID | LED_SEG_BOT_LEFT | LED_SEG_BOT_RIGHT | LED_SEG_BOT,
    LED_SEG_TOP | LED_SEG_TOP_RIGHT | LED_SEG_BOT_RIGHT,
    LED_SEG_TOP | LED_SEG_TOP_LEFT | LED_SEG_TOP_RIGHT | LED_SEG_MID | LED_SEG_BOT_LEFT | LED_SEG_BOT_RIGHT | LED_SEG_BOT,
    LED_SEG_TOP | LED_SEG_TOP_LEFT | LED_SEG_TOP_RIGHT | LED_SEG_MID | LED_SEG_BOT_RIGHT | LED_SEG_BOT
};

inline void segment_increment_minute()
{
    segment *curr = &minutes_ones;
    while(!curr->incrementer(curr))
    {
        curr = curr->next;
    }
}

inline void segment_increment_hour()
{
    segment *curr = &hours_ones;
    while(!curr->incrementer(curr))
    {
        curr = curr->next;
    }
}

inline void segment_render()
{
    static segment *seg = &minutes_ones;
    LED_SEG_LAT = digit_masks[seg->value];
    seg = seg->next;
}

static bit segment_incrementer_standard(segment* seg)
{
    unsigned char current_value = seg->value;
    if(current_value == seg->max)
    {
        seg->value = 0;
        return 0;
    }
    else
    {
        seg->value = ++current_value;
        return 1;
    }
}

static bit segment_incrementer_for_hours_ones(segment* seg)
{
    if(seg->value == 3 && seg->next->value == 2)
    {
        seg->value = 0;
        seg->next->value = 0;
        return 1;
    }
    else
    {
        return segment_incrementer_standard(seg);
    }
}
