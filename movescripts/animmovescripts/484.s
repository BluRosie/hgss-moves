.nds
.thumb

.include "include/animscriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a010\a010_484", 0

red equ 31
green equ 0
blue equ 0

a010_484:
    //loadparticlefromspa 0, 151
    //waitparticle
    loadparticlefromspa 0, 497
    waitparticle

    //addparticle2 0, 1, 6, 3
    //callfunction 65, 6, 1, 0, 0, 0, 19, 64, "NaN", "NaN", "NaN", "NaN"
    //waitparticle

    addparticle 0, 1, 4
    addparticle 0, 0, 4
    callfunction 34, 5, 8, 1, 1, red | green << 5 | blue << 10, 12, "NaN", "NaN", "NaN", "NaN", "NaN"
    callfunction 36, 5, 3, 0, 1, 7, 264, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    waitparticle

    unloadparticle 0
    waitstate
    end
    

.close
