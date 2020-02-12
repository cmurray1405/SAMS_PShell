$Users = Import-csv -Path "C:\powershell_scripts\AddUserSSOGroup.csv"
$GroupObjectID = "ebe2a18f-f357-4c59-8a36-e0b86fc916c4"
ForEach($User in $Users){
$UsersEmail = $User.UserprincipalName
$UserObjectID = (Get-AzureADUser -ObjectID $UsersEmail).objectid
Add-AzureADGroupMember -ObjectID $GroupObjectID -RefObjectId $UserObjectID
}
