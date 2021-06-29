.nds
.thumb

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a030\a030_196", 0

a030_196:
    lowkickdamagecalc
    critcalc
    damagecalc
    endscript

.close
