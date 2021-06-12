.nds
.thumb

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a001\a001_051", 0

a001_051:
    changevar VAR_OP_SET, VAR_05, 0x4
    gotosubscript 37
    ifmonstat IF_NOTMASK, BATTLER_ADDL_EFFECT, MON_DATA_STATUS_2, 0x7, _004C
    printmessage 0x152, 0x2, 0x7, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
_004C:
    endscript

.close
