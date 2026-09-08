# Find Users with Intern in Job Title

## Purpose
Find users whose job title contains the standalone word `Intern` and avoid false positives such as `Internal`.

## Requirements
- Microsoft.Graph.Users
- User read permissions

## Command

```powershell
$users = Get-MgUser -All -Property DisplayName,UserPrincipalName,JobTitle,Department
$users | Where-Object { $_.JobTitle -match '\bIntern\b' } | Format-List DisplayName,UserPrincipalName,JobTitle,Department
```

## Expected Result
Matching users are shown without the table-width truncation encountered in earlier output.

## Common Errors
A wildcard-style search matched `Tools Internal`. The fix was a regex word boundary: `-match '\bIntern\b'`.

## References
- Internal intern-discovery experiment
