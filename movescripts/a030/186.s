.nds
.thumb

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a030\a030_186", 0

a030_186:
    changevar VAR_OP_SET, VAR_ADD_STATUS1, 0x80800070
    critcalc
    damagecalc
    endscript

.close
