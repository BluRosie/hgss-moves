.nds
.thumb

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a030\a030_180", 0

a030_180:
    tryassist _0024
    printattackmessage
    waitmessage
    seteffectprimary BATTLER_ATTACKER
    waitmessage
    jumptocurmovescript2 0
_0024:
    changevar VAR_OP_SETMASK, VAR_10, 0x40
    endscript

.close
