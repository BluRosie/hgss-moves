.nds
.thumb

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a001\a001_255", 0

a001_255:
    wait 0xF
    random 3, 0
    if IF_EQUAL, VAR_09, 0x1, _0068
    if IF_EQUAL, VAR_09, 0x2, _0080
    if IF_EQUAL, VAR_09, 0x3, _0098
    printmessage 0x33C, 0x2, 0x1, "NaN", "NaN", "NaN", "NaN", "NaN"
    goto _00B0
_0068:
    printmessage 0x33D, 0x2, 0x1, "NaN", "NaN", "NaN", "NaN", "NaN"
    goto _00B0
_0080:
    printmessage 0x33E, 0x2, 0x1, "NaN", "NaN", "NaN", "NaN", "NaN"
    goto _00B0
_0098:
    printmessage 0x33F, 0x2, 0x1, "NaN", "NaN", "NaN", "NaN", "NaN"
    goto _00B0
_00B0:
    waitmessage
    wait 0x1E
    endscript

.close
