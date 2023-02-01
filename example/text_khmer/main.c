#include <stdio.h>
#include <unistd.h>
#include "u8g2.h"
#include "u8g2_font_khmer.h"

u8g2_t u8g2;

const char *str[] = {
  "ព្រហស្បតិ៍ រោឡិ៍ ប្ត្រាស",
  "ស្ត្រេស កណ្តៀង បណ្តុំ",
  "បញ្ញា ខ្ញុំ បញ្ជារ ញៀន ",
  "ដំបៅ អំបោះ ប៉ាម៉ាក់",
  "កខគabcសង្គ្រាម",
  "បង្រៀន ស៊ីប៊ីប៉ីប៊័រ",
  "សំឡី កុមារី រំដួល រ៉ែ",
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
  // u8g2_SetFont(&u8g2, notosans_6x9);
  // u8g2_SetFont(&u8g2, notosans_6x8);
  // u8g2_SetFont(&u8g2, u8g2KHTest_R16);
  u8g2_SetFont(&u8g2, khmerR12);

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
      sleep(0.01);
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

