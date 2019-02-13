#ifndef PICALARM_PINOUT_H_
#define PICALARM_PINOUT_H_

#include <xc.h>

//The segments of an LED are defined as such:
//
//  TOP
// T   T
// L   R
//  MID
// B   B
// L   R
//  BOT
#define LED_SEG_LAT       PORTC
#define LED_SEG_TOP       _PORTC_RC4_MASK
#define LED_SEG_TOP_LEFT  _PORTC_RC6_MASK
#define LED_SEG_TOP_RIGHT _PORTC_RC0_MASK
#define LED_SEG_MID       _PORTC_RC1_MASK
#define LED_SEG_BOT_LEFT  _PORTC_RC7_MASK
#define LED_SEG_BOT_RIGHT _PORTC_RC5_MASK
#define LED_SEG_BOT       _PORTC_RC3_MASK

#define LED_SECONDS_INDICATOR    _PORTC_RC2_MASK

#define CATHODE_LAT          PORTB
#define CATHODE_HOURS_TENS   _PORTB_RB6_MASK
#define CATHODE_HOURS_ONES   _PORTB_RB7_MASK
#define CATHODE_MINUTES_TENS _PORTB_RB5_MASK
#define CATHODE_MINUTES_ONES _PORTB_RB4_MASK

#define BUTTON_PORT      PORTA
#define BTN_HOUR         _PORTA_RA0_MASK
#define BTN_MINUTE       _PORTA_RA1_MASK
#define BTN_ALARM_ADJUST _PORTA_RA2_MASK
#define SWT_ALARM        _PORTA_RA3_MASK

#endif  //PICALARM_PINOUT_H_
