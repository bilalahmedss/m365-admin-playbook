# License Issues

## Purpose
Document real capacity, location, inheritance, dependency, and reporting issues encountered during licensing tests.

## Command

```powershell
Set-MgUserLicense -UserId $userId -AddLicenses @{SkuId = $skuId} -RemoveLicenses @()
```

## Expected Result
The intended assignment is applied and then verified by re-reading user and SKU state.

## Common Errors

### No available licenses despite reported capacity
- **Observed cause:** licenses remained assigned to deleted users.
- **Fix used:** review deleted users in the admin center and reclaim the licenses before deletion or reassignment.

### New users fail licensing
- **Observed factor:** blank `UsageLocation` blocked reliable assignment.
- **Fix used:** set `UsageLocation` such as `PK` before assigning.

### SharePoint service-plan disable fails
- **Observed cause:** SHAREPOINTENTERPRISE had a dependent plan.
- **Fix used:** disable both SHAREPOINTENTERPRISE and SHAREPOINTWAC while keeping E5 assigned.

### Direct versus group assignment confusion
- Removing a user from the licensing group freed a seat, and direct removal was rejected as inherited, proving group control even when a classic Graph property appeared empty.
- A restrictive group assignment did not override an unrestricted direct assignment for the same service.

### False success output in scripts
- A loop printed `Licensed $upn` unconditionally even after failed assignments.
- **Fix:** use `try/catch`, verify the post-state, and only print success after confirmation.

## References
- Phase 2 Labs 1 and 3
- Internal demo-tenant licensing troubleshooting record
