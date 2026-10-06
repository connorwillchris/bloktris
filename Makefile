X16_EMULATOR=$(HOME)/Dev/cx16

all:
	cl65 -t none src/main.s -o tmp/TEST.CART

clean:
	rm -rf tmp

run: all
	x16emu -cartbin ./tmp/TEST.CART -rom $(X16_EMULATOR)/rom.bin
