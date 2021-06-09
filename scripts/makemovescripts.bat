mkdir a030 a001
for /l %%F in (1, 1, 9) do (
 if exist "movescripts\a030\00%%F.s" (
  tools\armips movescripts\a030\00%%F.s ))
for /l %%F in (10, 1, 99) do (
 if exist "movescripts\a030\0%%F.s" (
  tools\armips movescripts\a030\0%%F.s ))
for /l %%F in (100, 1, 700) do (
 if exist "movescripts\a030\%%F.s" (
  tools\armips movescripts\a030\%%F.s ))
for /l %%F in (1, 1, 9) do (
 if exist "movescripts\a001\00%%F.s" (
  tools\armips movescripts\a001\00%%F.s ))
for /l %%F in (10, 1, 99) do (
 if exist "movescripts\a001\0%%F.s" (
  tools\armips movescripts\a001\0%%F.s ))
for /l %%F in (100, 1, 700) do (
 if exist "movescripts\a001\%%F.s" (
  tools\armips movescripts\a001\%%F.s ))
tools\narchive create a030.narc a030 -nf
tools\narchive create a001.narc a001 -nf
rmdir /q /s a001
rmdir /q /s a030