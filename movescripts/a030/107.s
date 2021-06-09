.nds
.thumb

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a030\a030_107", 0

a030_107:
    checknostatus BATTLER_DEFENDER, _0050
    ifmonstat IF_MASK, BATTLER_DEFENDER, 0x35, 0x8000000, _0050
    ifmonstat IF_NOTMASK, BATTLER_DEFENDER, 0x34, 0x7, _0050
    changevar VAR_OP_SET, VAR_ADD_STATUS1, 0x20000021
    endscript
_0050:
    changevar VAR_OP_SETMASK, VAR_10, 0x40
    endscript

.close
