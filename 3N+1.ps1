# Cargar System.Numerics para manejar BigInteger
Add-Type -AssemblyName System.Numerics

# Solicitar al usuario un número
$n = Read-Host "Ingrese un número positivo para la secuencia de Collatz"

try {
    # Convertir entrada a BigInteger
    $bigIntN = [System.Numerics.BigInteger]::Parse($n)

    if ($bigIntN -le 0) {
        Write-Host "Error: Ingrese un número positivo." -ForegroundColor Red
        exit
    }

    $steps = 0
    $sequence = @($bigIntN)

    while ($bigIntN -ne 1) {
        if ($bigIntN % 2 -eq 0) {
            $bigIntN = $bigIntN / 2
        } else {
            $bigIntN = 3 * $bigIntN + 1
        }
        $sequence += $bigIntN
        $steps++
    }

    Write-Host "`nSecuencia de Collatz: $($sequence -join ' → ')" -ForegroundColor Cyan
    Write-Host "Pasos hasta llegar a 1: $steps" -ForegroundColor Green

} catch {
    Write-Host "Error: Ingrese un número válido." -ForegroundColor Red
}
