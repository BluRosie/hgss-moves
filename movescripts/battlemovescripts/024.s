.nds
.thumb

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a030\a030_024", 0

a030_024:
    changevar VAR_OP_SET, VAR_ADD_STATUS1, 0x8000001C
    endscript

.close
