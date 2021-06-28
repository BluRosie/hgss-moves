.nds
.thumb

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a030\a030_085", 0

a030_085:
    changevar VAR_OP_SETMASK, VAR_10, 0x2000
    endscript

.close
