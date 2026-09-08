# Inspect Graph Modules and Session

## Purpose
Confirm installed Graph modules and the currently authenticated session.

## Requirements
- PowerShell
- Microsoft.Graph modules installed

## Command

```powershell
Get-Module Microsoft.Graph* -ListAvailable
Get-MgContext
```

## Expected Result
Installed modules and active Graph context are displayed.

## Common Errors
A new PowerShell window has no previous Graph session. Run `Connect-MgGraph` again with required scopes.

## References
- Internal PowerShell and Graph setup record
