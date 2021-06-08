.nds
.thumb

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a030\a030_090", 0

a030_090:
    changevar VAR_OP_SET, VAR_STATUS1, 0x2000004A
    endscript

.close
