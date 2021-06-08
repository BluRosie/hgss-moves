.nds
.thumb

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a030\a030_143", 0

a030_143:
    dopsychup
    preparemessage 0x1C4, 0x9, 0x1, 0x2, "NaN", "NaN", "NaN", "NaN"
    changevar VAR_OP_SET, VAR_STATUS2, 0x2000005A
    endscript

.close
