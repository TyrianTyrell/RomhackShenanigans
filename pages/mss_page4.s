.thumb
.include "mss_defs.s"
.global MSS_page4
.type MSS_page4, %function


MSS_page4:

page_start

draw_gaiden_spells_at 13, 16, GaidenStatScreen @ GaidenStatScreen is a pointer to the routine, GaidenStatScreen.

page_end

.align
.ltorg
.align
