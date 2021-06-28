.nds
.thumb

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a030\a030_083", 0

a030_083:
    printattackmessage
    waitmessage
    wait 0x1E
    seteffectprimary BATTLER_ATTACKER
    waitmessage
    metronome
    jumptoeffectscript 0

.close
