::setting variables
set /P src=Please Enter Source Directory :
set /p dest=Please Enter Destination Directory :
set /P tval=Please Enter Backup Interval in Minutes :
set reloop=15
:again
robocopy "%src%" "%dest%" /e /is /R:3 /W:30 /MON:%tval% /MOT:%tval% /log+:BackUpLog.txt 
TIMEOUT /T %reloop%
goto again
