.segment "INES"
	.byte "NES",$1A
	.byte 2 ; prg
    .byte 1 ; chr
	.byte %00000001 ; flags 6

.segment "SMBPRG"
.include "smb.asm"

.segment "SMBCHR"
.incbin "Super Mario Bros. (World).nes", $8010
