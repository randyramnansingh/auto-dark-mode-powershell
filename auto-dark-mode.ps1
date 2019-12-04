param (
    [string]$start = '06:00', #6:00am light mode
    [string]$end = '17:30' #5:30pm dark mode
 )
$min = Get-Date $start
$max = Get-Date $end
$now = Get-Date
Write-Output "[$now]: Auto-Dark Mode script running..."
if ($min.TimeOfDay -le $now.TimeOfDay -and $max.TimeOfDay -ge $now.TimeOfDay) {
Write-Output "[$(Get-Date)]: Daytime, enabling light mode in apps and system..."
Set-ItemProperty -Name AppsUseLightTheme -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize -Value 1 -Force
Set-ItemProperty -Name SystemUsesLightTheme -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize -Value 1 -Force
Write-Output "[$(Get-Date)]: Light mode enabled in apps and system."
} else {
  Write-Output "[$(Get-Date)]: Nighttime, enabling dark mode in apps and system..."
  Set-ItemProperty -Name AppsUseLightTheme -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize -Value 0 -Force
  Set-ItemProperty -Name SystemUsesLightTheme -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize -Value 0 -Force
  Write-Output "[$(Get-Date)]: Dark mode enabled in apps and system."
}