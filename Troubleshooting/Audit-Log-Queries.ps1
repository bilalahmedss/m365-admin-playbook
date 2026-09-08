Get-MgAuditLogDirectoryAudit -Top 100
Get-MgAuditLogDirectoryAudit -Top 100 | Where-Object { $_.Result -eq "failure" } | Select-Object ActivityDateTime, ActivityDisplayName, Result
