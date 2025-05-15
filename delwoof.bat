@echo off
setlocal enabledelayedexpansion




mountvol X: /S


move X:\EFI\Microsoft\Boot\boot.efi X:\EFI\Microsoft\Boot\bootmgfw.efi


del X:\EFI\Boot\bootx64.efi


del X:\EFI\Boot\sein.efi


move X:\EFI\Boot\bootx64.efi.backup X:\EFI\Boot\bootx64.efi


mountvol X: /D





exit
