$scriptPath = Join-Path $PSScriptRoot 'auto_sync.ps1'
$argStr = '-NonInteractive -WindowStyle Hidden -ExecutionPolicy Bypass -File "' + $scriptPath + '"'
$action = New-ScheduledTaskAction -Execute 'powershell.exe' -Argument $argStr
$trigger = New-ScheduledTaskTrigger -Daily -At 9:00PM
Register-ScheduledTask -TaskName 'Tribe-Chieftain Auto Sync' -Action $action -Trigger $trigger -Description 'Daily sync of Tribe Chieftain game to GitHub' -Force
(Get-ScheduledTask -TaskName 'Tribe-Chieftain Auto Sync').Actions | Select-Object Execute, Arguments | Format-List

