; convert ascii to smb1 charset
; space
.charmap    $20,   $24
; !
.charmap    $21,   $2B
; -
.charmap    $2D,   $28
; x to cross
.charmap    $78,   $29
; $ to coin
.charmap    $24,   $2e
; c to copyright
.charmap    $62,   $CF
; m to mushroom
.charmap    $6D,   $CE
; / to chain
.charmap    $2F,   $7F
; .
.charmap    $2E,   $AF

; 0
.charmap $30+00,   $00
; 1
.charmap $30+01,   $01
; 2
.charmap $30+02,   $02
; 3
.charmap $30+03,   $03
; 4
.charmap $30+04,   $04
; 5
.charmap $30+05,   $05
; 6
.charmap $30+06,   $06
; 7
.charmap $30+07,   $07
; 8
.charmap $30+08,   $08
; 9
.charmap $30+09,   $09

; A
.charmap $41+00, $A+00
; B
.charmap $41+01, $A+01
; C
.charmap $41+02, $A+02
; D
.charmap $41+03, $A+03
; E
.charmap $41+04, $A+04
; F
.charmap $41+05, $A+05
; G
.charmap $41+06, $A+06
; H
.charmap $41+07, $A+07
; I
.charmap $41+08, $A+08
; J
.charmap $41+09, $A+09
; K
.charmap $41+10, $A+10
; L
.charmap $41+11, $A+11
; M
.charmap $41+12, $A+12
; N
.charmap $41+13, $A+13
; O
.charmap $41+14, $A+14
; P
.charmap $41+15, $A+15
; Q
.charmap $41+16, $A+16
; R
.charmap $41+17, $A+17
; S
.charmap $41+18, $A+18
; T
.charmap $41+19, $A+19
; U
.charmap $41+20, $A+20
; V
.charmap $41+21, $A+21
; W
.charmap $41+22, $A+22
; X
.charmap $41+23, $A+23
; Y
.charmap $41+24, $A+24
; Z
.charmap $41+25, $A+25

; allow line continuation feature
.linecont +

.segment "INES"
.byte $4E,$45,$53,$1A
.byte 2 ; prg
.byte 1 ; chr
.byte %00000001 ; flags 6

.segment "SMBPRG"
.include "smb.asm"

.segment "SMBCHR"
.incbin "../Super Mario Bros. (World).nes", $8010
