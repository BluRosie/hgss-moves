.nds
.thumb

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a030\a030_152", 0

a030_152:
    changevar VAR_OP_SET, VAR_STATUS2, 0x80000005
    changevar VAR_OP_SETMASK, VAR_06, 0x4
    critcalc
    damagecalc
    endscript

.close
