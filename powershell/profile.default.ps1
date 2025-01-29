Import-Module PSReadLine
Set-PSReadLineKeyHandler -Key Ctrl+P -Function PreviousHistory
Set-PSReadLineKeyHandler -Key Ctrl+N -Function NextHistory

