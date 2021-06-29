.nds
.thumb

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a001\a001_006", 0

a001_006:
    incrementgamestat BATTLER_FAINTED, 0x1, 0x2A
    incrementgamestat BATTLER_FAINTED, 0x0, 0x61
    dofaintanimation
    waitmessage
    preparehpgaugeslide BATTLER_FAINTED
    printmessage 0x1E, 0x2, 0x5, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
    if IF_MASK, VAR_60, 0x1, _0060
_0060:
    endscript

.close
