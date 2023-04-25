@echo off

	:Start
echo ______     _ _       _     _                      
echo ^| ___ \   ^| (_)     ^| ^|   ^| ^|                     
echo ^| ^|_/ /___^| ^|_  __ _^| ^|__ ^| ^| ___ ______ ___ ___  
echo ^|    // _ ^| ^| ^|/ _` ^| '_ \^| ^|/ _ ^|______/ __/ _ \ 
echo ^| ^|\ ^|  __^| ^| ^| (_^| ^| ^|_) ^| ^|  __/     ^| (_^| (_) ^|
echo \_^| \_\___^|_^|_^|\__,_^|_.__/^|_^|\___^|      \___\___/ 
echo.
echo -------------------------------------------------------
echo -------------------------------------------------------
echo                 USB Show Hidden Files          
echo -------------------------------------------------------
echo           Script is used to unhide all folders 
echo                      on a USB 
echo -------------------------------------------------------
echo -------------------------------------------------------
echo.
pause
cls

	:1
echo -------------------------------------------------------
ECHO -------------------------------------------------------
ECHO             Unhide files on a USB drive            
ECHO        Example : D: , E: , F: without "\"  or ","
ECHO -------------------------------------------------------
echo -------------------------------------------------------
echo.
echo.
echo.
set /p USBSHOW= "Enter Path on USB: "
attrib -h -r -s /s /d "%USBSHOW%"\*.*

if "%~USBSHOW"=="" goto :Start
   
CLS

echo ------------------------------------------------------
echo ------------------------------------------------------
echo Hidden files can take up to a minute before revealing
echo                Prompt will now close
echo.
echo SHOW                  88           
echo                       88           
echo                       88           
echo 88       88 ,adPPYba, 88,dPPYba,   
echo 88       88 I8[    "" 88P'    "8a  
echo 88       88  `"Y8ba,  88       d8  
echo "8a,   ,a88 aa    ]8I 88b,   ,a8"  
echo  `"YbbdP'Y8 `"YbbdP"' 8Y"Ybbd8"'                                      
echo ------------------------------------------------------
echo ------------------------------------------------------
echo.
echo.
timeout /t 15

