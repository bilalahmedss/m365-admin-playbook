Get-MgUser -All
Get-MgUser -Filter "accountEnabled eq true" -CountVariable c -ConsistencyLevel eventual
