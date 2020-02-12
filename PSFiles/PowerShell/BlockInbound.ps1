Import-Module SkypeOnlineConnector
$credential = Get-Credential
$session = New-CsOnlineSession -Credential $credential
Import-PSSession $session