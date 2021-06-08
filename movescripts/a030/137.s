.nds
.thumb

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a030\a030_137", 0

a030_137:
    if IF_MASK, VAR_FIELD_EFFECT, 0x30, _0094
    preparemessage 0x327, 0x0, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    changevar VAR_OP_CLEARMASK, VAR_FIELD_EFFECT, 0x80FF
    changevar VAR_OP_SETMASK, VAR_FIELD_EFFECT, 0x10
    changevar VAR_OP_SET, VAR_WEATHER_TURNS, 0x5
    changevar VAR_OP_SET, VAR_STATUS2, 0x2000005D
    checkitemeffect 0x1, BATTLER_ATTACKER, 0x70, _0090
    getitempower BATTLER_ATTACKER, 0x9
    changevar2 VAR_OP_ADD, VAR_WEATHER_TURNS, 0x9
_0090:
    endscript
_0094:
    changevar VAR_OP_SETMASK, VAR_10, 0x40
    endscript

.close
