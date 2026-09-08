# Read Conditional Access Policies

## Purpose
List Conditional Access policies and test the authorization boundary of a delegated role.

## Requirements
- Microsoft.Graph.Identity.SignIns
- Policy read permission
- Appropriate Entra directory role

## Command

```powershell
Get-MgIdentityConditionalAccessPolicy -All
```

## Expected Result
Policies are returned for an authorized security administrator. In Lab 1, the License Administrator test remained blocked.

## Common Errors
`403 AccessDenied` occurred even with `Policy.ReadWrite.ConditionalAccess` because the delegated directory role did not authorize CA administration. Assign an appropriate least-privileged CA/security role rather than broadening unrelated roles.

## References
- Phase 2 Lab 1 boundary test
