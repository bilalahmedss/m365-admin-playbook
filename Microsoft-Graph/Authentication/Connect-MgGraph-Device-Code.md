# Connect to Microsoft Graph with Device Code

## Purpose
Authenticate without relying on a Web Account Manager popup and inspect the active Graph context.

## Requirements
- Microsoft.Graph installed
- An approved account and consented scopes

## Command

```powershell
Connect-MgGraph -UseDeviceCode
Get-MgContext
```

## Expected Result
A device-code sign-in completes and `Get-MgContext` displays the account, tenant, client, and granted scopes.

## Common Errors
- **Approval Required:** a fresh consent flow may require administrator approval.
- **Wrong permissions after app-registration changes:** the active session may still be using Microsoft Graph Command Line Tools rather than the custom app registration. Reconnect through the intended client after admin consent.

## References
- Microsoft Graph PowerShell authentication documentation
- Internal lab record: device-code connection and consent troubleshooting
