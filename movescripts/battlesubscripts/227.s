.nds
.thumb

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a001\a001_227", 0

a001_227:
    printmessage2 0x353, 0x1B, 0x1, 0x2, "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
    throwpokeball BATTLER_PLAYER, 0x3
    waitmessage
    setstatus2effect BATTLER_OPPONENT, 0x1B
    waitmessage
    setstatus2effect BATTLER_OPPONENT, 0x1C
    waitmessage
    if IF_EQUAL, VAR_43, 0x0, _007C
    printmessage2 0x354, 0x2, 0x2, "NaN", "NaN", "NaN", "NaN", "NaN"
    goto _008C
_007C:
    printmessage2 0x355, 0x2, 0x2, "NaN", "NaN", "NaN", "NaN", "NaN"
_008C:
    waitmessage
    wait 0x1E
    endscript

.close
