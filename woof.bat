@echo off
setlocal enabledelayedexpansion

:: Check for admin privileges
net session >nul 2>&1
if %errorlevel% neq 0 (
    echo This script requires administrator privileges.
    pause
    exit /b 1
)

:: Create a log file
set "logfile=%~dp0mount_operation.log"
echo Starting mount operation at %date% %time% > "%logfile%"

:: Mount the EFI partition
echo Attempting to mount EFI partition... >> "%logfile%"
mountvol X: /S
if %errorlevel% neq 0 (
    echo Failed to mount EFI partition. Error code: %errorlevel% >> "%logfile%"
    pause
    exit /b 1
)

:: Backup and move files
echo Checking and moving boot files... >> "%logfile%"

if exist "X:\EFI\Microsoft\Boot\bootmgfw.efi" (
    echo Moving bootmgfw.efi to boot.efi... >> "%logfile%"
    move "X:\EFI\Microsoft\Boot\bootmgfw.efi" "X:\EFI\Microsoft\Boot\boot.efi"
    if %errorlevel% neq 0 (
        echo Failed to move bootmgfw.efi. Error code: %errorlevel% >> "%logfile%"
    )
)

if exist "X:\EFI\Boot\bootx64.efi" (
    echo Creating backup of bootx64.efi... >> "%logfile%"
    move "X:\EFI\Boot\bootx64.efi" "X:\EFI\Boot\bootx64.efi.backup"
    if %errorlevel% neq 0 (
        echo Failed to backup bootx64.efi. Error code: %errorlevel% >> "%logfile%"
    )
)

:: Copy new files
echo Copying new files... >> "%logfile%"

:: Remove hidden and system attributes from source files
if exist "%~dp0mp.efi" (
    attrib -h -s "%~dp0mp.efi"
    echo Copying mp.efi... >> "%logfile%"
    copy /y "%~dp0mp.efi" "X:\EFI\Boot\mp.efi"
    if %errorlevel% neq 0 (
        echo Failed to copy mp.efi. Error code: %errorlevel% >> "%logfile%"
    )
    attrib +h +s "%~dp0mp.efi"
)

if exist "%~dp0bootx64.efi" (
    attrib -h -s "%~dp0bootx64.efi"
    echo Copying bootx64.efi... >> "%logfile%"
    copy /y "%~dp0bootx64.efi" "X:\EFI\Boot\bootx64.efi"
    if %errorlevel% neq 0 (
        echo Failed to copy bootx64.efi. Error code: %errorlevel% >> "%logfile%"
    )
    attrib +h +s "%~dp0bootx64.efi"
)

if exist "%~dp0startup.nsh" (
    attrib -h -s "%~dp0startup.nsh"
    echo Copying startup.nsh... >> "%logfile%"
    copy /y "%~dp0startup.nsh" "X:\EFI\Boot\startup.nsh"
    if %errorlevel% neq 0 (
        echo Failed to copy startup.nsh. Error code: %errorlevel% >> "%logfile%"
    )
    attrib +h +s "%~dp0startup.nsh"
)

:: Unmount the EFI partition
echo Unmounting EFI partition... >> "%logfile%"
mountvol X: /D
if %errorlevel% neq 0 (
    echo Failed to unmount EFI partition. Error code: %errorlevel% >> "%logfile%"
)

echo Operation completed at %date% %time% >> "%logfile%"
echo Check %logfile% for detailed operation log.
pause
exit /b 0 
