.nds
.thumb

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a001\a001_071", 0

a001_071:
    ifmonstat IF_MASK, BATTLER_ATTACKER, 0x35, 0x1000, _0018
_0018:
    printmessage 0x261, 0xA, 0x1, 0x1, "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
    clearsomeflag BATTLER_ATTACKER
    endscript

.close
