$AccountSkuId = "SamaritansFoundation:"
$Users = Import-Csv
$Users | ForEach-Object {
Set-MsolUserLicense -UserPrincipalName $_.UserPrincipalName -AddLicenses $AccountSkuId
}