.nds
.thumb

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a030\a030_081", 0

a030_081:
    changevar VAR_OP_SET, VAR_ADD_STATUS2, 0x2000001E
    critcalc
    damagecalc
    endscript

.close
