.nds
.thumb

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a001\a001_028", 0

a001_028:
    printmessage 0x6F, 0x2, 0x1, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
    setstatus2effect BATTLER_ATTACKER, 0x4
    waitmessage
    endscript

.close
