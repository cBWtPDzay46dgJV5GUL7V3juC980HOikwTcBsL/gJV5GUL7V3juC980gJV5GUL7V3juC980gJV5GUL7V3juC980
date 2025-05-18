@echo on
setlocal enabledelayedexpansion

echo === Admin yetkisi kontrol ediliyor ===
net session >nul 2>&1
if %errorlevel% neq 0 (
    echo HATA: Bu scripti çalıştırmak için yönetici yetkilerine ihtiyacınız var.
    pause
    exit /b 1
) else (
    echo [OK] Yönetici yetkisi mevcut.
)

echo === EFI sistem bölümü X: olarak mount ediliyor ===
mountvol X: /S
if %errorlevel% neq 0 (
    echo HATA: EFI bölümü X: olarak mount edilemedi.
    pause
    exit /b 1
) else (
    echo [OK] EFI bölümü başarıyla X: olarak mount edildi.
)

echo === Mevcut bootmgfw.efi kontrol ediliyor ve taşınıyor ===
if exist "X:\EFI\Microsoft\Boot\bootmgfw.efi" (
    echo [BULUNDU] bootmgfw.efi bulundu, taşınıyor...
    move /Y "X:\EFI\Microsoft\Boot\bootmgfw.efi" "X:\EFI\Microsoft\Boot\boot.efi"
    echo [OK] Taşıma işlemi tamamlandı.
) else (
    echo [YOK] bootmgfw.efi bulunamadı.
)

echo === Mevcut bootx64.efi yedeğe alınıyor ===
if exist "X:\EFI\Boot\bootx64.efi" (
    echo [BULUNDU] bootx64.efi bulundu, yedekleniyor...
    move /Y "X:\EFI\Boot\bootx64.efi" "X:\EFI\Boot\bootx64.efi.backup"
    echo [OK] Yedekleme tamamlandı.
) else (
    echo [YOK] bootx64.efi bulunamadı.
)

echo === sein.efi dosyası kontrol ediliyor ve kopyalanıyor ===
if exist "%~dp0sein.efi" (
    echo [BULUNDU] sein.efi bulundu, kopyalanıyor...
    copy /Y "%~dp0sein.efi" "X:\EFI\Boot\sein.efi"
    echo [OK] sein.efi başarıyla kopyalandı.
) else (
    echo [YOK] sein.efi bulunamadı.
)

echo === bootx64.efi dosyası kontrol ediliyor ve kopyalanıyor ===
if exist "%~dp0bootx64.efi" (
    echo [BULUNDU] bootx64.efi bulundu, kopyalanıyor...
    copy /Y "%~dp0bootx64.efi" "X:\EFI\Boot\bootx64.efi"
    echo [OK] bootx64.efi başarıyla kopyalandı.
) else (
    echo [YOK] bootx64.efi bulunamadı.
)

echo === startup.nsh dosyası kontrol ediliyor ve kopyalanıyor ===
if exist "%~dp0startup.nsh" (
    echo [BULUNDU] startup.nsh bulundu, kopyalanıyor...
    copy /Y "%~dp0startup.nsh" "X:\EFI\Boot\startup.nsh"
    echo [OK] startup.nsh başarıyla kopyalandı.
) else (
    echo [YOK] startup.nsh bulunamadı.
)

echo === EFI bölümü X: olarak unmount ediliyor ===
mountvol X: /D
if %errorlevel% neq 0 (
    echo HATA: X: diski unmount edilemedi.
) else (
    echo [OK] X: diski başarıyla unmount edildi.
)

echo === Tüm işlemler tamamlandı ===
pause
exit /b 0
