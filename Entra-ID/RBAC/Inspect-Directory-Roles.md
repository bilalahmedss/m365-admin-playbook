# Inspect User Directory Roles

## Purpose
Inspect memberships and specifically directory-role memberships for a user.

## Requirements
- Microsoft.Graph.Users
- Directory read permissions

## Command

```powershell
Get-MgUserMemberOf -UserId $userId
Get-MgUserMemberOfAsDirectoryRole -UserId $userId
```

## Expected Result
Membership and directory-role information is returned.

## Common Errors
Do not infer write authority from OAuth scopes alone. The jbs.live test account had broad-looking scopes but no direct Entra administrative role assignment.

## References
- Internal jbs.live authorization review
