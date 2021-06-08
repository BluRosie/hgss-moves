.nds
.thumb

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a001\a001_083", 0

a001_083:
    ifmonstat IF_NOTMASK, BATTLER_FAINTED, 0x35, 0x2000000, _010C
    checkbattlersequal BATTLER_ATTACKER, BATTLER_FAINTED, _010C
    ifmonstat IF_EQUAL, BATTLER_ATTACKER, 0x2F, 0x0, _010C
    printmessage 0x187, 0x9, 0x5, 0x1, "NaN", "NaN", "NaN", "NaN"
    changevar2 VAR_OP_GET_RESULT, VAR_FAINTED_BATTLER, 0x1D
    changevartomonvalue2 VAR_OP_GET_RESULT, BATTLER_ATTACKER, 0x2F, VAR_HP_TEMP
    changevar VAR_OP_MUL, VAR_HP_TEMP, 0xFFFFFFFF
    changevar2 VAR_OP_SET, VAR_BATTLER_SOMETHING, 0xF
    changevar VAR_OP_SETMASK, VAR_06, 0x40
    gotosubscript 2
    dofaintanimation
    waitmessage
    preparehpgaugeslide BATTLER_FAINTED
    printmessage 0x1E, 0x2, 0x5, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
    incrementgamestat BATTLER_FAINTED, 0x1, 0x2A
    incrementgamestat BATTLER_FAINTED, 0x0, 0x61
    changevar2 VAR_OP_GET_RESULT, VAR_ITEM_TEMP, 0x12
_010C:
    trygrudge _0134
    printmessage 0x238, 0xA, 0x1, 0xFF, "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
_0134:
    changevar VAR_OP_SETMASK, VAR_60, 0x1
    gotosubscript 6
    changevar VAR_OP_CLEARMASK, VAR_60, 0x1
    endscript

.close
