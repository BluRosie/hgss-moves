.nds
.thumb

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

GuardSplitMsg equ 1276 // new word

.create "a001\a001_298", 0

a001_298:
    //def
    changevartomonvalue2 VAR_OP_GET_RESULT, BATTLER_ATTACKER, MON_DATA_DEF, 9
    changevartomonvalue2 VAR_OP_GET_RESULT, BATTLER_DEFENDER, MON_DATA_DEF, 43
    changevar2 VAR_OP_ADD,43, 9
    changevar VAR_OP_RSH, 43, 1
    changevartomonvalue2 VAR_OP_SET, BATTLER_ATTACKER, MON_DATA_DEF, 43
    changevartomonvalue2 VAR_OP_SET, BATTLER_DEFENDER, MON_DATA_DEF, 43

    //spdef
    changevartomonvalue2 VAR_OP_GET_RESULT, BATTLER_ATTACKER, MON_DATA_SPDEF, 9
    changevartomonvalue2 VAR_OP_GET_RESULT, BATTLER_DEFENDER, MON_DATA_SPDEF, 43
    changevar2 VAR_OP_ADD,43, 9
    changevar VAR_OP_RSH, 43, 1
    changevartomonvalue2 VAR_OP_SET, BATTLER_ATTACKER, MON_DATA_SPDEF, 43
    changevartomonvalue2 VAR_OP_SET, BATTLER_DEFENDER, MON_DATA_SPDEF, 43

    printmessage GuardSplitMsg, 0x2, 0x1, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
    endscript

.close
