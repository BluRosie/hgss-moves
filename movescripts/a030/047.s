.nds
.thumb

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a030\a030_047", 0

a030_047:
    ifmonstat IF_MASK, BATTLER_ATTACKER, 0x35, 0x100000, _002C
    changevar VAR_OP_SETMASK, VAR_STATUS1, 0x40000046
    endscript
_002C:
    changevar VAR_OP_SETMASK, VAR_10, 0x40
    endscript

.close
