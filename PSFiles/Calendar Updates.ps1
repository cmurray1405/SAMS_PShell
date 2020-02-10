$user ="string"
import-csv -path C:\Temp\Calendar.csv | ForEach-Object {add-MailboxFolderPermission -Identity $user -User $_.upn -AccessRights }