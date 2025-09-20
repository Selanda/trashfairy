@ECHO OFF
:MENU
ECHO.
ECHO ...............................................
ECHO  Menu
ECHO ...............................................
ECHO.
ECHO  1. clear temp files
ECHO  2. dism sfc
ECHO  3. defrag
ECHO  4. exit
ECHO.
ECHO.


SET /P M=Enter selection: 
IF %M%==1 GOTO TEMP
IF %M%==2 GOTO DISM
IF %M%==3 GOTO DFRG
IF %M%==4 GOTO EXIT


:TEMP
cd "C:\WINDOWS\Temp\"
del *.* /S /Q
cd "C:\WINDOWS\SoftwareDistribution\Download\"
del *.* /S /Q
cd "C:\Users\%username%\AppData\Local\Temp\"
del *.* /S /Q
cd "C:\Users\%username%\AppData\LocalLow\Temp"
del *.* /S /Q
C:\Windows\System32\cleanmgr.exe /sagerun:1
cls
GOTO MENU

:DISM
dism /online /cleanup-image /restorehealth
sfc /scannow
cls
GOTO MENU

:DFRG
defrag C: E: F: /o /u /v
cls
GOTO MENU

:EXIT
exit
