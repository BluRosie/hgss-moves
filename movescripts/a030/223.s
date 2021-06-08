.nds
.thumb

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a030\a030_223", 0

a030_223:
    tryfeint _0024
    changevar VAR_OP_SET, VAR_STATUS2, 0x2000004F
    critcalc
    damagecalc
    endscript
_0024:
    changevar VAR_OP_SETMASK, VAR_10, 0x40
    endscript

.close
