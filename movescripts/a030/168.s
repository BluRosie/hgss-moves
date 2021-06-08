.nds
.thumb

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a030\a030_168", 0

a030_168:
    changevar VAR_OP_SET, VAR_09, 0x10000000
    changevar2 VAR_OP_LSH, VAR_09, 0xF
    changevar2 VAR_OP_SETMASK, VAR_06, 0x9
    changevartomonvalue VAR_OP_SET, BATTLER_ATTACKER, VAR_47, 0x0
    changevar VAR_OP_SET, VAR_HP_TEMP, 0x7FFF
    healthbarupdate BATTLER_ATTACKER
    changevar VAR_OP_SETMASK, VAR_06, 0x8001C
    changevar VAR_OP_SET, VAR_STATUS1, 0xA000006B
    endscript

.close
