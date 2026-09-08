Set-MgUserLicense -UserId $nida.Id -AddLicenses @() -RemoveLicenses @($e5.SkuId)
Set-MgUserLicense -UserId $joiner.Id -AddLicenses @{SkuId = $e5.SkuId} -RemoveLicenses @()
