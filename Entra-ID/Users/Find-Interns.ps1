$users = Get-MgUser -All -Property DisplayName,UserPrincipalName,JobTitle,Department
$users | Where-Object { $_.JobTitle -match '\bIntern\b' } | Format-List DisplayName,UserPrincipalName,JobTitle,Department
