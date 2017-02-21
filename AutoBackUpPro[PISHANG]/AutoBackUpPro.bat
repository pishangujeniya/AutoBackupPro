
::setlocal EnableDelayedExpansion


FOR /F "usebackq tokens=*" %%r in (`CSCRIPT "GUISOURCE.vbs"`) DO SET SOURCE=%%r
::ECHO %SOURCE%

FOR /F "usebackq tokens=*" %%r in (`CSCRIPT "GUIDEST.vbs"`) DO SET DESTI=%%r
::ECHO %DESTI%





    ::setting variables
::set /P src=Please Enter Source Directory :
::set /p dest=Please Enter Destination Directory :
::set /P tval=Please Enter Backup Interval in Minutes :
set /P reloop=Please Enter Backup Interval in Seconds :
::set reloop=15
:again
robocopy "%SOURCE%" "%DESTI%" /e /is /R:3 /W:30 /log+:"%DESTI%"\BackUpLog.txt
::robocopy "%SOURCE%" "%DESTI%" /e /is /R:3 /W:30 /MON:%tval% /MOT:%tval% /log+:BackUpLog.txt 
type PISHANG.txt

TIMEOUT /T %reloop%

goto again

