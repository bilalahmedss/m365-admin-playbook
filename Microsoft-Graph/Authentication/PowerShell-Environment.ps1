Get-ExecutionPolicy
Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
$PROFILE
New-Item -Type File -Path $PROFILE -Force
Find-Module
Get-InstalledModule
Update-Module
Import-Module
Get-PSReadLineOption
(Get-PSReadLineOption).HistorySavePath
(Get-PSReadLineOption).MaximumHistoryCount
Install-Module PSReadLine -Force -SkipPublisherCheck
Import-Module PSReadLine -RequiredVersion 2.4.5 -Force
Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -PredictionViewStyle ListView
. $PROFILE
