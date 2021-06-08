.nds
.thumb

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a001\a001_276", 0

a001_276:
    shouldgetexp _0018
_0008:
    initexpget
    getexp
    getexploop _0008
_0018:
    endscript

.close
