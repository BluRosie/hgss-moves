.nds
.thumb

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a001\a001_292", 0

a001_292:
    seteffectprimary BATTLER_ATTACKER
    waitmessage
    ifmonstat IF_NOTMASK, BATTLER_ATTACKER, 0x3B, 0x200400C0, _0030
    togglevanish BATTLER_ATTACKER, 0x1
_0030:
    printpreparedmessage
    waitmessage
    wait 0x1E
    changevar2 VAR_OP_SET, VAR_ACTIVE_BATTLER, 0xF
    changevar VAR_OP_SET, VAR_34, 0x10
    changevar VAR_OP_SET, VAR_05, 0x2
    gotosubscript 12
    setstatus2effect BATTLER_ATTACKER, 0xA
    waitmessage
    printmessage 0x4E3, 0xF, 0x1, 0x1, "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
    removeitem BATTLER_ATTACKER
    changevar VAR_OP_CLEARMASK, VAR_06, 0x4000
    endscript

.close
