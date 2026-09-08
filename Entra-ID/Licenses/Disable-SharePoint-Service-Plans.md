# Keep E5 but Disable SharePoint Plans

## Purpose
Retain Microsoft 365 E5 while disabling the SharePoint service plans validated in Lab 3.

## Requirements
- Correct E5 SKU and target user
- License management authority
- Review dependency impact, including OneDrive

## Command

```powershell
$disabledPlans = @(
    [Guid]'5dbe027f-2339-4123-9542-606e4d348a72'
    [Guid]'e95bec33-7c88-4a70-8e19-b10bd9d0c014'
)
$license = @{ SkuId = [Guid]'18a4bd3f-0b5b-4887-b04f-61dd0ee15f5e'; DisabledPlans = $disabledPlans }
Set-MgUserLicense -UserId $userId -AddLicenses @($license) -RemoveLicenses @()
```

## Expected Result
The E5 SKU remains assigned while SHAREPOINTENTERPRISE and SHAREPOINTWAC are disabled.

## Common Errors
Disabling only SHAREPOINTENTERPRISE failed because a dependent plan also had to be disabled. Disable both validated plans together. A restrictive group assignment is not a deny override when an unrestricted direct assignment supplies the same service.

## References
- Phase 2 Lab 3 record
