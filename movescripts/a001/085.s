.nds
.thumb

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a001\a001_085", 0

a001_085:
    trythief _00C4, _00A0
    changevar VAR_OP_SET, VAR_MOVE_EFFECT, 0x1
    changevar VAR_OP_CLEARMASK, VAR_06, 0x4000
    seteffectprimary BATTLER_ATTACKER
    waitmessage
    printmessage 0x191, 0x21, 0x1, 0x2, 0x2, "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
    changevartomonvalue2 VAR_OP_GET_RESULT, BATTLER_DEFENDER, 0x37, VAR_43
    changevartomonvalue2 VAR_OP_SET, BATTLER_ATTACKER, 0x37, VAR_43
    changevartomonvalue VAR_OP_SET, BATTLER_DEFENDER, 0x37, 0x0
    goto _00C4
_00A0:
    printmessage 0x2CA, 0x25, 0x2, 0x2, 0x1, "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
_00C4:
    endscript

.close
