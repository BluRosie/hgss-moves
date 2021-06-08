.nds
.thumb

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a030\a030_008", 0

a030_008:
    checknostatus BATTLER_DEFENDER, _0040
    ifmonstat IF_NOTMASK, BATTLER_DEFENDER, 0x34, 0x7, _0040
    changevar VAR_OP_SET, VAR_STATUS2, 0x2000003D
    critcalc
    damagecalc
    endscript
_0040:
    printattackmessage
    waitmessage
    wait 0x1E
    printmessage 0x3C, 0x2, 0x2, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
    changevar VAR_OP_SETMASK, VAR_10, 0x80000000
    endscript

.close
