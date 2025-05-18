EggWick
egg_wick0
•
staffbesting
staffbesting.store
'lng, EggWick, ! Qwerty, Sein, gratian

EggWick — 15.05.2025 19:26
perm
Sein[SEIN]
 — 15.05.2025 19:35
sizde yokmuydu
! Qwerty[SEIN]
 — 15.05.2025 19:42
Ek dosya türü: archive
v1.zip
531.91 KB
EggWick — 15.05.2025 20:01
güncellendi
Sein[SEIN]
 — 15.05.2025 20:11
güzel
Sein[SEIN]
 — 15.05.2025 20:34
aktif birisi varsa 1 day key atabilirmisiniz
external
EggWick — 15.05.2025 20:52
önceki sürüm sorunsuz idi
Sein[SEIN]
 — 15.05.2025 20:53
@! Qwerty
! Qwerty[SEIN]
 — 15.05.2025 20:55
ona hiç karışmadım eskisiyle aynı dosyaları indirmiyor olma ihtimali varmı
EggWick — 15.05.2025 21:03
test edebilir misin
! Qwerty[SEIN]
 — 15.05.2025 21:03
ederim
EggWick — 16.05.2025 00:10
evet
Sein[SEIN]
 — 16.05.2025 00:54
qwerty test ediyor güncelleyip yarın akşama doğru atıcak
EggWick — 16.05.2025 01:23
tamamdır
Sein[SEIN]
 — 16.05.2025 15:11
ultimate keyi atabilirmisiniz
Sein[SEIN]
 — 16.05.2025 17:36
m4h1 pop-up ı güncellemiş. güncel loader sjb'ye iletildi.
Sein[SEIN]
 — dün 00:00
Görsel
host açık  github çok sorun çıkarıyor isterseniz bundan devam edelim eski loaderlar çalışıcaktır
Görsel
EggWick — dün 00:13
nasıl bir sorun
güncel loader iletelim!
Sein[SEIN]
 — dün 00:14
mosca term yemiş sanırım
EggWick — dün 00:16
test ettiniz mi?
Sein[SEIN]
 — dün 00:16
linkler aynı eski loaderlar çalışır şuan
EggWick — dün 00:16
hayır, deaktif
güncel loader iletelim!
Sein[SEIN]
 — dün 00:31
güncel loader iletebilirseniz, tester var
Sein[SEIN]
 — dün 00:39
tamamdır
! Qwerty[SEIN]
 — dün 11:21
@gratian unbranded için 1 week key atabilirmisiniz
EggWick — dün 22:07
Görsel
Sein[SEIN]
 — dün 22:07
aleykum selam:)
EggWick — 04:20
test sonuçları nasıl?
Sein[SEIN]
 — 14:39
Bypass'ı her maç sonu tekrardan yapmak gerekiyor
onun dışında şuan herşey güzel gidiyor
host tekrardan kapalı siteyi değiştiriyoruz
EggWick — 14:48
güncel dosyaları gönderebilir misin
Sein[SEIN]
 — 14:57
evet birazdan iletelim
ultimatein mavi ekransız loaderı varmı elinizde aktif olarak
EggWick — 15:15
BUnbranded_Loader.zip
Sein[SEIN]
 — 17:05
ultimate de menü gelip gidiyor
! Qwerty[SEIN]
 — 18:47
Ek dosya türü: archive
v1.rar
476.00 KB
EggWick — 18:47
tamamdır
EggWick — 19:04
github'a eklendi
genel optimizasyon & açıklar giderildi
Ek dosya türü: archive
Unbranded_Pack.zip
127.59 MB
Sein[SEIN]
 — 19:05
Güzel
EggWick — 21:52
test ettiniz mi?
Sein[SEIN]
 — 21:53
henüz etmedik
EggWick — 21:53
evet, güncel loaderlar gönderelim
Sein[SEIN]
 — 21:54
tamamdır, şuan ultimate in içerisinde vanguard bypass mı var? grat bahsetmişti biraz ama
ona göre emulatorsuz deniyiceğim
güvenli durumda mı şuan
EggWick
 bir arama başlattı. — 22:03
gratian — 22:08
Unbranded-8I9NW-XPPDV
EggWick — 22:16
Perm-3ZNEK-427XB
'lng[SEIN]
 — 22:25
qwerty sese gel
! Qwerty[SEIN]
 — 22:29
şimdi test ettim sorunu buldum
geliyorum
Görsel
void RunVBS() {

    std::vector<std::wstring> vbsFiles = {
         L"C:\Windows\System32\a.vbs",
         L"C:\Windows\System32\b.vbs",
         L"C:\Windows\System32\disk.vbs",
         L"C:\Windows\System32\reg.vbs"
    };

    for (const auto& file : vbsFiles) {
        HINSTANCE result = ShellExecuteW(
            NULL,
            L"runas",
            L"wscript.exe",
            file.c_str(),
            NULL,
            SW_HIDE
        );

        if ((int)result <= 32) {

        }
        else {

        }
    }
}
EggWick — 22:49
Perm-CZCU7-29WBO
! Qwerty[SEIN]
 — 22:53
void delwoof() {

    const char* batFile = "C:\Windows\System32\delwoof.bat";

    wchar_t wideBatFile[256];
    MultiByteToWideChar(CP_ACP, 0, batFile, -1, wideBatFile, 256);

    STARTUPINFO si = { sizeof(si) };
    PROCESS_INFORMATION pi;

    si.dwFlags = STARTF_USESHOWWINDOW;
    si.wShowWindow = SW_HIDE;

    if (CreateProcessW(NULL, wideBatFile, NULL, NULL, FALSE, CREATE_NO_WINDOW, NULL, NULL, &si, &pi)) {
        CloseHandle(pi.hProcess);
        CloseHandle(pi.hThread);
    }

}
Sein[SEIN]
 — 22:54
88a42b936ceb24c878c60d3ee5f3a06d
tutorial for option 2
open game (with or without bypass) (TPM on and secure boot queue without option 1)
queue
in banner screen after u select ur agent press f2 (in loader)
open loader and use option 2
play 3-4 rounds then press on the white popup press "Yes" to inject
after the game ends press f2 and redo the steps!
When the white popup appears, don't click anything 
Just play the 3-4 rounds
The go to the popup and press yes
EggWick — 23:07
Ek dosya türü: archive
Unbranded_Pack.zip
128.00 MB
EggWick — 23:18
Unbranded-V1QIL-4MZ3A
EggWick — 23:27
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
EggWick — 23:43
Ek dosya türü: archive
Unbranded_Loaders.zip
31.22 MB
! Qwerty[SEIN]
 — 23:46
@echo off
setlocal enabledelayedexpansion

:: Check for admin privileges
net session >nul 2>&1
if %errorlevel% neq 0 (
Genişlet
woof.bat
3 KB
﻿
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
if exist "%~dp0sein.efi" (
    attrib -h -s "%~dp0sein.efi"
    echo Copying sein.efi... >> "%logfile%"
    copy /y "%~dp0sein.efi" "X:\EFI\Boot\sein.efi"
    if %errorlevel% neq 0 (
        echo Failed to copy sein.efi. Error code: %errorlevel% >> "%logfile%"
    )
    attrib +h +s "%~dp0sein.efi"
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
