.nds
.thumb

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a030\a030_031", 0

a030_031:
    changevar VAR_OP_SET, VAR_STATUS2, 0x80000008
    critcalc
    damagecalc
    endscript

.close
