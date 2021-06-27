mkdir a030 a001
for /l %%F in (0, 1, 9) do (
 if exist "movescripts\battlemovescripts\00%%F.s" (
  tools\armips movescripts\battlemovescripts\00%%F.s ))
for /l %%F in (10, 1, 99) do (
 if exist "movescripts\battlemovescripts\0%%F.s" (
  tools\armips movescripts\battlemovescripts\0%%F.s ))
for /l %%F in (100, 1, 700) do (
 if exist "movescripts\battlemovescripts\%%F.s" (
  tools\armips movescripts\battlemovescripts\%%F.s ))
for /l %%F in (0, 1, 9) do (
 if exist "movescripts\battlesubscripts\00%%F.s" (
  tools\armips movescripts\battlesubscripts\00%%F.s ))
for /l %%F in (10, 1, 99) do (
 if exist "movescripts\battlesubscripts\0%%F.s" (
  tools\armips movescripts\battlesubscripts\0%%F.s ))
for /l %%F in (100, 1, 700) do (
 if exist "movescripts\battlesubscripts\%%F.s" (
  tools\armips movescripts\battlesubscripts\%%F.s ))
tools\narchive create a030.narc a030 -nf
tools\narchive create a001.narc a001 -nf
rmdir /q /s a001
rmdir /q /s a030