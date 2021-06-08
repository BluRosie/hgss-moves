.nds
.thumb

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a030\a030_187", 0

a030_187:
    changevar VAR_OP_SET, VAR_STATUS1, 0x90000071
    endscript

.close
