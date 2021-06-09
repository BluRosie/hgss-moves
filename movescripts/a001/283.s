.nds
.thumb

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a001\a001_283", 0

a001_283:
    setbattleresult
    battleresultmessage
    waitmessage
    wait 0x1E
    fadeout
    waitmessage
    endscript

.close
