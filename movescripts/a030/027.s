.nds
.thumb

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a030\a030_027", 0

a030_027:
    ifmonstat IF_MASK, BATTLER_ATTACKER, 0x35, 0xC00, _0028
    changevar VAR_OP_SET, VAR_STATUS2, 0x20000035
_0028:
    critcalc
    damagecalc
    endscript

.close
