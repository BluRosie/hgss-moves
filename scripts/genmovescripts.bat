narchive extract a030.narc -o a030 -nf
narchive extract a001.narc -o a001 -nf
narchive extract a000.narc -o a000 -nf
mkdir movescripts movescripts\a001 movescripts\a030 movescripts\a000
tools\disassemblescripts
rmdir /q /s a000
rmdir /q /s a001
rmdir /q /s a030