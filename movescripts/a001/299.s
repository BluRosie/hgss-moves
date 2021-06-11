.nds
.thumb

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

PowerSplitMsg equ 1279 // new word

.create "a001\a001_299", 0

a001_299:
    //attack
    changevartomonvalue2 VAR_OP_GET_RESULT, BATTLER_ATTACKER, MON_DATA_ATK, 9
    changevartomonvalue2 VAR_OP_GET_RESULT, BATTLER_DEFENDER, MON_DATA_ATK, 43
    changevar2 VAR_OP_ADD,43, 9
    changevar VAR_OP_RSH, 43, 1
    changevartomonvalue2 VAR_OP_SET, BATTLER_ATTACKER, MON_DATA_ATK, 43
    changevartomonvalue2 VAR_OP_SET, BATTLER_DEFENDER, MON_DATA_ATK, 43

    //spatk
    changevartomonvalue2 VAR_OP_GET_RESULT, BATTLER_ATTACKER, MON_DATA_SPATK, 9
    changevartomonvalue2 VAR_OP_GET_RESULT, BATTLER_DEFENDER, MON_DATA_SPATK, 43
    changevar2 VAR_OP_ADD,43, 9
    changevar VAR_OP_RSH, 43, 1
    changevartomonvalue2 VAR_OP_SET, BATTLER_ATTACKER, MON_DATA_SPATK, 43
    changevartomonvalue2 VAR_OP_SET, BATTLER_DEFENDER, MON_DATA_SPATK, 43

    printmessage PowerSplitMsg, 0x2, 0x1, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
    endscript

.close
