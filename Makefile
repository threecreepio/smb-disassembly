AS = ca65
CC = cc65
LD = ld65
IPS = flips

.PHONY: clean

build: patch.ips

%.o: src/%.asm
	$(AS) -g --create-dep "$@.dep" --debug-info $< -o $@

patch.ips: main.nes
	$(IPS) --create --ips "Super Mario Bros. (World).nes" "main.nes" "patch.ips"

main.nes: layout main.o
	$(LD) --dbgfile $@.dbg -C $^ -o $@

clean:
	rm -f main.nes *.dep *.o *.dbg

include $(wildcard *.dep)
