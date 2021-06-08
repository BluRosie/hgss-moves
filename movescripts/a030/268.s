.nds
.thumb

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a030\a030_268", 0

a030_268:
    checkitemeffect 0x0, BATTLER_ATTACKER, 0x83, _015C
    checkitemeffect 0x0, BATTLER_ATTACKER, 0x86, _0174
    checkitemeffect 0x0, BATTLER_ATTACKER, 0x84, _018C
    checkitemeffect 0x0, BATTLER_ATTACKER, 0x85, _01A4
    checkitemeffect 0x0, BATTLER_ATTACKER, 0x89, _01BC
    checkitemeffect 0x0, BATTLER_ATTACKER, 0x88, _01D4
    checkitemeffect 0x0, BATTLER_ATTACKER, 0x8A, _01EC
    checkitemeffect 0x0, BATTLER_ATTACKER, 0x8D, _0204
    checkitemeffect 0x0, BATTLER_ATTACKER, 0x93, _021C
    checkitemeffect 0x0, BATTLER_ATTACKER, 0x7E, _0234
    checkitemeffect 0x0, BATTLER_ATTACKER, 0x7F, _024C
    checkitemeffect 0x0, BATTLER_ATTACKER, 0x81, _0264
    checkitemeffect 0x0, BATTLER_ATTACKER, 0x80, _027C
    checkitemeffect 0x0, BATTLER_ATTACKER, 0x87, _0294
    checkitemeffect 0x0, BATTLER_ATTACKER, 0x82, _02AC
    checkitemeffect 0x0, BATTLER_ATTACKER, 0x8B, _02C4
    checkitemeffect 0x0, BATTLER_ATTACKER, 0x8C, _02DC
    goto _02EC
_015C:
    changevar VAR_OP_SET, VAR_MOVE_TYPE, 0x1
    goto _02EC
_0174:
    changevar VAR_OP_SET, VAR_MOVE_TYPE, 0x2
    goto _02EC
_018C:
    changevar VAR_OP_SET, VAR_MOVE_TYPE, 0x3
    goto _02EC
_01A4:
    changevar VAR_OP_SET, VAR_MOVE_TYPE, 0x4
    goto _02EC
_01BC:
    changevar VAR_OP_SET, VAR_MOVE_TYPE, 0x5
    goto _02EC
_01D4:
    changevar VAR_OP_SET, VAR_MOVE_TYPE, 0x6
    goto _02EC
_01EC:
    changevar VAR_OP_SET, VAR_MOVE_TYPE, 0x7
    goto _02EC
_0204:
    changevar VAR_OP_SET, VAR_MOVE_TYPE, 0x8
    goto _02EC
_021C:
    changevar VAR_OP_SET, VAR_MOVE_TYPE, 0x9
    goto _02EC
_0234:
    changevar VAR_OP_SET, VAR_MOVE_TYPE, 0xA
    goto _02EC
_024C:
    changevar VAR_OP_SET, VAR_MOVE_TYPE, 0xB
    goto _02EC
_0264:
    changevar VAR_OP_SET, VAR_MOVE_TYPE, 0xC
    goto _02EC
_027C:
    changevar VAR_OP_SET, VAR_MOVE_TYPE, 0xD
    goto _02EC
_0294:
    changevar VAR_OP_SET, VAR_MOVE_TYPE, 0xE
    goto _02EC
_02AC:
    changevar VAR_OP_SET, VAR_MOVE_TYPE, 0xF
    goto _02EC
_02C4:
    changevar VAR_OP_SET, VAR_MOVE_TYPE, 0x10
    goto _02EC
_02DC:
    changevar VAR_OP_SET, VAR_MOVE_TYPE, 0x11
_02EC:
    critcalc
    damagecalc
    endscript

.close
