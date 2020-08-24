AS = ca65
CC = cc65
LD = ld65

.PHONY: clean

build: smb.chr main.nes

%.o: src/%.asm
	$(AS) -g --create-dep "$@.dep" --debug-info $< -o $@

main.nes: layout main.o
	$(LD) --dbgfile $@.dbg -C $^ -o $@

smb.chr: Super\ Mario\ Bros.\ (World).nes
	tail "Super Mario Bros. (World).nes" --bytes=8192 > $@

clean:
	rm -f main.nes *.dep *.o *.dbg

include $(wildcard *.dep)
