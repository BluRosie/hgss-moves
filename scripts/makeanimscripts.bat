mkdir a010 a061
for /l %%F in (0, 1, 9) do (
 if exist "movescripts\animmovescripts\00%%F.s" (
  tools\armips movescripts\animmovescripts\00%%F.s ))
for /l %%F in (10, 1, 99) do (
 if exist "movescripts\animmovescripts\0%%F.s" (
  tools\armips movescripts\animmovescripts\0%%F.s ))
for /l %%F in (100, 1, 700) do (
 if exist "movescripts\animmovescripts\%%F.s" (
  tools\armips movescripts\animmovescripts\%%F.s ))
for /l %%F in (0, 1, 9) do (
 if exist "movescripts\animsubscripts\00%%F.s" (
  tools\armips movescripts\animsubscripts\00%%F.s ))
for /l %%F in (10, 1, 99) do (
 if exist "movescripts\animsubscripts\0%%F.s" (
  tools\armips movescripts\animsubscripts\0%%F.s ))
for /l %%F in (100, 1, 700) do (
 if exist "movescripts\animsubscripts\%%F.s" (
  tools\armips movescripts\animsubscripts\%%F.s ))
tools\narchive create a010.narc a010 -nf
tools\narchive create a061.narc a061 -nf
rmdir /q /s a010
rmdir /q /s a061