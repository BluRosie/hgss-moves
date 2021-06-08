.nds
.thumb

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a001\a001_036", 0

a001_036:
    ifmonstat IF_MASK, BATTLER_ATTACKER, 0x35, 0x300, _009C
    printmessage 0x14F, 0x2, 0x1, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
    changevar VAR_OP_SET, VAR_MOVE_EFFECT, 0x1
    changevartomonvalue VAR_OP_CLEARMASK, BATTLER_ATTACKER, VAR_MOVE_BACKUP, 0x1000
    changevar VAR_OP_SETMASK, VAR_06, 0x200
    if IF_EQUAL, VAR_DAMAGE, 0x0, _0080
    endscript
_0080:
    gotosubscript 75
    changevar VAR_OP_SETMASK, VAR_10, 0x80000000
    endscript
_009C:
    printmessage 0x14C, 0x2, 0x1, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
    endscript

.close
