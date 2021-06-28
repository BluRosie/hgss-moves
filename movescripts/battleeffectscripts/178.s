.nds
.thumb

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a030\a030_178", 0

a030_178:
    abilitycheck 0x0, BATTLER_ATTACKER, ABILITY_MULTITYPE, _0040
    ifmonstat IF_EQUAL, BATTLER_ATTACKER, MON_DATA_ITEM, 0x70, _0040
    changevar VAR_OP_SET, VAR_ADD_STATUS1, 0x9000006F
    endscript
_0040:
    changevar VAR_OP_SETMASK, VAR_10, 0x40
    endscript

.close
