.nds
.thumb

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a030\a030_229", 0

a030_229:
    changevar VAR_OP_SET, VAR_ADD_STATUS2, 0x6000007A
    critcalc
    damagecalc
    endscript

.close
