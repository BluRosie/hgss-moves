.nds
.thumb

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a001\a001_113", 0

a001_113:
    if IF_MASK, VAR_06, 0x4000, _0040
    printattackmessage
    waitmessage
    wait 0x1E
    printmessage 0x1C0, 0x6, 0xFF, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
_0040:
    if IF_MASK, VAR_10, 0x1FD849, _0060
    seteffectprimary BATTLER_ATTACKER
    waitmessage
_0060:
    endscript

.close
