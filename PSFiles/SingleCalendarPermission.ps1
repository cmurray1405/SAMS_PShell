#Admin Login
$admin = Read-Host -Prompt "Enter Admin Email"
Connect-ExchangeOnline -UserPrincipalName $admin

#Specify Calendar
$calendar = Read-Host -Prompt "Please enter alias for calendar"

#Specify User
$user = Read-Host -Prompt "Enter emial for person who needs access"

#Access Rights
$access = Read-Host -Prompt "what access rights are needed"

#Calendar Permission
Add-MailboxFolderPermission -Identity ${calendar}:\calendar -User $user -AccessRights $access

#Confirm Results
Get-MailboxFolderPermission -Identity ${calendar}:\calendar