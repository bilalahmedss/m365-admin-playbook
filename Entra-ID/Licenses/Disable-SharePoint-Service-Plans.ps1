$disabledPlans = @(
    [Guid]'5dbe027f-2339-4123-9542-606e4d348a72' # SHAREPOINTENTERPRISE
    [Guid]'e95bec33-7c88-4a70-8e19-b10bd9d0c014' # SHAREPOINTWAC
)
$license = @{ SkuId = [Guid]'18a4bd3f-0b5b-4887-b04f-61dd0ee15f5e'; DisabledPlans = $disabledPlans }
Set-MgUserLicense -UserId $userId -AddLicenses @($license) -RemoveLicenses @()
