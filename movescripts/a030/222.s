.nds
.thumb

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a030\a030_222", 0

a030_222:
    trynaturalgift _001C
    critcalc
    damagecalc
    removeitem BATTLER_ATTACKER
    endscript
_001C:
    changevar VAR_OP_SETMASK, VAR_10, 0x40
    endscript

.close
