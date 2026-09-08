# Authorization_RequestDenied

## Purpose
Document the two real 403 authorization patterns observed in Graph testing.

## Requirements
Capture `Get-MgContext`, the signed-in account, client application, OAuth scopes, Entra directory roles, target operation, and response.

## Command

```powershell
Get-MgContext
Get-MgUserMemberOfAsDirectoryRole -UserId $userId
Get-MgRoleManagementDirectoryRoleAssignment -Filter "principalId eq '$userId'" -ExpandProperty "roleDefinition"
```

## Expected Result
The token scopes and directory-role authority can be assessed separately.

## Common Errors

### License operation returned 403
- **Observed cause:** the delegated user had Graph write permission but no qualifying Entra admin role.
- **Fix used:** assign the License Administrator role at directory scope, then repeat the same operation.
- **Boundary validation:** Conditional Access access still returned 403, proving least privilege.

### Custom-domain creation returned 403
- **Observed cause:** the active session had `Domain.Read.All`, not `Domain.ReadWrite.All`.
- A custom app registration was granted `Domain.ReadWrite.All`, but the active connection was using Microsoft Graph Command Line Tools instead of that custom application.
- **Fix path worked through:** grant admin consent and reconnect through the intended client application so the new permission is present in the active token.

## References
- Phase 2 Lab 1 record
- Internal CDX custom-domain troubleshooting record
