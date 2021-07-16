.nds
.thumb

.include "include/animscriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a010\a010_480", 0

red equ 31
green equ 31
blue equ 31

a010_480:
    loadparticlefromspa 0, 494
    waitparticle

    callfunction 34, 6, 2, 0, 1, red | green << 5 | blue << 10, 10, 10, "NaN", "NaN", "NaN", "NaN"
    addparticle 0, 1, 3
    addparticle 0, 0, 3
    wait 12

    playsepan 1930, 117
    callfunction 36, 5, 3, 0, 1, 2, 264, "NaN", "NaN", "NaN", "NaN", "NaN" // shake target mon
    waitparticle

    unloadparticle 0
    waitstate
    end
    

.close
