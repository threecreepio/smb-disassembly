AS = ca65
CC = cc65
LD = ld65

.PHONY: clean

%.o: %.asm
	$(AS) -g --debug-info $< -o $@

main.nes: layout main.o
	$(LD) --dbgfile $@.dbg -C $^ -o $@

main.o: main.asm
	tail "Super Mario Bros. (World).nes" --bytes=8192 > smb.chr
	$(AS) -g --debug-info $< -o $@

clean:
	rm -f main*.nes *.o smb.chr
