# Graph Permission Errors

## Purpose
Separate module, consent, OAuth scope, client-application, and Entra role problems.

## Command

```powershell
Get-MgContext
Get-Module Microsoft.Graph* -ListAvailable
Get-MgUserMemberOfAsDirectoryRole -UserId $userId
```

## Expected Result
You can identify which account, tenant, client application, scopes, modules, and roles are active.

## Common Errors
- `Approval Required`: a fresh consent flow required tenant administrator approval.
- Added permission not visible: permission was added to a custom app registration, but the session used Microsoft Graph Command Line Tools.
- `Get-MgUser -All` failed with only `User.Read`: reconnect with sufficient approved scopes.
- Named-location creation returned 403 because the token lacked the required Conditional Access permissions.
- Broad-looking scopes did not permit user creation or deletion because the account lacked an appropriate Entra role.
- Loading Microsoft.Graph.Security hit function-capacity limits. Load only required Graph submodules rather than the entire SDK surface.

## References
- Internal Graph, CDX, jbs.live, Conditional Access, and Secure Score troubleshooting records
