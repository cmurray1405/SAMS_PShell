#Prompt for user
$calendar = Read-Host -Prompt "What is the name of the users calendar?"

#Loop though multiple users based on CSV
import-csv -path C:\Temp\Calendar.csv | ForEach-Object {add-MailboxFolderPermission -Identity ${calendar}:\calendar -User $_.upn -AccessRights }

#Confirm user is added
Get-MailboxFolderPermission -Identity ${calendar}:\calendar