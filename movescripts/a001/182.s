.nds
.thumb

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a001\a001_182", 0

a001_182:
    printattackmessage
    waitmessage
    wait 0xF
    ifmonstat IF_EQUAL, BATTLER_DEFENDER, 0x15, 0xC, _0084
    setstatus2effect BATTLER_DEFENDER, 0xC
    waitmessage
    changevartomonvalue VAR_OP_ADD, BATTLER_DEFENDER, 0x15, 0x1
    changevar VAR_OP_SET, VAR_22, 0x3
    printmessage 0x26E, 0x27, 0x2, 0x2, 0xFF, "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
    endscript
_0084:
    printmessage 0x27E, 0x25, 0x2, 0x2, 0x1, "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
    endscript

.close
