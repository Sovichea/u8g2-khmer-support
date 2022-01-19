#include <stdio.h>
#include "u8g2_font_khmer.h"

enum
{
  START,
  STOP,
  BUFFER_UPDATE,
  READ_ASCII,
  READ_KHMER,
  CORRECT_SUB
};

static uint8_t is_base_glyph(uint16_t u)
{
  return (u >= 0x1780 && u <= 0x17B3) || (u >= 0x17D4 && u <= 0x17E9);
}

static u8g2_uint_t u8g2_draw_string_khmer(u8g2_t *u8g2, u8g2_uint_t x, u8g2_uint_t y, const char *str)
{
  uint16_t e, e_prev = 0;
  uint16_t e_buf_in[80] = {0};
  uint16_t e_buf_out[80] = {0};
  uint16_t * in_ptr; 
  uint16_t * out_ptr;
  u8g2_uint_t delta, sum;
  u8x8_utf8_init(u8g2_GetU8x8(u8g2));
  sum = 0;
  in_ptr = (uint16_t*)&e_buf_in;
  out_ptr = (uint16_t*)&e_buf_out;
  for(;;)
  {
    e = u8g2->u8x8.next_cb(u8g2_GetU8x8(u8g2), (uint8_t)*str);
 
    if ( e == 0x0ffff )
    {
      break;
    }
    str++;
    if ( e != 0x0fffe)
    {
      // remap subscript code point to Private Use Area 0xE000
      if (e_prev == 0x17D2)
      {
        e += 0xC880;
        // else if (e >= 0x178A && e <= 0x179C) e += 0xC881;
        // else if (e >= 0x179F && e <= 0x17A0) e += 0xC87F;
        // else if (e == 0x17A2) e = 0xE020;
      }

      // discard COENG code point and store decoded code point to buffer
      if (e != 0x17D2)
      {
        *(in_ptr++) = e;
//        Serial.print("U+"); Serial.print(e, HEX); Serial.print(" ");  
      }
      
      e_prev = e;
    }
  }

  // printf("\n\nShape output:");
  uint8_t state = START;
  uint16_t pref[2] = {0, 0}; // 0: pre-base vowel, 1: sub 2
  uint16_t base = 0;    // base consonant
  uint16_t blwf[3] = {0, 0, 0}; // 0: sub 1/3, 1: sub 1/3, 2: below-base vowel
  uint16_t abvf[2] = {0, 0}; // 0: regshift, 1: above-base vowel
  uint16_t pstf[4] = {0, 0, 0, 0}; // 0: post-base vowel, 1: post-base vowel, 2: post-base vowel
  uint16_t ascii = 0;
  while (state != STOP)
  {
    switch (state)
    {
      case START:
      {
        in_ptr = (uint16_t*)&e_buf_in;
        out_ptr = (uint16_t*)&e_buf_out;
        state = BUFFER_UPDATE;
        break;
      }
      case BUFFER_UPDATE:
      {
        // update ascii
        if (ascii != 0)
        {
          *(out_ptr++) = ascii;
          // printf(" U+%X", ascii);
          ascii = 0;
        }

        // update khmer 
        for (int i = 0; i < 2; ++i)
        {
          if (pref[i] != 0)
          {
            *(out_ptr++) = pref[i];
            // printf(" U+%X", pref[i]);
            pref[i] = 0;
          }
        }

        if (base != 0)
        {
          *(out_ptr++) = base;
          // printf(" U+%X", base);
          base = 0;
        }

        for (int i = 0; i < 3; ++i)
        {
          if (blwf[i] != 0)
          {
            *(out_ptr++) = blwf[i];
            // printf(" U+%X", blwf[i]);
            blwf[i] = 0;
          }
        }

        for (int i = 0; i < 2; ++i)
        {
          if (abvf[i] != 0)
          {
            *(out_ptr++) = abvf[i];
            // printf(" U+%X", abvf[i]);
            abvf[i] = 0;
          }
        }

        for (int i = 0; i < 4; ++i)
        {
          if (pstf[i] != 0)
          {
            *(out_ptr++) = pstf[i];
            // printf(" U+%X", pstf[i]);
            pstf[i] = 0;
          }
        }

        // check for end of string
        if (*(in_ptr) == 0) 
        {
          state = STOP;
        }
        else if (*(in_ptr) < 256)
        {
          state = READ_ASCII;
        }
        else
        {
          state = READ_KHMER;
        }
        break;
      }
      case READ_ASCII:
      {
        ascii = *(in_ptr++);
        state = BUFFER_UPDATE;
        break;
      }
      case READ_KHMER:
      {
        uint16_t u = *(in_ptr);
        /* syllable reorder */
        // check pre-base vowel, then COENG RO
        if (u >= 0x17C1 && u <= 0x17C3) 
        {
          pref[0] = u;
        }
        else if (u == 0xE01A) 
        {
          pref[1] = u;
        }

        // check base consonant
        if (is_base_glyph(u)) 
        {
          base = u;
        }

        // check for sub type 1 and 3, then below-base vowel
        if (u >= 0xE000 && u <= 0xE021 && u != 0xE01A)
        {
          if (blwf[0] == 0) blwf[0] = u;
          else blwf[1] = u;
        }
        else if (u >= 0x17BB && u <= 0x17BD)
        {
          blwf[2] = u;
        }

        // check for regshift, then above-base vowel
        if (u >= 0x17C9 && u <= 0x17D1) abvf[0] = u;
        else if ((u >= 0x17B7 && u <= 0x17BA) || (u == 0x17C6) || (u == 0x17BE))
        {
          if (u == 0x17BE) 
          {
            abvf[1] = u;
            pref[0] = 0x17C1;
          }
          else if (u == 0x17C6 && *(in_ptr-1) == 0x17B6)
          {
            pstf[2] = u;
          }
          else
          {
            abvf[1] = u;
          }
        }

        // support for  ិ៍
        if (u == 0x17CD && abvf[1] == 0x17B7)
        {
          abvf[1] = 0;
          abvf[0] = 0xE064;
        }

        // check for post-base vowel
        if (u == 0x17B6 || u == 0x17BF || u == 0x17C0 || u == 0x17C4 || u == 0x17C5 || u == 0x17C7 || u == 0x17C8)
        {
          if (u == 0x17C7 || u == 0x17C8)
          {
            pstf[2] = u;
          }
          else if (u == 0x17B6 || u == 0x17C4 || u == 0x17C5)
          {
            pstf[1] = u;
          }
          else
          {
            pstf[0] = u;
          }
          
          if (u != 0x17B6 && u != 0x17C7 && u != 0x17C8)
          {
            pref[0] = 0x17C1;
          }
        }

        in_ptr++;

        if (*(in_ptr) < 256 || is_base_glyph(*(in_ptr))) {
          state = CORRECT_SUB;
        }
        break;
      }
      case CORRECT_SUB:
      {
        // substitute COENG RO with longer version if glyph width is
        // smaller or equal to KA
        if (pref[1] != 0 && blwf[0] != 0 &&
          u8g2_GetGlyphWidth(u8g2, base) <= u8g2_GetGlyphWidth(u8g2, 0x1780))
        {
          pref[1] = 0xE02B;
        }

        // substitute BA
        if (base == 0x1794 && (pstf[1] == 0x17B6
          || pstf[1] == 0x17C4 || pstf[1] == 0x17C5))
        {
          base = 0xE062;
        }

        // substitute NHO
        if (base == 0x1789 && blwf[0] != 0)
        {
          base = 0xE061;
          if (blwf[0] == 0xE009)
          {
            blwf[0] = 0xE060;
          }
        }

        // substitute COENG MO and COENG HA
        // if (blwf[1] == 0xE019) blwf[1] = 0xE044;
        // if (blwf[1] == 0xE01F) blwf[1] = 0xE045;

        // subsitute regshift
        if (abvf[0] == 0x17C9 || abvf[0] == 0x17CA)
        {
          if ((abvf[1] >= 0x17B7 && abvf[1] <= 0x17BA) 
            || abvf[1] == 0x17BE
            || pstf[2] == 0x17C6)
          {
            abvf[0] = 0;
            blwf[2] = 0x17BB;
          }
        }

        // substitute below vowel
        if (blwf[0] != 0 && blwf[2] != 0)
        {
          blwf[2] += 0xC880;
        }

        // substitue post vowel
        if (blwf[0] != 0 && pstf[0] != 0) pstf[0] += 0xC880;
        
        state = BUFFER_UPDATE;
        break;
      }
    }
  }
  // printf("\n\r");

  out_ptr = (uint16_t*)e_buf_out;

  while(*(out_ptr) != 0)
  {
    delta = u8g2_DrawGlyph(u8g2, x, y, *(out_ptr++));
    x += delta;
    sum += delta;
  }
  
  return sum;
}

u8g2_uint_t u8g2_DrawKhmer(u8g2_t *u8g2, u8g2_uint_t x, u8g2_uint_t y, const char *str)
{
  u8g2->u8x8.next_cb = u8x8_utf8_next;
  return u8g2_draw_string_khmer(u8g2, x, y, str);
}
