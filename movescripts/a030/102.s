.nds
.thumb

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a030\a030_102", 0

a030_102:
    changevar VAR_OP_SET, VAR_ADD_STATUS2, 0x20000053
    endscript

.close
