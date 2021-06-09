.nds
.thumb

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a001\a001_146", 0

a001_146:
    printattackmessage
    waitmessage
    wait 0xF
    changevar2 VAR_OP_SET, VAR_ATTACKER_TEMP, VAR_ATTACKER
    changevar2 VAR_OP_SET, VAR_DEFENDER, VAR_ATTACKER
    changevar2 VAR_OP_SET, VAR_ATTACKER, VAR_BATTLER_SOMETHING
    changevar VAR_OP_SET, VAR_MOVE_EFFECT, 0x1
    changevar VAR_OP_SET, VAR_MOVE_TEMP2, 0x121
    seteffectprimary BATTLER_xFF
    waitmessage
    printmessage 0x244, 0x9, 0xFF, 0xE, "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
    changevar VAR_OP_SET, VAR_MOVE_EFFECT, 0x0
    changevar VAR_OP_CLEARMASK, VAR_06, 0x4000
    if IF_EQUAL, VAR_CURRENT_MOVE, 0x16F, _00D4
    changevar2 VAR_OP_SET, VAR_DEFENDER, VAR_ATTACKER_TEMP
    endscript
_00D4:
    changevar2 VAR_OP_SET, VAR_DEFENDER, VAR_ATTACKER
    endscript

.close
