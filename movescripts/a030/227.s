.nds
.thumb

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a030\a030_227", 0

a030_227:
    metalburstdamagecalc _001C
    changevar VAR_OP_SETMASK, VAR_06, 0x800
    endscript
_001C:
    changevar VAR_OP_SETMASK, VAR_10, 0x40
    endscript

.close
