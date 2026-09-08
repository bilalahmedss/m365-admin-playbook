# Conditional Access Lockouts

## Purpose
Prevent and diagnose lockouts caused by broad Conditional Access changes or cross-service side effects.

## Requirements
- Emergency-access accounts excluded by deliberate design
- Pilot group
- Report-only mode
- What If and sign-in log review
- Rollback owner and documented policy IDs

## Command

```powershell
Get-MgIdentityConditionalAccessPolicy -All
```

## Expected Result
Policy scope and state can be inspected before enforcement.

## Common Errors
- A SharePoint tenant setting (`Set-SPOTenant -ConditionalAccessPolicy AllowLimitedAccess`) created downstream Conditional Access policies. A similar cross-service side effect had previously caused unmanaged-device lockout risk.
- Phishing-resistant MFA for admins was not enforced after checking authentication methods and finding several admins only had password authentication registered. It remained report-only to avoid lockout.
- Two Azure Management policies had the same display name. The fix was to inspect by ID and remove only the unintended duplicate.
- A trusted-office exclusion in one policy does not cancel a country block from another applicable policy.

## Fix and Validation
1. Keep new or changed policies in report-only.
2. Confirm intended users have required authentication methods.
3. Review each policy by unique ID, not display name alone.
4. Review sign-in policy results from trusted and untrusted networks.
5. Move to enabled only after positive, negative, and emergency-access validation.

## References
- Phase 2 Labs 4 and 5
- Internal Secure Score hardening record
