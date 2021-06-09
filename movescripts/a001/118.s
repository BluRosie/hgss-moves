.nds
.thumb

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a001\a001_118", 0

a001_118:
    ifmonstat IF_NOTMASK, BATTLER_ATTACKER, 0x34, 0x7, _0028
    gotosubscript 18
    goto _00A8
_0028:
    ifmonstat IF_NOTMASK, BATTLER_ATTACKER, 0x34, 0x8, _0050
    gotosubscript 22
    goto _00A8
_0050:
    ifmonstat IF_NOTMASK, BATTLER_ATTACKER, 0x34, 0x10, _0078
    gotosubscript 25
    goto _00A8
_0078:
    ifmonstat IF_NOTMASK, BATTLER_ATTACKER, 0x34, 0x40, _00A0
    gotosubscript 31
    goto _00A8
_00A0:
    gotosubscript 47
_00A8:
    ifmonstat IF_NOTMASK, BATTLER_DEFENDER, 0x34, 0xFF, _00E0
    setstatusicon BATTLER_ATTACKER, 0x0
    changevartomonvalue VAR_OP_SET, BATTLER_ATTACKER, 0x34, 0x0
_00E0:
    endscript

.close
