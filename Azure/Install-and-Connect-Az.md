# Install Az and Inspect Azure Context

## Purpose
Install the Az module for the current user, authenticate, and inspect tenant/subscription/RBAC availability.

## Requirements
- PowerShell 7 recommended for this recorded environment
- Network access to PowerShell Gallery and Azure
- Azure account

## Command

```powershell
Install-PackageProvider -Name NuGet -MinimumVersion 2.8.5.201 -Force -Scope CurrentUser
Install-Module -Name Az -Scope CurrentUser
Import-Module Az.Accounts
Connect-AzAccount
Get-AzContext
Get-AzSubscription
Get-AzRoleAssignment
```

## Expected Result
The tenant context is shown. Subscription and role assignments appear only when an Azure subscription is available and accessible.

## Common Errors
- Admin-rights install failure: use `-Scope CurrentUser` and install the NuGet provider first.
- Windows PowerShell 5.1 type-load mismatch between Azure.Identity and Azure.Core: PowerShell 7.6.5 successfully imported Az.Accounts in the lab.
- `Get-AzSubscription` returned nothing because the demo tenant had no Azure subscription, so Lab 2 could not exercise resource-scope RBAC.

## References
- Phase 2 Lab 2 record
- Internal Az setup record
