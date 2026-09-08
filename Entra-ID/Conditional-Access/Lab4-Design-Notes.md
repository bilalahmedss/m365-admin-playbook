# Lab 4 Conditional Access and Location Design

## Purpose
Require MFA outside a trusted Karachi office public IP and separately evaluate a Pakistan country block.

## Requirements
- Emergency-access design before broad enforcement
- Stable public egress IP or CIDR for the trusted location
- Pilot users/groups
- Report-only validation and sign-in log review

## Command

```powershell
Get-MgIdentityConditionalAccessPolicy -All
```

The supplied record preserves the created objects and outcomes, but not the complete creation payloads. Do not reconstruct production policy bodies from memory. Export or capture the exact JSON on the next run.

## Expected Result
- Trusted office: outside-office MFA policy does not apply.
- Outside trusted office: MFA policy evaluates successfully in report-only mode.
- Pakistan block policy evaluates as report-only failure when the country condition matches.

## Common Errors
- Entra evaluates the source IP it sees, which may be IPv6 even when an external checker shows IPv4.
- Multiple policies can apply simultaneously. An exclusion from one policy does not cancel a block from another.
- Private addresses such as `192.168.x.x` are not the internet egress IP Entra evaluates.

## References
- Phase 2 Lab 4 record
