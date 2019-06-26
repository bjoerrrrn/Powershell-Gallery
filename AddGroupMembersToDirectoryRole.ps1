# Es gibt eine Lehrer Sicherheitsgruppe für einen internen Kalender - diese Gruppe wird von der Schule gepflegt
# Alle diese Mitglieder sollen Device Administratoren werden

$lehrergruppe = Get-AzureADGroupMember -ObjectId "1915c6ce-5fc6-4906-b1c1-08bbd3bc94ac"
$role = Get-AzureADDirectoryRole | Where-Object {$_.displayName -eq 'Device Administrators'}

Foreach ($lehrer in $lehrergruppe)
{
Add-AzureADDirectoryRoleMember -ObjectId $role.ObjectId -RefObjectId $lehrer.ObjectId
Write-Host $lehrer.UserPrincipalName "ist jetzt Device Admin"
}
