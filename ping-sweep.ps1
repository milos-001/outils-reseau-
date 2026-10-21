param(
    [string[]]$Cibles = @("127.0.0.1", "192.168.1.1")
)

if ($null -eq $Cibles -or $Cibles.Count -eq 0) {
    Write-Host "Aucune cible fournie."
    exit 0
}

foreach ($Cible in $Cibles) {
    if ([string]::IsNullOrWhiteSpace($Cible)) {
        continue
    }

    try {
        $Reponse = Test-Connection -ComputerName $Cible -Count 1 -Quiet -ErrorAction Stop
        if ($Reponse) {
            Write-Host "$Cible : joignable"
        }
        else {
            Write-Host "$Cible : aucune réponse"
        }
    }
    catch {
        Write-Host "$Cible : erreur lors du test"
    }
}
