# Create a Time-Bound Eligible Helpdesk Role

## Purpose
Create a 30-day eligible Helpdesk Administrator assignment for a test user.

## Requirements
- Microsoft Entra PIM licensing/capability
- Privileged role assignment authority
- Correct principal and role definition IDs

## Command

```powershell
Get-MgRoleManagementDirectoryRoleEligibilitySchedule -Filter "principalId eq '$ahmedId'"

$params = @{ Action = "adminAssign"; PrincipalId = $ahmedId; RoleDefinitionId = $helpdeskRole.Id; DirectoryScopeId = "/"; Justification = "Lab: time-bound eligible Helpdesk Administrator"; ScheduleInfo = @{ StartDateTime = (Get-Date).ToUniversalTime(); Expiration = @{ Type = "AfterDuration"; Duration = "P30D" } } }
New-MgRoleManagementDirectoryRoleEligibilityScheduleRequest -BodyParameter $params
```

## Expected Result
An eligible schedule request is created for 30 days.

## Common Errors
An earlier attempt returned `role not found`. Re-fetch the role definition by display name and use its actual `RoleDefinitionId`.

## References
- Internal PIM experiment record
