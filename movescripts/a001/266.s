.nds
.thumb

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a001\a001_266", 0

a001_266:
    ifmonstat IF_EQUAL, BATTLER_DEFENDER, 0x2F, 0x0, _0028
    setstatus2effect BATTLER_DEFENDER, 0xA
    waitmessage
_0028:
    changevar VAR_OP_SETMASK, VAR_06, 0x40
    changevar2 VAR_OP_SET, VAR_BATTLER_SOMETHING, VAR_ATTACKER
    gotosubscript 2
    printmessage 0x488, 0x21, 0x1, 0x2, 0x2, "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
    removeitem BATTLER_DEFENDER
    endscript

.close
