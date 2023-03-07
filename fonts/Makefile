SRCS = $(shell ls *.bdf)
OBJS = $(shell ls *.c)

helloworld:
	for name in $(basename $(SRCS)); do \
		./bdfconv -v -f 1 -m '0-255,8320-8459,6016-6130,57344-61439' $${name}.bdf -o $${name}.c -n $${name} -d $${name}.bdf && \
		sed -i '7s/^/#include "u8g2.h"\n/' $${name}.c \
	;done

header:
	rm ../include/u8g2_font_khmer.h
	cp ../include/header_template ../include/u8g2_font_khmer.h
	sed -i '6d' ../include/u8g2_font_khmer.h
	for name in $(basename $(SRCS)); do \
		sed -i "6s/^/extern const uint8_t $${name}[] U8G2_FONT_SECTION("$${name}");\n/" ../include/u8g2_font_khmer.h \
	;done	

clean:
	rm $(OBJS)
