.nds
.thumb

.include "include/animscriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a010\a010_476", 0

a010_476:
    loadparticlefromspa 0, 490
    waitparticle

    addparticle 0, 0, 4
    addparticle 0, 3, 4
    addparticle 0, 1, 4
    wait 96

    unloadparticle 0
    waitstate
    end
    

.close
