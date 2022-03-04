@echo off
SET mypath=%~dp0
:which
cls
set /p which1="Which type do you want! (numbercount,randompasswords,randomusernames)"
if "%which1%"=="numbercount" (
goto numbercount
)
if "%which1%"=="randompasswords" (
goto randompasswords
)
if "%which1%"=="randomusernames" (
goto randomusernames
)

:numbercount
cls
set /p numbercount1="What do you want the first number to be?"
set /p numbercount2="What do you want the last number to be?"
echo %mypath:~0,-1%
start cmd /k lua %mypath:~0,-1%\counter.lua numbercount %numbercount1% %numbercount2%
exit
pause

:randompasswords
cls
set /p numbercount1="How many passwords?"
set /p numbercount2="Length of password?"
echo %mypath:~0,-1%
start cmd /k lua %mypath:~0,-1%\counter.lua randompasswords %numbercount1% %numbercount2%
exit
pause

:randomusernames
cls
set /p numbercount1="How many usernames?"
set /p numbercount2="Length of username?"
echo %mypath:~0,-1%
start cmd /k lua %mypath:~0,-1%\counter.lua randomusernames %numbercount1% %numbercount2%
exit
pause