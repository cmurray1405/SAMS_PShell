#Specify Calendar
$calendar = Read-Host -Prompt "Please enter users calendar"

#Specify User
$user = Read-Host -Prompt "Enter User name"

#Access Rights
$access = Read-Host -Prompt "what access rights are needed"

#Calendar Permission
Add-MailboxFolderPermission -Identity ${calendar}:\calendar -User $user -AccessRights $access

#Confirm Results
Get-MailboxFolderPermission -Identity ${calendar}:\calendar