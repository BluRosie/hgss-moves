.nds
.thumb

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a030\a030_209", 0

a030_209:
    changevar VAR_OP_ADD, VAR_CRIT_CHANCE, 0x1
    changevar VAR_OP_SET, VAR_ADD_STATUS2, 0x80000002
    critcalc
    damagecalc
    endscript

.close
