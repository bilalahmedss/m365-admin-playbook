# M365 Admin Playbook

A task-oriented knowledge repository for tested Microsoft 365, Microsoft Entra, Microsoft Graph, Exchange Online, Intune, Azure, PowerShell, and troubleshooting commands.

## Safety First

- Run experiments in a demo or approved test tenant.
- Never commit passwords, access tokens, certificates, tenant exports, user data, or production identifiers.
- Replace tenant-specific IDs, UPNs, IPs, and SKU IDs with variables before reuse.
- Start Conditional Access policies in report-only mode, pilot narrowly, and protect emergency-access accounts.
- Use least privilege and validate both an allowed action and a denied action.

## Repository Layout

- `Entra-ID/`: users, groups, RBAC, PIM, licensing, and Conditional Access.
- `Microsoft-Graph/`: authentication, Graph PowerShell, and direct REST patterns.
- `Exchange-Online/`: connection, mailbox, permission, transport, and trace commands.
- `Intune/`: Graph-based compliance and app-protection experiments.
- `Azure/`: Az module setup, connection, context, subscriptions, and RBAC checks.
- `Troubleshooting/`: real failures, causes, fixes, and validation steps from the lab record.
- `Templates/`: standard script and notes templates.
- `Labs/`: six scenario-based lab summaries.

## Start Here

1. Read [COMMAND-INDEX.md](COMMAND-INDEX.md).
2. Copy [Templates/Script-Template.ps1](Templates/Script-Template.ps1) for a new script.
3. Put the matching notes file beside the script.
4. Use descriptive commit messages, for example: `Document delegated license RBAC boundary test`.

## Evidence Scope

This scaffold includes exact commands and command patterns preserved in the supplied learning workbook and master work log. Some historical conversations were summarized rather than preserved command-for-command, so the repository marks reconstructed command families and does not claim missing parameters were executed exactly as shown.
