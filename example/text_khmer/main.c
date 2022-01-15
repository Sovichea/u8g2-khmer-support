#include <stdio.h>
#include "u8g2.h"
#include "u8g2_font_khmer.h"

u8g2_t u8g2;

const char *str[] = {
  "ក្ក ខ្ខ គ្គ ឃ្ឃ ង្ង",
  "ច្ច ឆ្ឆ ជ្ជ ឈ្ឈ ញ្ញ",
  "ដ្ដ ឋ្ឋ ឌ្ឌ ឍ្ឍ ណ្ណ",
  "ត្ត ថ្ថ ទ្ទ ធ្ធ ន្ន",
  "ប្ប ផ្ផ ព្ព ភ្ភ ម្ម",
  "យ្យ រ្រ ល្ល វ្វ ស្ស ហ្ហ ឡ អ្អ",
  "០ ១ ២ ៣ ៤ មណ្ឌល",
  "៥ ៦ ៧ ៨ ៩ ស្បៀង ងី",
  "ស្ត្រេស តន្ត្រី ស៊ី ចាប៉ី ស៊ាំ",
  "ស៊ើប ប៉េងប៉ោះ ខ្ញុំ កញ្ញា",
  "បណ្តុំ លក្ស្មី សង្គ្រៀម ឲ្យ",
  "កំណត់សំណើមដី រៀន",
  "ម៉ោងស្រោចៈ ចេញ ជំរឿន",
  "ម៉ោងនៃប្រព័ន្ធ ល្បឿន",
  "ធ្វើតេស្តការបញ្ជារ ខឿន",
  "ជួរទី១ រយៈពេល"
};

int main(void)
{
  int x = 0;
  int list_size;
  int k;

  list_size = sizeof(str)/8;

  // printf("list_size=%d\n\r", list_size);
  
  // u8g2_SetupBuffer_SDL_240x160(&u8g2, &u8g2_cb_r0);
  u8g2_SetupBuffer_SDL_128x64(&u8g2, &u8g2_cb_r0);
  u8x8_InitDisplay(u8g2_GetU8x8(&u8g2));
  u8x8_SetPowerSave(u8g2_GetU8x8(&u8g2), 0);  

  u8g2_SetFontMode(&u8g2, 1);  // Transparent

  u8g2_SetFontDirection(&u8g2, 0);
  // u8g2_SetFont(&u8g2, notosans_6x8);
  u8g2_SetFont(&u8g2, notosans_6x9);
  
  while (1)
  {
    u8g2_ClearBuffer(&u8g2);
    u8g2_DrawKhmer(&u8g2, 0, 14, str[x]);
    if (x+1 < list_size) u8g2_DrawKhmer(&u8g2, 0, 35, str[x+1]);
    else u8g2_DrawKhmer(&u8g2, 0, 35, "");
    if (x+2 < list_size) u8g2_DrawKhmer(&u8g2, 0, 56, str[x+2]);
    else u8g2_DrawKhmer(&u8g2, 0, 56, "");
    u8g2_SendBuffer(&u8g2);

    do
    {
      k = u8g_sdl_get_key();
    } while( k == -1);

     /* Close window event */
    if (k == 'q') return 0;
    else if (k == 'n')
    {
      /* Display the next 3 rows in the list */
      x += 3; 
      if (x > list_size-1) x = 0;
    }
    else if (k == 'p')
    {
      /* Display the previous 3 rows in the list */
      x -= 3; 
      if (x < 0) 
      {
        if (list_size % 3 == 0) x = list_size - 3;
        else x = list_size - (list_size % 3);
      }

    }
    else if (k == 'h')
    {
      /* Return the top of the list */
      x = 0;
    }
  }

}

