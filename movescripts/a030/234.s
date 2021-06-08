.nds
.thumb

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a030\a030_234", 0

a030_234:
    trypsychoshift _001C
    changevar VAR_OP_SET, VAR_STATUS1, 0x80000090
    endscript
_001C:
    changevar VAR_OP_SETMASK, VAR_10, 0x40
    endscript

.close
