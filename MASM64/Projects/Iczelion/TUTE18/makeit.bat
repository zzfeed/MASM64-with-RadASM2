@echo off

set appname=TUTE18

del %appname%.obj
del %appname%.exe

REM \masm64\bin64\rc.exe /v %appname%.rc
REM \masm64\bin64\Cvtres.exe /machine:x64 DialogWithManifest.res

\masm64\bin64\ml64.exe /c %appname%.asm

\masm64\bin64\link.exe /SUBSYSTEM:WINDOWS /LARGEADDRESSAWARE %appname%.obj

dir %appname%.exe

pause