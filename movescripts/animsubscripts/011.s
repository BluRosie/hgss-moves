.nds
.thumb

.include "include/animscriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a061\a061_11", 0

a061_11:
    loadparticle 0, 31
    playsepan 1808, -117
    addparticle 0, 0, 3
    addparticle 0, 1, 3
    waitparticle
    unloadparticle 0
    end

.close
