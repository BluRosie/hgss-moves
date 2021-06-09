.nds
.thumb

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a001\a001_275", 0

a001_275:
    if IF_MASK, VAR_BATTLE_TYPE, 0x200, _0048
    checkifsafariencounterdone _00BC
    printmessage 0x359, 0x1C, 0x1, 0xFF, "NaN", "NaN", "NaN", "NaN"
    waitmessage
    throwpokeball BATTLER_PLAYER, 0x1
    goto _0068
_0048:
    printmessage2 0x4C9, 0x2, 0x4, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitmessage
    throwpokeball BATTLER_PLAYER, 0x4
_0068:
    initcapture 0x1
    capturemon
    if IF_MASK, VAR_BATTLE_RESULT, 0x4, _00EC
    if IF_NOTEQUAL, VAR_SAFARI_BALL_COUNT, 0x0, _00EC
    playse BATTLER_ATTACKER, 0x5F1
    printmessage 0x352, 0x0, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    goto _00C8
_00BC:
    printmessage 0x36A, 0x0, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
_00C8:
    waitmessage
    wait 0x1E
    fadeout
    waitmessage
    changevar VAR_OP_SETMASK, VAR_BATTLE_RESULT, 0x5
_00EC:
    endscript

.close
