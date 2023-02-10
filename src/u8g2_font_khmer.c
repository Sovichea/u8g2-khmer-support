#include <stdio.h>
#include <string.h>
#include "u8g2_font_khmer.h"

#define GLYPH_START 0x1780
#define GLYPH_GET_ORD(x) x - GLYPH_START
#define GLYPH_GET_BASE(x) x - 0xE000 + 0x1780
#define GLYPH_GET_BASE_SUB(b) 0xE000 + GLYPH_GET_ORD(b)
#define GLYPH_GET_BASE_SUB2(b) 0xE050 + GLYPH_GET_ORD(b)
#define GLYPH_GET_VOWEL_SUB(v) 0xE000 + GLYPH_GET_ORD(v)
#define GLYPH_GET_RO_FEATURE(f) 0xE0A0 + GLYPH_GET_ORD(f)
#define GLYPH_GET_TREYSAP_FEATURE(f) 0xE0E0 + GLYPH_GET_ORD(f)

enum {
  CAT_VPRE = 0,
  CAT_COENG_RO,
  CAT_BASE,
  CAT_COENG,
  CAT_COENG_POST,
  CAT_SHIFT,
  CAT_VB,
  CAT_VA,
  CAT_ROBAT,
  CAT_VPOST,
  CAT_MS,
  CAT_MF,
  CAT_OTHER
};

static const uint8_t categories[] = {
  [GLYPH_GET_ORD(0x1780) ... GLYPH_GET_ORD(0x17A2)] = CAT_BASE,
  [GLYPH_GET_ORD(0x17A3) ... GLYPH_GET_ORD(0x17A4)] = CAT_OTHER,
  [GLYPH_GET_ORD(0x17A5) ... GLYPH_GET_ORD(0x17B3)] = CAT_BASE,
  [GLYPH_GET_ORD(0x17B4) ... GLYPH_GET_ORD(0x17B5)] = CAT_OTHER,
  [GLYPH_GET_ORD(0x17B6)]                           = CAT_VPOST,
  [GLYPH_GET_ORD(0x17B7) ... GLYPH_GET_ORD(0x17BA)] = CAT_VA,
  [GLYPH_GET_ORD(0x17BB) ... GLYPH_GET_ORD(0x17BD)] = CAT_VB,
  [GLYPH_GET_ORD(0x17BE) ... GLYPH_GET_ORD(0x17C0)] = CAT_VPOST,
  [GLYPH_GET_ORD(0x17C1) ... GLYPH_GET_ORD(0x17C3)] = CAT_VPRE,
  [GLYPH_GET_ORD(0x17C4) ... GLYPH_GET_ORD(0x17C5)] = CAT_VPOST,
  [GLYPH_GET_ORD(0x17C6)]                           = CAT_MS,
  [GLYPH_GET_ORD(0x17C7) ... GLYPH_GET_ORD(0x17C8)] = CAT_MF,
  [GLYPH_GET_ORD(0x17C9) ... GLYPH_GET_ORD(0x17CA)] = CAT_SHIFT,
  [GLYPH_GET_ORD(0x17CB)]                           = CAT_MS,
  [GLYPH_GET_ORD(0x17CC)]                           = CAT_ROBAT,
  [GLYPH_GET_ORD(0x17CD) ... GLYPH_GET_ORD(0x17D1)] = CAT_MS,
  [GLYPH_GET_ORD(0x17D2)]                           = CAT_COENG,
  [GLYPH_GET_ORD(0x17D3)]                           = CAT_MS,
  [GLYPH_GET_ORD(0x17D4) ... GLYPH_GET_ORD(0x17DC)] = CAT_OTHER,
  [GLYPH_GET_ORD(0x17DD)]                           = CAT_MS,
  [GLYPH_GET_ORD(0x17E0) ... GLYPH_GET_ORD(0x17EB)] = CAT_OTHER
};

#define CAT(g) categories[GLYPH_GET_ORD(g)]

struct unicode_t {
  int charcat;
  int encoding;
};

static void log_unicode_array(struct unicode_t *buf, int size)
{
  for (int i = 0; i < size; ++i)
  {
    if (buf[i].encoding > 0) {
      //printf("0x%x (%d), ", buf[i].encoding, buf[i].charcat);
    }
  }
  //printf("\n");
}

static int data_cmp(const void *a, const void *b)
{
  const struct unicode_t *da = a, *db = b;

  return da->charcat < db->charcat ? -1 : da->charcat > db->charcat;
}

static u8g2_uint_t u8g2_draw_string_khmer(u8g2_t *u8g2, u8g2_uint_t x, u8g2_uint_t y, const char *str)
{
  uint16_t e, e_prev = 0;
  uint16_t e_buf_in[256] = {0};
  uint16_t e_buf_out[256] = {0};
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
 
    if ( e == 0x0ffff ) {
      break;
    }

    str++;
    
    if ( e != 0x0fffe) {
      *(in_ptr++) = e;
    }
  }

  in_ptr = (uint16_t*)&e_buf_in;
  while (*(in_ptr) != 0)
  {
    // start reading khmer consonant cluster
    int has_coeng = 0;
    int has_coeng_post = 0;
    int has_aa = 0;
    int has_va = 0;
    int idx = 0;
    struct unicode_t buf[10] = {0};
    int g = *(in_ptr++);
    if (g < 255 || CAT(g) == CAT_OTHER) {
      *(out_ptr++) = g;
      //printf("0x%x\n", g);
      //printf("\n");
      continue;
    }

    buf[idx++].encoding = g;
    int g_prev = g;
    while(1)
    {
      g = *(in_ptr++);
      if (g < 255 || CAT(g) == CAT_OTHER) {
        in_ptr--;
        break;
      }
      else if (CAT(g_prev) != CAT_COENG && CAT(g) == CAT_BASE) {
        in_ptr--;
        break;
      }

      // add 0x17C1 (េ) for all VPOST glyph
      if (CAT(g) == CAT_VPOST && g != 0x17B6) {
        buf[idx++].encoding = 0x17C1;
      }

      if (g == 0x17C6 || CAT(g) == CAT_VA) has_va = 1;

      buf[idx++].encoding = g;
      g_prev = g;
    }

    if (idx == 1) {
      *(out_ptr++) = buf[0].encoding;
      //printf("0x%x (%d)\n", buf[0].encoding, CAT(buf[0].encoding));
      //printf("\n");
      continue;
    }

    // start shaping
  
    // create a category map
    for (int i = 0; i < sizeof(buf)/sizeof(*buf); ++i)
    {
      buf[i].charcat = CAT_OTHER;
      if (buf[i].encoding > 0) {
        // substitute COENG and COENG RO then remove 0x17D2
        buf[i].charcat = CAT(buf[i].encoding);
        if (i > 0 && buf[i-1].encoding == 0x17D2) {
          if (buf[i].encoding != 0x179A) has_coeng = 1;
          buf[i].encoding = GLYPH_GET_BASE_SUB(buf[i].encoding);
          buf[i].charcat = CAT_COENG;
          buf[i-1].encoding = 0;
          buf[i-1].charcat = CAT_OTHER;
        }

        if (buf[i].encoding == 0x1789 || buf[i].encoding == 0x17A1)
        {
          has_coeng = 1;
        }
      }
    }

    // first sort to push all encoding with 0 values to the end of array
    qsort(buf, sizeof(buf)/sizeof(*buf), sizeof(*buf), data_cmp);

    // apply feature for COENG RO and COENG POST
    for (int i = 1; i < sizeof(buf)/sizeof(*buf); ++i)
    {
      // reposition COENG RO
      if (buf[i].encoding == GLYPH_GET_BASE_SUB(0x179A)) {
        buf[i].charcat = CAT_COENG_RO;
      }
      
      if (buf[i].encoding == GLYPH_GET_BASE_SUB(0X1783) ||
          buf[i].encoding == GLYPH_GET_BASE_SUB(0X1788) ||
          buf[i].encoding == GLYPH_GET_BASE_SUB(0X1783) ||
          buf[i].encoding == GLYPH_GET_BASE_SUB(0X1799))
      {
        buf[i].charcat = CAT_COENG_POST;
        has_coeng_post = 1;
      }
      // count the number of COENG and AA
      if (buf[i].encoding == 0x17B6 || buf[i].encoding == 0x17C4 || buf[i].encoding == 0x17C5) has_aa = 1;
    }

    for (int i = 0; i < sizeof(buf)/sizeof(*buf); ++i)
    {
      if (buf[i].encoding > 0) {

        // apply second substitute feature
        if (buf[i].charcat == CAT_COENG_RO && has_coeng && !has_coeng_post) {
          if (buf[i-2].encoding != 0x179F && buf[i-2].encoding != 0x1799 && buf[i-1].encoding != 0x178D && buf[i-1].encoding != 0x178E && 
              buf[i-2].encoding != 0x179B && buf[i-2].encoding != 0x17A0 && buf[i-1].encoding != 0x1783 && buf[i-1].encoding != 0x1788 &&
              buf[i-2].encoding != 0x1789)
          {
            buf[i].encoding = GLYPH_GET_BASE_SUB2(GLYPH_GET_BASE(buf[i].encoding));
          }
        }
        else if (buf[i].charcat == CAT_COENG && buf[i-1].charcat == CAT_BASE) {

        }

        if (buf[i].charcat == CAT_COENG_POST && buf[i-1].charcat == CAT_COENG) {
          buf[i].encoding = GLYPH_GET_BASE_SUB2(GLYPH_GET_BASE(buf[i].encoding));
        }

        // apply feature for RO
        if (buf[i].encoding == 0x179A || buf[i].encoding == 0x179C) {
          if (buf[i+1].charcat == CAT_VA || buf[i+1].encoding == 0x17C6 || buf[i+1].encoding == 0x17C9) {
            buf[i+1].encoding = GLYPH_GET_RO_FEATURE(buf[i+1].encoding);
          }
        }

        // apply feature for TREYSAP
        if (buf[i].encoding == 0x1794 && buf[i+1].encoding == 0x17CA) {
          i++;
          buf[i+1].encoding = GLYPH_GET_TREYSAP_FEATURE(buf[i+1].encoding);
        }
        // apply reg shift feature
        else if (buf[i].encoding == 0x17C9 || buf[i].encoding == 0x17CA) {
          if (has_va) {
            buf[i].encoding = 0x17BB;
            buf[i].charcat = CAT(buf[i].encoding); 
          }
        }
      }
    }
    //printf("before sort: "); log_unicode_array(buf, sizeof(buf)/sizeof(*buf));
    qsort(buf, sizeof(buf)/sizeof(*buf), sizeof(*buf), data_cmp);
    //printf("after sort: "); log_unicode_array(buf, sizeof(buf)/sizeof(*buf));
    //printf("\n");

    // apply ligature
    for (int i = 0; i < sizeof(buf)/sizeof(*buf); ++i)
    {
      if (buf[i].encoding > 0) {
        // apply ិ៍ feature
        if (buf[i].encoding == 0x17B7 && buf[i+1].encoding == 0x17CD) {
          buf[i].encoding = 0xE030;
          buf[i+1].encoding = 0;
          buf[i+1].charcat = CAT_OTHER;
        }

        // apply BA feature
        if (buf[i].encoding == 0x1794 && has_aa && !has_coeng_post) {
          buf[i].encoding = 0x17EA;
        }

        // apply NHO feature
        if (buf[i].encoding == 0x1789) {
          if (buf[i+1].charcat == CAT_COENG || buf[i+1].charcat == CAT_COENG_POST) {
            buf[i].encoding = 0x17EB;
          }
          if (GLYPH_GET_BASE(buf[i+1].encoding) == 0x1789) {
            buf[i+1].encoding = GLYPH_GET_BASE_SUB2(0x1789);
          }
        }

        // apply second vowel feature
        if (buf[i].charcat == CAT_VPOST && has_coeng)
        {
          if (buf[i].encoding == 0x17BF || buf[i].encoding == 0x17C0) {
            buf[i].encoding = GLYPH_GET_VOWEL_SUB(buf[i].encoding);
          }
        }

        if (buf[i].charcat == CAT_VB && has_coeng)
        {
          buf[i].encoding = GLYPH_GET_VOWEL_SUB(buf[i].encoding);
        }
      }
    }

    for (int i = 0; i < sizeof(buf)/sizeof(*buf); ++i)
    {
      if (buf[i].encoding > 0) {
        *(out_ptr++) = buf[i].encoding;
      }
    }
  }

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
