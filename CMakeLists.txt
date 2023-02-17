set(srcs
	"src/u8g2_font_khmer.c"
	"fonts/notosans_6x8.c"
	"fonts/notosans_6x9.c"
	"fonts/u8g2KHTest_R16.c"
	"fonts/waffle_10.c"
	"fonts/khmerR12.c"
	"fonts/helvR08_custom.c"
)
idf_component_register(SRCS "${srcs}"  
                    INCLUDE_DIRS "include"
                    REQUIRES u8g2)