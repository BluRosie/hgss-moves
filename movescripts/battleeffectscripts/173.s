.nds
.thumb

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a030\a030_173", 0

a030_173:
    printattackmessage
    waitmessage
    seteffectprimary BATTLER_ATTACKER
    waitmessage
    donaturepower
    printmessage 0x1EA, 0x16, 0x1, 0xFF, "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
    jumptoeffectscript 0

.close
