$AccountSkuId = ""
$Users = Import-Csv -Path C:\powershell_scripts\users_proplus.csv
$Users | ForEach-Object {
Set-MsolUserLicense -UserPrincipalName $_.UserPrincipalName -RemoveLicenses $AccountSkuId
}