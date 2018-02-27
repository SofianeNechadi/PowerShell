$process= "powershell","explorer","iexplorer","svchost"

foreach ($proces in $process){
$encours=Get-Process | where name -like $proces
ADD-content -path C:\Users\Admin\Desktop\ProcessEncours.txt -value $encours
}

Do{
Write-host 'Entrez une valeur entre 0 et 10'
[int]$var=Read-Host
}
While( ($var -lt 0) -or ($var -gt 10) )

Function Set-Popup
{
$WshShell = New-Object -ComObject wscript.Shell
$WshShell.Popup($args[0], 0, 'Popup Powrshell')
}


$WshShell.Popup ("PowerShell ça pu !")