.nds
.thumb

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a001\a001_246", 0

a001_246:
    abilitycheck 0x0, BATTLER_ATTACKER, ABILITY_ROCK_HEAD, _009C
    abilitycheck 0x0, BATTLER_ATTACKER, ABILITY_MAGIC_GUARD, _009C
    changevar2 VAR_OP_SET, VAR_BATTLER_SOMETHING, 0xF
    changevar2 VAR_OP_SET, VAR_HP_TEMP, 0x36
    if IF_EQUAL, VAR_HP_TEMP, 0x0, _0068
    damagediv 32, 2
_0068:
    changevar VAR_OP_SETMASK, VAR_06, 0x40
    gotosubscript 2
    printmessage 0x117, 0x2, 0x1, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
_009C:
    endscript

.close
