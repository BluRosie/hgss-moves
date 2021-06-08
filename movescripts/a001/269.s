.nds
.thumb

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a001\a001_269", 0

a001_269:
    wait 0xF
    playse BATTLER_ATTACKER, 0x5EC
    printmessage 0x35A, 0x33, 0x1, 0x1, 0xFF, "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
    recoverstatus BATTLER_ATTACKER
    printmessage 0x2F4, 0x2D, 0x1, 0xFF, 0xFF, "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
    endscript

.close
