@echo off
title Favi - Full System Cleanup
color 0A

echo Favi: جاري تنظيف وتسريع الجهاز...
timeout /t 2 >nul

net stop wuauserv >nul 2>&1
net stop bits >nul 2>&1

del /f /s /q "%TEMP%\*.*"
rd /s /q "%TEMP%"

del /f /s /q "C:\Windows\Temp\*.*"
rd /s /q "C:\Windows\Temp"

del /f /s /q "C:\Windows\Prefetch\*.*"

del /f /s /q "%APPDATA%\Microsoft\Windows\Recent\*.*"

rd /s /q "C:\Windows.old"

del /f /s /q "C:\Windows\Logs\*.*"
rd /s /q "C:\Windows\Logs"

del /f /s /q "C:\Windows\SoftwareDistribution\Download\*.*"
rd /s /q "C:\Windows\SoftwareDistribution\Download"

del /f /s /q "C:\Windows\DeliveryOptimization\*.*"
rd /s /q "C:\Windows\DeliveryOptimization"

PowerShell -Command "Clear-RecycleBin -Force"

del /f /s /q "%LocalAppData%\Microsoft\Windows\Explorer\thumbcache_*.db"

ipconfig /flushdns

%windir%\system32\rundll32.exe advapi32.dll,ProcessIdleTasks

dism /Online /Cleanup-Image /StartComponentCleanup

sfc /scannow

bcdedit /set useplatformclock true
bcdedit /set disabledynamictick yes

powercfg -setactive SCHEME_MIN

reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\BackgroundAccessApplications" /v GlobalUserDisabled /t REG_DWORD /d 1 /f

reg add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v Win32PrioritySeparation /t REG_DWORD /d 26 /f

start ms-settings:windowsupdate

cleanmgr /sagerun:1

echo.
echo Favi: !
echo 
pause
