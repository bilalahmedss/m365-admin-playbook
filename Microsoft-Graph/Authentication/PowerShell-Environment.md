# Prepare the PowerShell Environment

## Purpose
Configure execution policy, profile, module discovery, and PSReadLine predictive history used during the learning environment setup.

## Requirements
- PowerShell
- PSGallery access

## Command

```powershell
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
```

## Expected Result
The profile exists, selected modules load, and predictive history can be configured in a fresh session.

## Common Errors
PSReadLine 2.0.0 did not support the requested prediction behavior. Install 2.4.5 and force-import that version in a fresh session. Commands such as `trcm` or `sleep` without required arguments enter parameter prompts; use Ctrl+C to exit.

## References
- Internal PowerShell setup record
