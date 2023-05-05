@echo off
chcp 65001 >nul
:main
title Pinger by bibtn ¦ Time: %TIME% ¦ Date: %DATE%
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
cls
color c
echo.
echo Please enter number 1 or 2 !
timeout 2 >nul
goto main

:ping1
title Pinger by bibtn ¦ Time: %TIME% ¦ Date: %DATE%
color 3
cls
ping -t %ip%
pause

:ping2
title Pinger by bibtn ¦ Time: %TIME% ¦ Date: %DATE%
color 3
cls
ping %ip%
title Pinger by bibtn ¦ Time: %TIME% ¦ Date: %DATE%
echo.
echo Do you want to return to the Main Menu? (Y/N)
set /p user=^>^> 
if %user% == Y goto main
if %user% == N exit
pause
