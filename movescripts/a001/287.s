.nds
.thumb

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a001\a001_287", 0

a001_287:
    togglevanish BATTLER_xFF, 0x0
    waitmessage
    endscript

.close
