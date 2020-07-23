AS = ca65
CC = cc65
LD = ld65

.PHONY: clean

%.o: %.asm
	$(AS) -g --debug-info $< -o $@

main.nes: layout main.o
	$(LD) --dbgfile $@.dbg -C $^ -o $@

clean:
	rm -f main.nes *.o
