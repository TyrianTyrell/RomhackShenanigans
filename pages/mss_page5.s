.thumb
@draws the bio screen
.include "mss_defs.s"
.set HolyBloodNameGetter, SS_BloodText+4
.set HolyBloodVoracityGetter, HolyBloodNameGetter+4
.set SS_BiographText, HolyBloodVoracityGetter+4
.set BiographGetter, SS_BiographText+4

.global MSS_page5
.type MSS_page5, %function

MSS_page5:

page_start

ldr r0, SS_BloodText
draw_textID_at 17, 14 @Blood label text

ldr r0, BiographGetter
mov r14,r0
.short 0xF800
draw_textID_at 13, 2, colour=White, width=16 @Biograph
ldr r0, BiographGetter
mov r14,r0
.short 0xF800
add r0, #1
draw_textID_at 13, 4, colour=White, width=16 @Biograph
ldr r0, BiographGetter
mov r14,r0
.short 0xF800
add r0, #2
draw_textID_at 13, 6, colour=White, width=16 @Biograph
ldr r0, BiographGetter
mov r14,r0
.short 0xF800
add r0, #3
draw_textID_at 13, 8, colour=White, width=16 @Biograph
ldr r0, BiographGetter
mov r14,r0
.short 0xF800
add r0, #4
draw_textID_at 13, 10, colour=White, width=16 @Biograph
ldr r0, BiographGetter
mov r14,r0
.short 0xF800
add r0, #5
draw_textID_at 13, 12, colour=White, width=16 @Biograph


@pass in textid in r0
ldr r0, HolyBloodNameGetter
mov r14,r0
.short 0xF800
draw_textID_at 23, 14, colour=Green, width=16

ldr r0, HolyBloodVoracityGetter
mov r14,r0
.short 0xF800
cmp r0,#0
beq NoIconDraw
draw_icon_at 21, 14, number=0xCB
NoIconDraw:

page_end

.align
.ltorg
.align
SS_BloodText:
@WORD SS_BloodText
@POIN HolyBloodNameGetter
@POIN HolyBloodVoracityGetter
@WORD SS_BiographText
@POIN BiographGetter
