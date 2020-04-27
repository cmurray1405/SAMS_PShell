$UsageLocation = "AU"
$Users = Import-Csv C:\support\ADN_AU.csv
$Users | ForEach-Object {
Set-MsolUser -UserPrincipalName $_.UserPrincipalName -UsageLocation $UsageLocation 
}