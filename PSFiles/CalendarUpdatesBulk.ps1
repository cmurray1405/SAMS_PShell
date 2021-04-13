#Admin Login
$admin = Read-Host -Prompt "Enter Admin Email"

Connect-ExchangeOnline -UserPrincipalName $admin

#Prompt for Calendar
$calendar = Read-Host -Prompt "What is alias for the calendar?"

#Access Rights
$access = Read-Host -Prompt "what access rights are needed"

#Loop though multiple users based on CSV
import-csv -path C:\Users\craig.murray\Github\SAMS_PShell\CSV\Calendar.csv | ForEach-Object {add-MailboxFolderPermission -Identity ${calendar}:\calendar -User $_.upn -AccessRights }

#Confirm user is added
Get-MailboxFolderPermission -Identity ${calendar}:\calendar