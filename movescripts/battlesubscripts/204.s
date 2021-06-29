.nds
.thumb

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a001\a001_204", 0

a001_204:
    setstatus2effect BATTLER_xFF, 0xA
    waitmessage
    printmessage 0x386, 0x2C, 0xFF, 0xFF, 0xFF, "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
    gotosubscript 290
    endscript

.close
