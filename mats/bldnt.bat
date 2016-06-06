@echo off
set m=%1
set o=%2
if "%o%"=="" set o=0
set SCHEMEHEAPDIRS=.;..\boot\%%m
echo (time (compile-file "mat")) | ..\bin\%m%\scheme -q
call ..\c\vs.bat cl /DWIN32 /Feforeign1.so /I..\boot\%m% /LD /MD /nologo ..\bin\%m%\csv941.lib foreign1.c foreign2.c foreign3.c
call ..\c\vs.bat cl /DWIN32 /MD /nologo cat_flush.c
..\bin\%m%\scheme -q mat.so < script.all%o%
