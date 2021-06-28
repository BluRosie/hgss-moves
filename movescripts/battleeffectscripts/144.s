.nds
.thumb

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a030\a030_144", 0

a030_144:
    changevar VAR_OP_SETMASK, VAR_06, 0x800
    mirrorcoat
    endscript

.close
