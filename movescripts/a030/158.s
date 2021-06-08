.nds
.thumb

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a030\a030_158", 0

a030_158:
    ifmonstat2 IF_NOTEQUAL, BATTLER_ATTACKER, ABILITY_COLOR_CHANGE, 0x19, _0034
    changevar VAR_OP_SET, VAR_STATUS2, 0x80000008
    critcalc
    damagecalc
    endscript
_0034:
    changevar VAR_OP_SETMASK, VAR_10, 0x40
    endscript

.close
