# The historical record confirms direct Graph REST was used after the typed cmdlet path failed.
# Capture the exact URI and JSON body during the next approved run before adding them here.
Invoke-MgGraphRequest -Method POST -Uri $uri -Body ($body | ConvertTo-Json -Depth 20) -ContentType 'application/json'
