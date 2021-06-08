.nds
.thumb

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a030\a030_210", 0

a030_210:
    ifmonstat IF_MASK, BATTLER_ATTACKER, 0x3B, 0x20000, _004C
    changevartomonvalue VAR_OP_SETMASK, BATTLER_ATTACKER, VAR_RULESET, 0x20000
    preparemessage 0x24C, 0x0, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    changevar VAR_OP_SET, VAR_STATUS2, 0x2000005A
    endscript
_004C:
    changevar VAR_OP_SETMASK, VAR_10, 0x40
    endscript

.close
