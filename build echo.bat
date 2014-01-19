@echo off
title Building Echo
REM apps/asm68k.exe /k /p /o ae- ressrc\hwf.asm, res\MEGAOS\UI\HWF.HWF >results\errors.txt, , listings\fnt.lst
vasm -Fbin -o echo.bin -L z80.lst src-z80/build.z80

asm68k.exe /k /p /o ae- tester/build.68k, Tester.bin >error.txt, , echotester.lst
type error.txt
echo done
pause