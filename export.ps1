param(
    [Parameter(Mandatory=$true)]
    [object[]]$Resultats,
    [string]$Fichier = "resultats.csv"
)

$Resultats | Export-Csv -Path $Fichier -NoTypeInformation -Encoding UTF8
Write-Host "Export terminé : $Fichier"
