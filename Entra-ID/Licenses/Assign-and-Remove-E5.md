# Reclaim and Reassign an E5 Seat

## Purpose
Remove a Microsoft 365 E5 license from an offboarding user and assign the freed seat to a new joiner.

## Requirements
- License Administrator or equivalent approved authority
- Correct user and SKU objects
- Valid `UsageLocation` on the recipient

## Command

```powershell
Set-MgUserLicense -UserId $nida.Id -AddLicenses @() -RemoveLicenses @($e5.SkuId)
Set-MgUserLicense -UserId $joiner.Id -AddLicenses @{SkuId = $e5.SkuId} -RemoveLicenses @()
```

## Expected Result
The first user loses the SKU and the new joiner receives it; the Lab 1 pool moved 20 to 19 to 20 consumed.

## Common Errors
- `Authorization_RequestDenied`: Graph scope alone was insufficient; License Administrator was required.
- `does not have any available licenses`: deleted users retained licenses. Reclaim seats from deleted users.
- Blank `UsageLocation` can block reliable assignment. Set it before licensing.

## References
- Phase 2 Lab 1 record
- Internal license-capacity troubleshooting record
