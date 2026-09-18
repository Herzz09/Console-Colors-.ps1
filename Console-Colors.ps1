# Header:
# Dev Herzz09
# Date 06/04/2026
# Name Console-Colors.ps1

#######################################################################
<#
`t = Tab
-B = BackgroundColor
-F = ForegroundColor
#>

#######################################################################
cls
 
#######################################################################
if (-not $psISE) {
    Write-Host ""
    Write-Host "ERROR: This script cannot be run from the console. " -ForegroundColor Red -NoNewline
    Write-Host "Opening in PowerShell ISE..." -ForegroundColor Green
    Start-Sleep -Seconds 5
    Start-Process powershell_ise.exe -ArgumentList "`"$PSCommandPath`""
    exit
}
#######################################################################
 
write-host "
Console Colors Powershell:
"
 
#######################################################################
foreach ($color in [enum]::GetValues([System.ConsoleColor])) {
    Write-Host "`t`t" -B $color -NoNewline
    Write-Host " => $color" -F $color
}
 
#######################################################################
Write-Host ""
pause
 
