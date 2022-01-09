CFLAGS = -g -Wall -I../u8g2/csrc/.  `sdl2-config --cflags`

SRC = $(shell ls ../u8g2/csrc/*.c) ../u8g2/sys/bitmap/common/u8x8_d_bitmap.c $(shell ls ../u8g2/sys/sdl/common/*.c ) main.c shape_khmer.c

OBJ = $(SRC:.c=.o)

helloworld: $(OBJ) 
	$(CC) $(CFLAGS) $(LDFLAGS) $(OBJ) `sdl2-config --libs` -o u8g2_sdl

clean:	
	-rm $(OBJ) u8g2_sdl

