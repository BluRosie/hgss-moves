.nds
.thumb

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a030\a030_070", 0

a030_070:
    critcalc
    damagecalc
    changevar VAR_OP_SET, VAR_ADD_STATUS2, 0x80000018
    endscript

.close
