mkdir a011
tools\armips data\moves.s
tools\narchive create a011.narc a011/ -nf
rmdir /q /s a011
armips asm\moves.s