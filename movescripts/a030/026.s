.nds
.thumb

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a030\a030_026", 0

a030_026:
    ifmonstat IF_MASK, BATTLER_ATTACKER, 0x35, 0x1000, _0040
    if IF_MASK, VAR_06, 0x200, _0040
    changevar VAR_OP_SET, VAR_STATUS1, 0x4000003F
    endscript
_0040:
    changevar VAR_OP_SETMASK, VAR_06, 0x1
    endscript

.close
