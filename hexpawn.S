
         .org    $0100
         ldx     #$6e
clear:   lda     table,x
         sta     $21,x
         dex
         bpl     clear
         sta     $19
         jmp     start

BrdPos:  .byte   $43
         .byte   $0b
         .byte   $0b
         .byte   $0b
         .byte   $0b
         .byte   $43
         .byte   $0b
         .byte   $43
         .byte   $0b
         .byte   $c3
         .byte   $40
         .byte   $0b
         .byte   $40
         .byte   $c3
         .byte   $0b
         .byte   $43
         .byte   $48
         .byte   $03
         .byte   $43
         .byte   $03
         .byte   $48
         .byte   $08
         .byte   $c3
         .byte   $43
         .byte   $c8
         .byte   $43
         .byte   $43
         .byte   $c3
         .byte   $08
         .byte   $43
         .byte   $43
         .byte   $43
         .byte   $c8
         .byte   $48
         .byte   $03
         .byte   $43
         .byte   $40
         .byte   $40
         .byte   $43
         .byte   $08
         .byte   $43
         .byte   $03
         .byte   $43
         .byte   $00
         .byte   $0b
         .byte   $c0
         .byte   $c0
         .byte   $43
         .byte   $43
         .byte   $40
         .byte   $40
         .byte   $c0
         .byte   $43
         .byte   $40
         .byte   $40
         .byte   $43
         .byte   $c0
         .byte   $c3
         .byte   $c0
         .byte   $40
         .byte   $43
         .byte   $08
         .byte   $c3
         .byte   $00
         .byte   $43
         .byte   $0b
         .byte   $40
         .byte   $c0
         .byte   $c3
         .byte   $c0
         .byte   $40
         .byte   $03
         .byte   $40
         .byte   $c3
         .byte   $00
         .byte   $00
         .byte   $c3
         .byte   $40
         .byte   $0b
         .byte   $00
         .byte   $43
         .byte   $00
         .byte   $40
         .byte   $c3
         .byte   $0b
         .byte   $40
         .byte   $c3
         .byte   $03
         .byte   $48
         .byte   $43
         .byte   $43
         .byte   $c8
         .byte   $43
         .byte   $00
         .byte   $43
         .byte   $00
         .byte   $c3
         .byte   $40
         .byte   $00
         .byte   $3e
         .byte   $00
         .byte   $38
         .byte   $3f
         .byte   $6d
         .byte   $79
         .byte   $00
         .byte   $54
         .byte   $1c
         .byte   $78
         .byte   $6d
         .byte   $00
table:   .byte   $00
         .byte   $00
         .byte   $01
         .byte   $03
         .byte   $03
         .byte   $03
         .byte   $00
         .byte   $00
         .byte   $00
         .byte   $01
         .byte   $01
         .byte   $01
         .byte   $31
         .byte   $41
         .byte   $52
         .byte   $30
         .byte   $41
         .byte   $51
         .byte   $30
         .byte   $40
         .byte   $00
         .byte   $40
         .byte   $42
         .byte   $63
         .byte   $31
         .byte   $52
         .byte   $74
         .byte   $40
         .byte   $42
         .byte   $52
         .byte   $31
         .byte   $41
         .byte   $51
         .byte   $51
         .byte   $64
         .byte   $74
         .byte   $51
         .byte   $42
         .byte   $00
         .byte   $63
         .byte   $73
         .byte   $00
         .byte   $40
         .byte   $31
         .byte   $00
         .byte   $31
         .byte   $41
         .byte   $51
         .byte   $42
         .byte   $00
         .byte   $00
         .byte   $42
         .byte   $52
         .byte   $00
         .byte   $52
         .byte   $00
         .byte   $00
         .byte   $63
         .byte   $74
         .byte   $00
         .byte   $40
         .byte   $00
         .byte   $00
         .byte   $51
         .byte   $63
         .byte   $00
         .byte   $31
         .byte   $85
         .byte   $00
         .byte   $63
         .byte   $74
         .byte   $00
         .byte   $75
         .byte   $85
         .byte   $00
         .byte   $42
         .byte   $52
         .byte   $00
         .byte   $74
         .byte   $85
         .byte   $00
         .byte   $63
         .byte   $42
         .byte   $52
         .byte   $74
         .byte   $31
         .byte   $00
         .byte   $74
         .byte   $51
         .byte   $00
         .byte   $30
         .byte   $00
         .byte   $00
         .byte   $42
         .byte   $85
         .byte   $00
         .byte   $30
         .byte   $40
         .byte   $85
         .byte   $30
         .byte   $40
         .byte   $42
         .byte   $00
         .byte   $00
         .byte   $00
         .byte   $00
         .byte   $00
         .byte   $00
         .byte   $63
         .byte   $40
         .byte   $00
		 
         .org    $0200
start:   ldx     #$07
         lda     #$00
clr_pos: sta     $10,x
         dex
         bpl     clr_pos
         lda     #$c0
         sta     $14
         ldx     #$08
@L020F:  lda     $24,x
         sta     $07,x
         dex
         bpl     @L020F
         stx     $1d
@L0218:  ldx     #$03
@L021A:  lda     #$00
         sta     $00,x
         dex
         bpl     @L021A
         ldy     #$02
         clc
@L0224:  sty     $1e
         lda     #$06
         adc     $1e
         tax
         lda     #$00
@L022D:  ror     A
         ror     A
         ror     A
         ora     $07,x
         dex
         dex
         dex
         bpl     @L022D
         sta     $0001,y
         dey
         bpl     @L0224
@L023D:  dec     $00
         bpl     @L026F
         lda     #$30
         sta     $00
         ldx     #$02
@L0247:  lda     $01,x
         lsr     A
         and     #$49
         sta     $04,x
         dex
         bpl     @L0247
         ldx     #$02
         lda     $18
         eor     #$80
         sta     $18
         bmi     @L0264
         lda     #$00
@L025D:  sta     $04,x
         dex
         bpl     @L025D
         ldx     #$02
@L0264:  lda     $01,x
         and     #$49
         eor     $04,x
         sta     $10,x
         dex
         bpl     @L0264
@L026F:  lda     #$7f
         sta     $1741
         ldy     #$00
         ldx     #$09
@L0278:  lda     $0010,y
         sty     $fc
         jsr     $1f4e
         iny
         cpy     #$06
         bcc     @L0278
         jsr     $1f3d
@L0288:  cld
         jsr     $1f40
         jsr     $1f6a
         cmp     #$13
         bne     @L0296
         jmp     start

@L0296:  cmp     #$11
         bne     @L02A8
         ldx     #$02
@L029C:  lda     $19,x
         sta     $f9,x
         dex
         bpl     @L029C
         jsr     $1f1f
         bpl     @L0288
@L02A8:  ldx     $14
         cpx     #$c0
         bne     @L026F
         cmp     #$14
         beq     @L032A
         ldx     $16
         bne     @L031D
         jsr     @L03C0
         bpl     @L02F0
         lda     #$08
         sta     $1e
@L02BF:  jsr     @L03C0
         bpl     @L02D1
@L02C4:  dec     $1e
         lda     $1e
         bpl     @L02BF
         sta     $16
         sta     $17
@L02CE:  jmp     @L023D

@L02D1:  lda     $1d
         bpl     @L02CE
         stx     $1d
         lda     #$06
         sta     $1f
@L02DB:  jsr     @L03C0
         bpl     @L02EA
         dec     $1f
         lda     $1f
         bpl     @L02DB
         stx     $1d
         bmi     @L02C4

@L02EA:  lda     #$ff
         sta     $1d
         bmi     @L02CE

@L02F0:  lda     #$00
         sta     $15
         lda     $1d
         bmi     @L0313
         stx     $1c
         ldy     #$01
@L02FC:  lda     #$ff
@L02FE:  sta     $16
         sty     $07,x
         lda     $1fe7,x
         sta     $15
         ldy     #$00
         ldx     $1d
         sty     $07,x
         lda     #$ff
         sta     $1d
         bmi     @L0315

@L0313:  stx     $1d
@L0315:  lda     $1fe7,x
         sta     $13
         jmp     @L0218

@L031D:  lda     $18
         bmi     @L02CE
         dec     $16
         bne     @L02CE
         lda     $17
         lsr     A
         cmp     #$30
@L032A:  bpl     @L0387
         lda     $1c
         cmp     #$03
         bmi     @L0376
         ldy     #$60
@L0334:  ldx     BrdPos,y
         cpx     $01
         bne     @L0349
         ldx     BrdPos+1,y
         cpx     $02
         bne     @L0349
         ldx     BrdPos+2,y
         cpx     $03
         beq     @L0350
@L0349:  dey
         dey
         dey
         bpl     @L0334
         bmi     @L0383

@L0350:  lda     $1704
         and     #$03
         tax
         beq     @L0359
         dex
@L0359:  lda     #$02
         sta     $1e
@L035D:  stx     $1f
@L035F:  lda     #$2d
         clc
         adc     $1f
         sta     $20
         lda     ($20),y
         bne     @L039A
         dec     $1e
         bmi     @L0376
         dec     $1f
         bpl     @L035F
         ldx     #$02
         bpl     @L035D

@L0376:  ldy     $1a
         clc
         lda     #$2d
         adc     $1b
         sta     $20
         lda     #$00
         sta     ($20),y
@L0383:  lda     #$78
         bpl     @L0389

@L0387:  lda     #$72
@L0389:  sta     $22
         ldy     #$05
@L038D:  lda     ($22),y
         sta     $0010,y
         dey
         bpl     @L038D
         inc     $19
         jmp     @L026F

@L039A:  sta     $17
         sty     $1a
         ldx     $1f
         stx     $1b
         pha
         pha
         lsr     A
         lsr     A
         lsr     A
         lsr     A
         tax
         pla
         and     #$0f
         sta     $1d
         ldy     #$03
         pla
         lsr     A
         cmp     #$30
         bmi     @L03B9
         jmp     @L02FC

@L03B9:  lda     #$00
         jmp     @L02FE

         .byte   $00
         .byte   $00

@L03C0:  cmp     #$09
         bcs     @L03E6
         tax
         lda     $07,x
         ror     A
         ror     A
         bpl     @L03F2
         lda     $1d
         bpl     @L03D3
         bcs     @L03E6
@L03D1:  txa
         rts

@L03D3:  txa
         bcc     @L03E6
         asl     A
         asl     A
         asl     A
         asl     A
         ora     $1d
         ldy     #$07
@L03DE:  cmp     @L03F8,y
         beq     @L03D1
         dey
         bpl     @L03DE
@L03E6:  ldx     #$ff
         rts

@L03E9:  txa
         adc     #$03
         cmp     $1d
         bne     @L03E6
         beq     @L03D1

@L03F2:  ldy     $1d
         bmi     @L03E6
         bpl     @L03E9

@L03F8:  .byte   $13
         .byte   $04
         .byte   $24
         .byte   $15
         .byte   $46
         .byte   $37
         .byte   $57
         .byte   $48
