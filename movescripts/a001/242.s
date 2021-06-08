.nds
.thumb

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a001\a001_242", 0

a001_242:
    printmessage 0x40F, 0x2, 0xFF, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
    changevartomonvalue VAR_OP_CLEARMASK, BATTLER_xFF, VAR_RULESET, 0x8000000
    endscript

.close
