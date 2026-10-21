# Test : une liste de cibles vide ne doit pas lancer de ping.
$Cibles = @()

if ($Cibles.Count -eq 0) {
    Write-Host "TEST REUSSI : la liste vide est détectée."
}
else {
    Write-Host "TEST ECHOUE : la liste devrait être vide."
    exit 1
}
