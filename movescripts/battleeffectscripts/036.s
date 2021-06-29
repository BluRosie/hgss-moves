.nds
.thumb

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a030\a030_036", 0

a030_036:
    random 2, 3
    changevar VAR_OP_ADD, VAR_09, 0x80000000
    changevar2 VAR_OP_SET, VAR_ADD_STATUS2, VAR_09
    critcalc
    damagecalc
    endscript

.close
