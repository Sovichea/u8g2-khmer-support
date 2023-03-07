#ifndef U8G2_FONT_KHMER_H_
#define U8G2_FONT_KHMER_H_

#include "u8g2.h"

extern const uint8_t waffle_10_new_encoding[] U8G2_FONT_SECTION(waffle_10_new_encoding);
extern const uint8_t waffle_10[] U8G2_FONT_SECTION(waffle_10);
extern const uint8_t u8g2KHTest_R16[] U8G2_FONT_SECTION(u8g2KHTest_R16);
extern const uint8_t notosans_6x9[] U8G2_FONT_SECTION(notosans_6x9);
extern const uint8_t notosans_6x8[] U8G2_FONT_SECTION(notosans_6x8);
extern const uint8_t khmerR12_waffle[] U8G2_FONT_SECTION(khmerR12_waffle);
extern const uint8_t khmerR12[] U8G2_FONT_SECTION(khmerR12);

u8g2_uint_t u8g2_DrawKhmer(u8g2_t *u8g2, u8g2_uint_t x, u8g2_uint_t y, const char *str);

#endif // U8G2_FONT_KHMER_H_