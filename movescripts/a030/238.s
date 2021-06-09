.nds
.thumb

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a030\a030_238", 0

a030_238:
    changevar VAR_OP_SET, VAR_ADD_STATUS2, 0x2000007B
    endscript

.close
