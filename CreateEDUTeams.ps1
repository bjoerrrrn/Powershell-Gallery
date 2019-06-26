$cred = Get-Credential
Connect-MicrosoftTeams -Credential $cred
New-Team -MailNickname "bstest-class" -DisplayName "bs Klasse" -Visibility "private" -Template "EDU_Class"
