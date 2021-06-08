.nds
.thumb

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a030\a030_098", 0

a030_098:
    changevar VAR_OP_SET, VAR_STATUS2, 0x20000050
    endscript

.close
