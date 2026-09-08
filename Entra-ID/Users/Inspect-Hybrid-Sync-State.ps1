Get-MgOrganization
Get-MgUser -All | Select-Object DisplayName, UserPrincipalName, OnPremisesSyncEnabled, OnPremisesLastSyncDateTime
