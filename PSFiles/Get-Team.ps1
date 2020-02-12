#Get Team and filter results based on Team Name. Make Sure to include * Wildcard#
Get-Team | Where-Object {$_.DisplayName -like ""} 