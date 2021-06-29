.nds
.thumb

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a030\a030_179", 0

a030_179:
    trywish _000C
    endscript
_000C:
    changevar VAR_OP_SET, VAR_10, 0x40
    endscript

.close
