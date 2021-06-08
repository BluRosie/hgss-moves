.nds
.thumb

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a030\a030_142", 0

a030_142:
    changevar VAR_OP_SET, VAR_STATUS1, 0x20000064
    endscript

.close
