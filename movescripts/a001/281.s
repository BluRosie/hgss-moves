.nds
.thumb

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a001\a001_281", 0

a001_281:
    printattackmessage
    waitmessage
    wait 0x1E
    printmessage 0x4D2, 0x0, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
    clearsomeflag BATTLER_ATTACKER
    if IF_EQUAL, VAR_CURRENT_MOVE, 0x63, _0070
    ifmonstat IF_NOTMASK, BATTLER_ATTACKER, MON_DATA_STATUS_2, 0x800000, _0070
    changevartomonvalue VAR_OP_CLEARMASK, BATTLER_ATTACKER, 0x35, 0x800000
_0070:
    endscript

.close
