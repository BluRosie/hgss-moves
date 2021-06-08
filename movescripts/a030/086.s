.nds
.thumb

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a030\a030_086", 0

a030_086:
    changevar VAR_OP_SETMASK, VAR_STATUS1, 0xA0000049
    endscript

.close
