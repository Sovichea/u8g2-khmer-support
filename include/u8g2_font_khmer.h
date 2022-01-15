#ifndef SHAPE_KHMER_H_
#define SHAPE_KHMER_H_

#include "u8g2.h"

extern const uint8_t notosans_6x8[2585] U8G2_FONT_SECTION("notosans_6x8");
extern const uint8_t notosans_6x9[2585] U8G2_FONT_SECTION("notosans_6x9");

u8g2_uint_t u8g2_DrawKhmer(u8g2_t *u8g2, u8g2_uint_t x, u8g2_uint_t y, const char *str);

#endif // SHAPE_KHMER_H_