# Assign and Inspect License Administrator

## Purpose
Implement the Lab 1 least-privilege test by assigning the License Administrator role at directory scope and reviewing assignments.

## Requirements
- Privileged role assignment authority
- Microsoft.Graph.Identity.Governance
- `$sara` and `$licenseRole` resolved to the intended objects

## Command

```powershell
Get-MgRoleManagementDirectoryRoleAssignment -Filter "principalId eq '$($sara.Id)'" -ExpandProperty "roleDefinition"
New-MgRoleManagementDirectoryRoleAssignment -PrincipalId $sara.Id -RoleDefinitionId $licenseRole.Id -DirectoryScopeId "/"
```

## Expected Result
The assignment is created. The delegated user can perform license management but remains outside unrelated Conditional Access administration.

## Common Errors
Before the role assignment, removing a license returned `403 Authorization_RequestDenied`. The same operation succeeded after the role assignment.

## References
- Phase 2 Lab 1 record
