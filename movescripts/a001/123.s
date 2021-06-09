.nds
.thumb

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a001\a001_123", 0

a001_123:
    printattackmessage
    waitmessage
    wait 0xF
    printpreparedmessage
    waitmessage
    seteffectprimary BATTLER_ATTACKER
    waitmessage
    endscript

.close
