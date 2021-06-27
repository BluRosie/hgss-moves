.nds
.thumb

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a001\a001_139", 0

a001_139:
    printattackmessage
    waitmessage
    wait 0xF
    printmessage 0x23E, 0xA, 0x1, 0x1, "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
    trymagiccoat2
    changevar VAR_OP_CLEARMASK, VAR_06, 0x4000
    endscript

.close
