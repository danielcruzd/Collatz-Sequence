# collatz.ps1

# Load System.Numerics to handle BigInteger
Add-Type -AssemblyName System.Numerics

# Request the user to input a positive number
$n = Read-Host "Enter a positive number for the Collatz sequence"

try {
    # Convert input to BigInteger
    $bigIntN = [System.Numerics.BigInteger]::Parse($n)
    
    if ($bigIntN -le 0) {
        Write-Host "Error: Please enter a positive number." -ForegroundColor Red
        exit
    }
} catch {
    Write-Host "Error: Please enter a valid number." -ForegroundColor Red
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

Write-Host "`nCollatz Sequence: $($sequence -join ' → ')" -ForegroundColor Cyan
Write-Host "Steps to reach 1: $steps" -ForegroundColor Green
