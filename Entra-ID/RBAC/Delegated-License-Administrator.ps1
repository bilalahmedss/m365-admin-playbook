$assignments = Get-MgRoleManagementDirectoryRoleAssignment -Filter "principalId eq '$($sara.Id)'" -ExpandProperty "roleDefinition"
$assignment = New-MgRoleManagementDirectoryRoleAssignment -PrincipalId $sara.Id -RoleDefinitionId $licenseRole.Id -DirectoryScopeId "/"
$assignments
