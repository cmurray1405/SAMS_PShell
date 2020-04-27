$Users = Import-csv -Path "C:\powershell_scripts\AddUserSSOGroup.csv"
$GroupObjectID = ""
ForEach($User in $Users){
$UsersEmail = $User.UserprincipalName
$UserObjectID = (Get-AzureADUser -ObjectID $UsersEmail).objectid
Add-AzureADGroupMember -ObjectID $GroupObjectID -RefObjectId $UserObjectID
}
