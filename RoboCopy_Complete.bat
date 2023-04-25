@echo off

echo ---------------Robocopy Batch----------------------------
echo ---------------xxx.xxxxxxxxx-----------------------------
echo -Created-------09-30-2022--------------------------------
echo.
echo.
echo.
pause.
cls
echo ------------------Robocopy Batch-------------------------
echo.
echo.
echo.
echo.

:Source
set /p Source= "Enter Source path (Do not write a " \ " at the END of the path), then press enter: "
echo.
echo.
pause
cls

echo ------------------Robocopy Batch-------------------------
echo.
echo.
echo.
echo.

:Destination
set /p Destination= "Enter Destination path (Do not write a " \ " at the END of the path), then press enter: "
echo.
echo.
pause
cls


echo ------------------Robocopy Batch-------------------------
echo.
echo.
echo.
echo.

 :Multi-threaded
set /p Multi-threaded= "Enter thread count (number of simultaneously copy)(Default is 8)(1-32), then press enter: " 
echo.
echo.
pause
cls


echo ------------------Robocopy Batch-------------------------
echo.
echo.
echo.
echo.

:LogFile
set /p LogFileDestination= "Enter the log Destination (Do not write a " \ " at the END of the path), then press enter:  "
echo.
pause
cls


echo ------------------Robocopy Batch-------------------------
echo.
echo.
echo.
echo.

 :LogFileName
set /p LogFileName= "Enter the name of file (A .txt will be created , do not add a file extension), then press enter: " 
echo.
pause
cls 

echo ------------------Robocopy Batch-------------------------
echo.---------------------Summary-----------------------------
echo Source: %Source%
echo Destination: %Destination%
echo MultiThread:%Multi-threaded%
echo Log Destination: %LogFileDestination%
echo Log File Name : %LogFileName%.txt 
echo ---------------------------------------------------------
echo ---------------------------------------------------------
echo.
echo.
echo You will be prompt when copy is finished. 
pause
cls

robocopy /MIR /V /XJ /NP /COPY:DAT /MT:"%Multi-threaded%" /DCOPY:T /r:2 /w:5 "%Source%" "%Destination%"  >> "%LogFileDestination%"\"%LogFileName%".txt


:TheEnd
CLS
ECHO.
ECHO ---------------------------------------------------------
ECHO Copy has completed please view log file for details
ECHO ---------------------------------------------------------
ECHO.
ECHO.
ECHO.
Pause

cls

