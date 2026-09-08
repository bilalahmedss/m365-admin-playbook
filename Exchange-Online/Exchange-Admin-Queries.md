# Exchange Online Administration Queries

## Purpose
Connect to Exchange Online and inspect mailboxes, permissions, transport rules, message traces, and available cmdlets.

## Requirements
- ExchangeOnlineManagement
- Appropriate Exchange role

## Command

```powershell
Connect-ExchangeOnline
Get-ConnectionInformation
Get-Mailbox -Identity $identity
Get-Mailbox -ResultSize Unlimited
Get-MailboxPermission -Identity $identity
Get-EXOMailbox
Get-EXORecipient
Get-EXOMailboxPermission -Identity $identity
Get-TransportRule
Get-MessageTrace
Get-MessageTraceDetail
Get-Command *EXO*
Get-Command *Role*
```

## Expected Result
Connection details, mailbox data, permissions, rules, traces, and the active command surface are displayed as authorized.

## Common Errors
Legacy cmdlets such as `Get-ManagementRoleAssignment`, `Get-RoleGroupMember`, and in the recorded session `Get-TransportRule` were not recognized while REST-backed EXO cmdlets worked. Inspect the command surface; use Exchange Admin Center where the active REST session does not expose legacy role commands. Message trace diagnoses delivery, not whether a message was read.

## References
- Internal Exchange Online and RBAC troubleshooting record
