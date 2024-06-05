all: build/out.bin

build/%.o : %.asm
	z88dk-z80asm -mz80 -o$@ $< 

build/out.bin: build/main.o build/util.o
	z88dk-z80asm -b -obuild/out.bin build/*.o

clean:
	rm -r build
