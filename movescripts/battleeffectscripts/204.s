.nds
.thumb

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a030\a030_204", 0

a030_204:
    changevar VAR_OP_SET, VAR_ADD_STATUS2, 0x40000031
    critcalc
    damagecalc
    endscript

.close
