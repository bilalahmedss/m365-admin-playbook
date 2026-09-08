# Query Microsoft Entra Users

## Purpose
List all users or filter to enabled accounts using Graph OData advanced query options.

## Requirements
- Microsoft.Graph.Users
- Appropriate delegated or application read permissions

## Command

```powershell
Get-MgUser -All
Get-MgUser -Filter "accountEnabled eq true" -CountVariable c -ConsistencyLevel eventual
```

## Expected Result
Users are returned; `$c` stores the count for the filtered advanced query.

## Common Errors
`Get-MgUser -All` initially failed in the demo tenant when the session only had `User.Read`. Reconnect with sufficient approved scopes.

## References
- Microsoft Graph user documentation
- Internal demo-tenant build record
