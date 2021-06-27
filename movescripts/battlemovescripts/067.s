.nds
.thumb

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a030\a030_067", 0

a030_067:
    changevar VAR_OP_SET, VAR_ADD_STATUS1, 0x80000005
    endscript

.close
