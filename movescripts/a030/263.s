.nds
.thumb

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a030\a030_263", 0

a030_263:
    ifmonstat IF_MASK, BATTLER_ATTACKER, 0x35, 0x1000, _00B4
    checkitemeffect 0x0, BATTLER_ATTACKER, 0x63, _0064
    changevartomonvalue VAR_OP_SETMASK, BATTLER_ATTACKER, VAR_RULESET, 0x40
    changevar VAR_OP_SET, VAR_STATUS1, 0x4000000C
    changevar VAR_OP_SETMASK, VAR_06, 0x23
    endscript
_0064:
    changevartomonvalue VAR_OP_SETMASK, BATTLER_ATTACKER, VAR_RULESET, 0x40
    changevartomonvalue VAR_OP_SETMASK, BATTLER_ATTACKER, VAR_60, 0x40
    gotosubscript 217
    togglevanish BATTLER_ATTACKER, 0x1
    if IF_EQUAL, VAR_DEFENDER, 0xFF, _00CC
_00B4:
    changevar VAR_OP_SET, VAR_STATUS2, 0x80000005
    critcalc
    damagecalc
_00CC:
    changevartomonvalue VAR_OP_CLEARMASK, BATTLER_ATTACKER, VAR_RULESET, 0x200400C0
    gotosubscript 259
    endscript

.close
