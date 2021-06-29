.nds
.thumb

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a030\a030_248", 0

a030_248:
    trysuckerpunch _0014
    critcalc
    damagecalc
    endscript
_0014:
    changevar VAR_OP_SETMASK, VAR_10, 0x40
    endscript

.close
