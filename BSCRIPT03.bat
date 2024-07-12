@echo off

:choices
echo.
echo 1. ipconfig
echo 2. Task list
echo 3. Task kill
echo 4. chkdsk
echo 5. format
echo 6. defrag
echo 7. find
echo 8. attrib
echo 9. Leave
choice /c 123456789 /m "Choose"

if errorlevel 9 goto Leave
if errorlevel 8 goto attribt
if errorlevel 7 goto findt
if errorlevel 6 goto defragt
if errorlevel 5 goto format
if errorlevel 4 goto chkdskt
if errorlevel 3 goto taskki
if errorlevel 2 goto taskli
if errorlevel 1 goto ipconfigt

:ipconfigt
echo you went to ipconfig
ipconfig
pause  
goto choices

:taskli
tasklist
pause  
goto choices

:taskki
taskkill /im "notepad.exe"
taskkill /im "calc.exe"
pause  
goto choices

:chkdskt
chkdsk
pause  
goto choices

:format
format D:
pause  
goto choices

:defragt
"defrag.exe" D: -f
pause  
goto choices

:findt
find "Desktop" C:\Users\Zoru
pause  
goto choices

:attribt
Attrib C:\Users\Zoru
pause  
goto choices

:Leave
echo Closing...