
$hostsPath = "$env:SystemRoot\System32\drivers\etc\hosts"
$hostsEntries = @'
127.0.0.1 ftpm.amd.com
127.0.0.1 tsci.intel.com
127.0.0.1 ekcert.intel.com
127.0.0.1 pki.intel.com
127.0.0.1 trustedservices.intel.com
'@
Add-Content -Path $hostsPath -Value $hostsEntries -Force


if (-not (Test-Path 'HKLM:\SYSTEM\CurrentControlSet\Services\1')) {
    try {
        New-Item -Path 'HKLM:\SYSTEM\CurrentControlSet\Services\1' -Force | Out-Null
        Write-Output "Registry key '1' created successfully."
    } catch {
        Write-Error "Failed to create registry key: $_"
        exit 1
    }
} else {
    Write-Output "Registry key '1' already exists."
}


$reg = @(
'reg add "HKLM\SOFTWARE\Microsoft\Cryptography" /v MachineGuid /t REG_SZ /d 81734-74277-54453-90022-73316 /f',
'reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /v BuildGUID /t REG_SZ /d 22059-46092-63993-34192-33595 /f',
'reg add "HKLM\SYSTEM\CurrentControlSet\Control\SystemInformation" /v ComputerHardwareId /t REG_SZ /d "{19703-59117-96972-49503-59714}" /f',
'reg add "HKLM\Software\Microsoft\Windows NT\CurrentVersion" /v InstallDate /t REG_SZ /d 74225 /f',
'reg add "HKLM\Software\Microsoft\Windows NT\CurrentVersion" /v ProductId /t REG_SZ /d 28858 /f',
'reg add "HKLM\SOFTWARE\Microsoft\Cryptography" /v GUID /t REG_SZ /d 89836-25428-62555-65075-81418 /f',
'reg add "HKLM\SOFTWARE\Microsoft\Cryptography" /v MachineGuid /t REG_SZ /d 39075-30060-81010-18160-50611 /f',
'reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /v BuildGUID /t REG_SZ /d 99580-42863 /f',
'reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /v InstallDate /t REG_SZ /d 87626 /f',
'reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /v ProductId /t REG_SZ /d 20545-75340-90955 /f',
'reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /v RegisteredOrganization /t REG_SZ /d FS94454 /f',
'reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /v RegisteredOwner /t REG_SZ /d FS19115 /f',
'reg add "HKLM\SYSTEM\CurrentControlSet\Control\ComputerName\ActiveComputerName" /v ComputerName /t REG_SZ /d 96039 /f',
'reg add "HKLM\SYSTEM\CurrentControlSet\Control\ComputerName\ComputerName" /v ComputerName /t REG_SZ /d 59201 /f',
'reg add "HKLM\SYSTEM\CurrentControlSet\Control\IDConfigDB\Hardware Profiles\0001" /v GUID /t REG_SZ /d "{30122-42619-95127-27602-26276}" /f',
'reg add "HKLM\SYSTEM\CurrentControlSet\Control\SystemInformation" /v ComputerHardwareId /t REG_SZ /d "{60851-67216-72022-57603-10862}" /f',
'reg add "HKLM\SYSTEM\HardwareConfig" /v LastConfig /t REG_SZ /d "{23285}" /f',
'reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Security" /v "671a8285-4edb-4cae-99fe-69a15c48c0bc" /t REG_SZ /d 94494 /f',
'reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\WindowsUpdate" /v SusClientId /t REG_SZ /d "{11298-46867-96258-14182-38215}" /f'
)
$reg | ForEach-Object { Invoke-Expression $_ }


New-NetFirewallRule -DisplayName "Block Intel TPM Servers" -Direction Outbound -Action Block -RemoteAddress 13.91.91.243,40.83.18.77 -ErrorAction SilentlyContinue
New-NetFirewallRule -DisplayName "Block ftpm.amd.com"    -Direction Outbound -Protocol TCP -RemoteAddress 52.173.170.80 -Action Block -ErrorAction SilentlyContinue


Disable-TpmAutoProvisioning | Out-Null
Clear-Tpm | Out-Null
