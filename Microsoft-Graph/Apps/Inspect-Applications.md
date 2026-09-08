# Inspect App Registrations

## Purpose
List application registrations as a persistence cross-check after Graph operations.

## Requirements
- Microsoft.Graph.Applications
- Application read permissions

## Command

```powershell
Get-MgApplication -All
```

## Expected Result
Application objects are returned.

## Common Errors
A custom app registration’s permissions do not affect a session authenticated through a different client application.

## References
- Internal custom-domain and consent troubleshooting record
