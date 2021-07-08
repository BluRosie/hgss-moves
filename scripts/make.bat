call scripts\makemovedata
tools\armips asm\moves.s
tools\armips asm\tr_ai.s
tools\armips asm\backgrounds.s
cd text
thenewpoketext < script1.txt
xcopy "a027withalotofblanks" "tmp_base\root\a\0\2\7"
thenewpoketext < script2.txt
cd ..\
xcopy "text\tmp_base\a027.narc" "a027.narc"
call scripts\makemovescripts
call scripts\makeanimscripts
call scripts\makesyntheticoverlay
call scripts\makemoveparticles
call scripts\makebattlebackgrounds