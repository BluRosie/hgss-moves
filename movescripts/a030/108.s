.nds
.thumb

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a030\a030_108", 0

a030_108:
    changevar VAR_OP_SET, VAR_ADD_STATUS1, 0x40000057
    endscript

.close
