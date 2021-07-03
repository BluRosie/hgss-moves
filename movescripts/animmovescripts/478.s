.nds
.thumb

.include "include/animscriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a010\a010_478", 0

red equ 31
green equ 31
blue equ 31

a010_478:
    loadparticlefromspa 0, 492
    waitparticle

	callfunction 34, 6, 2, 0, 1, red | green << 5 | blue << 10, 10, 10, "NaN", "NaN", "NaN", "NaN"
    callfunction 36, 5, 3, 0, 1, 7, 264, "NaN", "NaN", "NaN", "NaN", "NaN" // shake target mon
    addparticle 0, 1, 3
    addparticle 0, 0, 3
    playsepan 1911, -117
	wait 2
    playsepan 1911, -117
	wait 2
    playsepan 1911, -117
	wait 2
    playsepan 1911, -117
	wait 2
    playsepan 1911, -117
	wait 2
    playsepan 1911, -117
	wait 2
    playsepan 1911, -117
    waitparticle

    unloadparticle 0
    waitstate
    end
    

.close
