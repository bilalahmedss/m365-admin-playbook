Get-MgRoleManagementDirectoryRoleEligibilitySchedule -Filter "principalId eq '$ahmedId'"

$params = @{
    Action = "adminAssign"
    PrincipalId = $ahmedId
    RoleDefinitionId = $helpdeskRole.Id
    DirectoryScopeId = "/"
    Justification = "Lab: time-bound eligible Helpdesk Administrator"
    ScheduleInfo = @{
        StartDateTime = (Get-Date).ToUniversalTime()
        Expiration = @{
            Type = "AfterDuration"
            Duration = "P30D"
        }
    }
}
New-MgRoleManagementDirectoryRoleEligibilityScheduleRequest -BodyParameter $params
