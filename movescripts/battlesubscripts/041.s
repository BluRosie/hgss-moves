.nds
.thumb

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a001\a001_041", 0

a001_041:
    trainerslidein BATTLER_OPPONENT, 0x1
    waitmessage
    trainermessage2 BATTLER_OPPONENT
    waitmessage
    wait 0x3C
    preparetrainerslide BATTLER_OPPONENT
    waitmessage
    endscript

.close
