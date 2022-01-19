#ifndef U8G2_FONT_KHMER_H_
#define U8G2_FONT_KHMER_H_

#include "u8g2.h"

extern const uint8_t notosans_6x9[2659] U8G2_FONT_SECTION("notosans_6x9");
extern const uint8_t notosans_6x8[2502] U8G2_FONT_SECTION("notosans_6x8");

u8g2_uint_t u8g2_DrawKhmer(u8g2_t *u8g2, u8g2_uint_t x, u8g2_uint_t y, const char *str);

#endif // U8G2_FONT_KHMER_H_