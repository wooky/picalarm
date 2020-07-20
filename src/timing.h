#ifndef PICALARM_TIMING_H_
#define PICALARM_TIMING_H_

// 32.768 kHz crystal oscillator timing
#define OSCILLATIONS_PER_TICK   127
#define TICKS_PER_SECOND        256
#define TICKS_FOR_PRESS         62

// RC oscillator timing - approximate with oscilloscope
#define RC_OSCILLATOR_HZ        290_000

// Tone 1 PWM timing
#define TONE1_FREQ_HZ           770
#define TONE1_PRESCALE          1   // 1, 4, or 16

// Tone 2 PWM timing
#define TONE2_FREQ_HZ           960
#define TONE2_PRESCALE          1   // 1, 4, or 16

#endif  // PICALARM_TIMING_H
