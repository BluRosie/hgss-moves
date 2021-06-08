.nds
.thumb

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a030\a030_044", 0

a030_044:
    setmultihit 0x2, 0xFD
    changevar VAR_OP_SET, VAR_SUCCESSIVE_HIT, 0x1
    critcalc
    damagecalc
    endscript

.close
