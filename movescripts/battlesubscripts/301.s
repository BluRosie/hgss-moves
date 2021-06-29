.nds
.thumb

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a001\a001_301", 0

a001_301:
    abilitycheck 0, BATTLER_DEFENDER, ABILITY_MULTITYPE, _end
    ifmonstat IF_NOTEQUAL, BATTLER_DEFENDER, MON_DATA_TYPE_1, TYPE_WATER, changetype
    ifmonstat IF_EQUAL, BATTLER_DEFENDER, MON_DATA_TYPE_2, TYPE_WATER, _end

changetype:
    changevartomonvalue VAR_OP_SET, BATTLER_DEFENDER, MON_DATA_TYPE_1, TYPE_WATER
    changevartomonvalue VAR_OP_SET, BATTLER_DEFENDER, MON_DATA_TYPE_2, TYPE_WATER
    gotosubscript 76
    printmessage 1313, 0xB, 0xFF, 0x15,0,0,0,0 //new message
    waitmessage
    wait 0x1E
    endscript

_end:
    changevar VAR_OP_SETMASK, VAR_10, 0x40
    endscript
    
.close
