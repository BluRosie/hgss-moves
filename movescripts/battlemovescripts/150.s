.nds
.thumb

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a000\a000_150", 0

a000_150:
    incrementgamestat BATTLER_ATTACKER, 0x0, 0x4D
    jumptocurmoveeffectscript

.close
