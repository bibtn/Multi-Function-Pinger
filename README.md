@echo off
chcp 65001 >nul
title Pinger by bibtn ¦ Time: %TIME% ¦ Date: %DATE%
:main
cls
color 7
echo. 
echo Enter the IP you want to ping!
echo.
set /p ip=^>^> 
echo.
echo Do you want to continuously ping (1) the IP or just 4 times (2) ?
echo.
set /p user=^>^> 
if %user% == 1 goto ping1
if %user% == 2 goto ping2

:ping1
color 3
cls
ping -t %ip%
pause

:ping2
color 3
cls
ping %ip%
echo.
echo Do you want to return to the Main Menu? (Y/N)
set /p user=^>^> 
if %user% == Y goto main
if %user% == N exit
pause
