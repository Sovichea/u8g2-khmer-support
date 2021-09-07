
#include "u8g2.h"
#include "fonts/nokora_16.h"
#include "shape_khmer.h"
#include <stdio.h>

u8g2_t u8g2;

int main(void)
{
  int x, y;
  int k;
  
  // u8g2_SetupBuffer_SDL_240x160(&u8g2, &u8g2_cb_r0);
  u8g2_SetupBuffer_SDL_128x64(&u8g2, &u8g2_cb_r0);
  u8x8_InitDisplay(u8g2_GetU8x8(&u8g2));
  u8x8_SetPowerSave(u8g2_GetU8x8(&u8g2), 0);  

  u8g2_SetFontMode(&u8g2, 1);  // Transparent

  u8g2_SetFontDirection(&u8g2, 0);
  u8g2_SetFont(&u8g2, nokora_16);

  u8g2_ClearBuffer(&u8g2);
  u8g2_draw_string_khmer(&u8g2, 2, 14, "ស្ត្រេស តន្ត្រី ស៊ី ចាប៉ី ស៊ាំ", 0);
  u8g2_draw_string_khmer(&u8g2, 2, 34, "ស៊ើប ប៉េងបោះ ខ្ញុំ កញ្ញា", 0);
  u8g2_draw_string_khmer(&u8g2, 2, 54, "បណ្តុំ លក្ស្មី សង្គ្រៀម ឲ្យ", 0);
  u8g2_SendBuffer(&u8g2);
  
  /* with for close window event */
  do
  {
    k = u8g_sdl_get_key();
  } while( k != 'q' );
    

  
  return 0;
}

