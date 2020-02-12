$root="c:\users"
$users=get-childitem -path $root -Exclude administrator, public
foreach ($user in $users)
 {
 $folder= join-path -path $user -childpath "AppData\Roaming\Microsoft\Signatures\*"
 Get-childitem $folder -recurse | remove-item -force
 }