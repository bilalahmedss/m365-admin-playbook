# Call Graph REST for an Intune App Protection Policy

## Purpose
Use direct Microsoft Graph REST through the authenticated Graph PowerShell session when the typed cmdlet does not support the required payload.

## Requirements
- Approved Intune Graph permissions
- Exact documented endpoint and schema
- `$uri` and `$body` reviewed before execution

## Command

```powershell
Invoke-MgGraphRequest -Method POST -Uri $uri -Body ($body | ConvertTo-Json -Depth 20) -ContentType 'application/json'
```

## Expected Result
The API returns a created or updated policy response when the schema and permissions are valid.

## Common Errors
The Windows compliance typed cmdlet rejected several invalid properties until the payload matched `windows10CompliancePolicy`. Do not guess schema fields. The source log does not preserve the exact app-protection URI/body, so this file intentionally uses reviewed variables rather than fabricating them.

## References
- Internal Intune schema troubleshooting record
