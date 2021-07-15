.nds
.thumb

.include "include/animscriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a010\a010_485", 0

red equ 20
green equ 0
blue equ 31

a010_485:
    loadparticlefromspa 0, 498
    waitparticle

// cloud
    addparticle 0, 2, 4
    wait 64

// poison hit
    callfunction 36, 5, 3, 0, 1, 10, 264, "NaN", "NaN", "NaN", "NaN", "NaN"
    callfunction 34, 5, 8, 1, 1, red | green << 5 | blue << 10, 12, "NaN", "NaN", "NaN", "NaN", "NaN"
    addparticle 0, 1, 4
    addparticle 0, 0, 4
    waitparticle

    unloadparticle 0
    waitstate
    end
    

.close
