.nds
.thumb

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a001\a001_017", 0

a001_017:
    if IF_MASK, VAR_06, 0x10000, _0030
    printmessage 0x2E, 0x6, 0xFF, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
_0030:
    endscript

.close
