Install-PackageProvider -Name NuGet -MinimumVersion 2.8.5.201 -Force -Scope CurrentUser
Install-Module -Name Az -Scope CurrentUser
Import-Module Az.Accounts
Connect-AzAccount
Get-AzContext
Get-AzSubscription
Get-AzRoleAssignment
