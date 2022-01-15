set(srcs
	"src/u8g2_font_khmer.c"
	"src/notosans_6x8.c"
	"src/notosans_6x9.c"
)
idf_component_register(SRCS "${srcs}"  
                    INCLUDE_DIRS "include"
                    REQUIRES u8g2)