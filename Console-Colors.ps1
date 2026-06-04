<#
Header:
dev Herzz09
date 06/04/2026
name Console-Colors.ps1

`t = Tab
-B = BackgroundColor
-F = ForegroundColor
#>

cls
write-host "
  Console Colors:
"
foreach ($color in [enum]::GetValues([System.ConsoleColor])) {
    Write-Host "`t`t" -B $color -NoNewline
    Write-Host " => $color" -F $color
}

write-host ''
Read-Host "Press Enter to continue..."
