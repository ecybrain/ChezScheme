@echo off
IF "%VS140COMNTOOLS%" NEQ "" goto :VS

echo Visual Studio 2015 must be installed.
exit 1

:VS
call "%VS140COMNTOOLS%\vsvars32.bat" > nul
%*
