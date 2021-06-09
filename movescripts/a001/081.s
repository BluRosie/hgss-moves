.nds
.thumb

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a001\a001_081", 0

a001_081:
    if IF_EQUAL, VAR_CURRENT_MOVE, 0x16C, _0040
    checkoneturnflag BATTLER_DEFENDER, 0x2, 0x0, _005C
    printmessage 0x4DB, 0x2, 0x2, "NaN", "NaN", "NaN", "NaN", "NaN"
    goto _0050
_0040:
    printmessage 0x418, 0x2, 0x2, "NaN", "NaN", "NaN", "NaN", "NaN"
_0050:
    waitmessage
    wait 0x1E
_005C:
    setoneturnflag BATTLER_DEFENDER, 0x2, 0x0
    endscript

.close
