.nds
.thumb

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a001\a001_153", 0

a001_153:
    gotosubscript 279
_0008:
    trypursuit _03BC
    changevar VAR_OP_SET, VAR_DAMAGE_MULT, 0x14
    critcalc
    damagecalc
    typecheck
    changevar VAR_OP_CLEARMASK, VAR_06, 0x1
    changevar VAR_OP_CLEARMASK, VAR_06, 0x4000
    printattackmessage
    waitmessage
    if IF_MASK, VAR_10, 0x1FD849, _026C
    seteffectprimary BATTLER_ATTACKER
    waitmessage
    checknostatus BATTLER_DEFENDER, _01B4
    changevar2 VAR_OP_SET, VAR_43, 0xE
    changevar VAR_OP_MUL, VAR_43, 0xFFFFFFFF
    ifmonstat2 IF_LESSTHAN, BATTLER_DEFENDER, VAR_47, 0x2B, _00D0
    changevar2 VAR_OP_SET, VAR_68, 0xE
    goto _00F4
_00D0:
    changevartomonvalue2 VAR_OP_GET_RESULT, BATTLER_DEFENDER, 0x2F, VAR_68
    changevar VAR_OP_MUL, VAR_68, 0xFFFFFFFF
_00F4:
    changevar2 VAR_OP_SET, VAR_HP_TEMP, 0xE
    changevar2 VAR_OP_SET, VAR_65, 0xE
    changevar2 VAR_OP_SET, VAR_BATTLER_SOMETHING, 0x10
    cmd_D0_checkhpsomething BATTLER_xFF
    gotosubscript 2
    gotosubscript 16
    gotosubscript 21
    ifmonstat IF_EQUAL, BATTLER_DEFENDER, 0x2F, 0x0, _029C
    checkifcurrentmovehits _016C
    gotosubscript2 43
_016C:
    itemeffectcheckonhit _017C
    gotosubscript2 43
_017C:
    changevar VAR_OP_SETMASK, VAR_06, 0x2000
    checkwhenitemmakesmovehit _019C
    gotosubscript2 43
_019C:
    changevar VAR_OP_CLEARMASK, VAR_06, 0x2000
    goto _027C
_01B4:
    changevar2 VAR_OP_SET, VAR_43, 0xE
    changevar VAR_OP_MUL, VAR_43, 0xFFFFFFFF
    ifmonstat2 IF_LESSTHAN, BATTLER_DEFENDER, ABILITY_FLASH_FIRE, 0x2B, _0204
    changevar2 VAR_OP_SET, VAR_68, 0xE
    goto _023C
_0204:
    changevartomonvalue VAR_OP_CLEARMASK, BATTLER_DEFENDER, VAR_MOVE_BACKUP, 0x1000000
    changevartomonvalue2 VAR_OP_GET_RESULT, BATTLER_DEFENDER, 0x5A, VAR_68
    changevar VAR_OP_MUL, VAR_68, 0xFFFFFFFF
_023C:
    changevar2 VAR_OP_SET, VAR_BATTLER_SOMETHING, 0x10
    gotosubscript 90
    gotosubscript 16
    gotosubscript 21
    goto _027C
_026C:
    wait 0xF
    gotosubscript 7
_027C:
    gotosubscript 280
    changevar2 VAR_OP_GET_RESULT, VAR_MOVE_TEMP, 0x18
    goto _0008
_029C:
    gotosubscript 83
    checkifcurrentmovehits _02B4
    gotosubscript2 43
_02B4:
    itemeffectcheckonhit _02C4
    gotosubscript2 43
_02C4:
    changevar VAR_OP_SETMASK, VAR_06, 0x2000
    checkwhenitemmakesmovehit _02E4
    gotosubscript2 43
_02E4:
    changevar VAR_OP_CLEARMASK, VAR_06, 0x2000
    changevar2 VAR_OP_SET, VAR_43, 0x12
    changevar VAR_OP_SET, VAR_FAINTED_BATTLER, 0x0
    changevar2 VAR_OP_SET, VAR_09, 0x3C
    changevar VAR_OP_RSH, VAR_09, 0x1C
    changevar VAR_OP_CLEARMASK, VAR_60, 0xF0000000
_0344:
    if IF_NOTMASK, VAR_09, 0x1, _0360
    gotosubscript 276
_0360:
    changevar VAR_OP_ADD, VAR_FAINTED_BATTLER, 0x1
    changevar VAR_OP_RSH, VAR_09, 0x1
    if IF_NOTEQUAL, VAR_09, 0x0, _0344
    changevar2 VAR_OP_SUB_TO_ZERO, VAR_FIELD_EFFECT, 0x2B
    gotosubscript 280
    changevar2 VAR_OP_GET_RESULT, VAR_MOVE_TEMP, 0x18
_03BC:
    endscript

.close
