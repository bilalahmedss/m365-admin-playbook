# Query and Filter Directory Audit Events

## Purpose
Review recent directory audit events and correctly filter failed events in the PowerShell pipeline.

## Requirements
- Microsoft.Graph.Reports or appropriate audit read permissions

## Command

```powershell
Get-MgAuditLogDirectoryAudit -Top 100
Get-MgAuditLogDirectoryAudit -Top 100 | Where-Object { $_.Result -eq "failure" } | Select-Object ActivityDateTime, ActivityDisplayName, Result
```

## Expected Result
Recent events are returned; the second command displays only failures.

## Common Errors
Putting `Result = "failure"` inside `Select-Object` is invalid for row filtering. Use `Where-Object` before `Select-Object`.

## References
- Internal audit-log troubleshooting record
