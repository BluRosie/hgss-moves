.nds
.thumb

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a030\a030_016", 0

a030_016:
    changevar VAR_OP_SET, VAR_STATUS1, 0x40000015
    endscript

.close
