.nds
.thumb

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a001\a001_202", 0

a001_202:
    setstatus2effect BATTLER_xFF, 0xA
    waitmessage
    printmessage 0x371, 0xF, 0xFF, 0xFF, "NaN", "NaN", "NaN", "NaN"
    waitmessage
    setstatusicon BATTLER_xFF, 0x0
    wait 0x1E
    changevartomonvalue VAR_OP_SET, BATTLER_xFF, VAR_BATTLE_STATUS, 0x0
    gotosubscript 290
    endscript

.close
