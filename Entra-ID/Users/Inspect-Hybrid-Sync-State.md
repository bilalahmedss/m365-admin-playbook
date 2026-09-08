# Inspect Cloud-Only or Hybrid User State

## Purpose
Review organization and user synchronization properties to determine whether objects show on-premises synchronization evidence.

## Requirements
- Microsoft.Graph.Identity.DirectoryManagement
- Microsoft.Graph.Users

## Command

```powershell
Get-MgOrganization
Get-MgUser -All | Select-Object DisplayName, UserPrincipalName, OnPremisesSyncEnabled, OnPremisesLastSyncDateTime
```

## Expected Result
Organization details and each user’s sync properties are displayed.

## Common Errors
Null sync fields should be treated as observed object state. Validate broadly before drawing a tenant-wide conclusion.

## References
- Internal jbs.live identity investigation record
