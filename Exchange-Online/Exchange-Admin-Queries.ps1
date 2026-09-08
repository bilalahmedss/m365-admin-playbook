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
