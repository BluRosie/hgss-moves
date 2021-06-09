.nds
.thumb

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a001\a001_013", 0

a001_013:
    seteffectprimary BATTLER_ATTACKER
    waitmessage
    printpreparedmessage
    waitmessage
    wait 0x1E
    setsomeflag BATTLER_ADDL_EFFECT
    ifmonstat IF_NOTMASK, BATTLER_ADDL_EFFECT, 0x3B, 0x200400C0, _0048
    togglevanish BATTLER_ADDL_EFFECT, 0x1
_0048:
    endscript

.close
