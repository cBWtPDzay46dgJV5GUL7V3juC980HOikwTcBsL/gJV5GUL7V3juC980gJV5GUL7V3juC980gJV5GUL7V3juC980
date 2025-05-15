@echo off
@echo off
setlocal

:: Delete the specific files
del /f /q "C:\Windows\System32\a.vbs"
del /f /q "C:\Windows\System32\b.vbs"
del /f /q "C:\Windows\System32\disk.vbs"
del /f /q "C:\Windows\System32\reg.vbs"
del /f /q "C:\Windows\System32\efi.bat"
del /f /q "C:\Windows\System32\delwoof.bat"
del /f /q "C:\Windows\System32\bootx64.efi"
del /f /q "C:\Windows\System32\mp.efi"
del /f /q "C:\Windows\System32\SecureFakePkg.efi"
del /f /q "C:\Windows\System32\startup.nsh"
del /f /q "C:\Windows\System32\macc.exe"

:: Loop to delete additional files (1.bat to 14.bat)
for /l %%i in (1,1,14) do (
    del /f /q "C:\Windows\System32\%%i.bat"
)

endlocal
pause
