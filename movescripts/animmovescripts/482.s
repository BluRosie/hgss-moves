.nds
.thumb

.include "include/animscriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a010\a010_482", 0

a010_482:
    loadparticlefromspa 0, 495
    waitparticle
    loadparticlefromspa 1, 119
    waitparticle
    
    addparticle 1, 1, 4
    addparticle 1, 2, 4
    wait 12
    addparticle 0, 1, 4
    addparticle 0, 0, 4
    callfunction 36, 5, 3, 0, 1, 7, 264, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitparticle

    unloadparticle 0
    unloadparticle 1
    waitstate
    end
    

.close
