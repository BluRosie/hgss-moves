.nds
.thumb

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a001\a001_090", 0

a001_090:
    if IF_MASK, VAR_06, 0x40, _0028
    playmovesoundeffect BATTLER_xFF
    monflicker 0xFF
    waitmessage
_0028:
    printmessage 0x162, 0x2, 0xFF, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
    ifmonstat IF_MASK, BATTLER_xFF, MON_DATA_STATUS_2, 0x1000000, _00A4
    setstatus2effect BATTLER_xFF, 0x1A
    waitmessage
    cmd_C4 BATTLER_xFF
    waitmessage
    setstatus2effect BATTLER_xFF, 0x10
    waitmessage
    printmessage 0x165, 0x2, 0xFF, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
_00A4:
    endscript

.close
