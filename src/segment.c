#include "segment.h"
#include "button.h"
#include "clock.h"
#include "pinout.h"

#define SEGMENT_COUNT_MINUS_1 (SEGMENT_COUNT - 1)

const uint8_t digit_masks[10] = {
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

#define BUILD_SEGMENT_PAIRS() { \
    { \
        {CATHODE_HOURS_TENS, true, 0}, \
        {CATHODE_HOURS_ONES, false, 0}, \
        2, 3 \
    }, \
    { \
        {CATHODE_MINUTES_TENS, false, 0}, \
        {CATHODE_MINUTES_ONES, false, 0}, \
        5, 9 \
    } \
}
segment_pair clock_segment_pair[2] = BUILD_SEGMENT_PAIRS();
segment_pair alarm_segment_pair[2] = BUILD_SEGMENT_PAIRS();

segment_single* clock_segments[SEGMENT_COUNT] = {
    &clock_segment_pair[0].segment_tens, &clock_segment_pair[0].segment_ones,
    &clock_segment_pair[1].segment_tens, &clock_segment_pair[1].segment_ones
};
segment_single* alarm_segments[SEGMENT_COUNT] = {
    &alarm_segment_pair[0].segment_tens, &alarm_segment_pair[0].segment_ones,
    &alarm_segment_pair[1].segment_tens, &alarm_segment_pair[1].segment_ones
};

uint8_t seconds_indicator_state = 0;

inline void segment_tick()
{
    if (CLOCK_SECOND_ELAPSED())
    {
        segment_toggle_seconds();
    }
    
    bool alarm = IS_BUTTON_PRESSED(BTN_ALARM_ADJUST);
    if (CLOCK_MINUTE_ELAPSED() || IS_BUTTON_PRESSED(BTN_MINUTE))
    {
        if (segment_increment(1, alarm))
        {
            segment_increment(0, alarm);
        }
    }
    if (IS_BUTTON_PRESSED(BTN_HOUR))
    {
        segment_increment(0, alarm);
    }
    
    segment_render(alarm);
}

inline void segment_toggle_seconds()
{
    seconds_indicator_state ^= LED_SECONDS_INDICATOR;
}

bool segment_increment(uint8_t idx, bool alarm)
{
    segment_pair *seg = (alarm ? &alarm_segment_pair : &clock_segment_pair)[idx];
    if (seg->segment_tens.value == seg->max_tens && seg->segment_ones.value == seg->max_ones)
    {
        seg->segment_tens.value = 0;
        seg->segment_ones.value = 0;
        return true;
    }
    
    if (seg->segment_ones.value == 9)
    {
        seg->segment_tens.value++;
        seg->segment_ones.value = 0;
    }
    else
    {
        seg->segment_ones.value++;
    }
    return false;
}

inline void segment_render(bool alarm)
{
    static uint8_t current_segment_rendered = 0;
    segment_single *seg = (alarm ? alarm_segments : clock_segments)[current_segment_rendered];
    CATHODE_LAT = 0;
    uint8_t digit = (seg->no_zero_render && seg->value == 0) ? 0 : digit_masks[seg->value];
    LED_SEG_LAT = digit | seconds_indicator_state;
    CATHODE_LAT = seg->cathode_bitmask;
    current_segment_rendered += (current_segment_rendered == SEGMENT_COUNT_MINUS_1) ? -SEGMENT_COUNT_MINUS_1 : 1;
}
