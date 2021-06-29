.nds
.thumb

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a001\a001_126", 0

a001_126:
    if IF_NOTEQUAL, VAR_05, 0x1, _0028
    printattackmessage
    waitmessage
    seteffectprimary BATTLER_ATTACKER
    waitmessage
_0028:
    printpreparedmessage
    waitmessage
    wait 0x1E
    endscript

.close
