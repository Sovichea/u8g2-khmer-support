CFLAGS = -g -Wall -I../u8g2/csrc/.  `sdl2-config --cflags`

SRC = $(shell ls ../u8g2/csrc/*.c) ../u8g2/sys/bitmap/common/u8x8_d_bitmap.c $(shell ls ../u8g2/sys/sdl/common/*.c ) $(shell ls fonts/*.c) main.c u8g2_font_khmer.c 

OBJ = $(SRC:.c=.o)

helloworld: $(OBJ) 
	$(CC) $(CFLAGS) $(LDFLAGS) $(OBJ) `sdl2-config --libs` -o u8g2_sdl

clean:	
	-rm $(OBJ) u8g2_sdl

khmer_font:
	fonts/bdfconv -v -f 1 -m '0-127,6016-6121,57344-57413' fonts/NotoSansKhmer-Light_6x9.bdf -o fonts/notosans_6x9.h -n notosans_6x9 -d fonts/NotoSansKhmer-Light_6x9.bdf
	fonts/bdfconv -v -f 1 -m '0-127,6016-6121,57344-57413' fonts/NotoSansKhmer-Light_6x8.bdf -o fonts/notosans_6x8.h -n notosans_6x8 -d fonts/NotoSansKhmer-Light_6x8.bdf
