narchive extract a030.narc -o a030 -nf
narchive extract a001.narc -o a001 -nf
mkdir movescripts movescripts\a001 movescripts\a030
tools\disassemblescripts
rmdir /q /s a001
rmdir /q /s a030