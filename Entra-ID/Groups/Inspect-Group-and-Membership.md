# Inspect Groups and User Membership

## Purpose
Cross-check whether Graph-created groups persisted and inspect a user’s memberships.

## Requirements
- Microsoft.Graph.Groups
- Microsoft.Graph.Users

## Command

```powershell
Get-MgGroup -All
Get-MgUserMemberOf -UserId $userId
```

## Expected Result
Groups and membership objects are returned.

## Common Errors
Token scopes that look broad do not guarantee directory administrative authorization for write operations.

## References
- Internal Graph authorization investigation
