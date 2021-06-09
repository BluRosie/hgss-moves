.nds
.thumb

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a030\a030_159", 0

a030_159:
    ifmonstat IF_MASK, BATTLER_ATTACKER, 0x35, 0x70, _0028
    changevar VAR_OP_SET, VAR_ADD_STATUS2, 0x2000000A
_0028:
    critcalc
    damagecalc
    endscript

.close
