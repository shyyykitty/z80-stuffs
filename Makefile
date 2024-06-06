all: build/rom.h

build/%.o : %.asm
	z88dk-z80asm -mz80 -o$@ $< 

build/rom.bin: build/main.o build/util.o
	z88dk-z80asm -b -obuild/rom.bin build/*.o

build/rom.h: build/rom.bin
	xxd -i build/rom.bin > build/rom.h
	sed -i s/build_rom_bin/Rom/g build/rom.h

clean:
	rm -r build
