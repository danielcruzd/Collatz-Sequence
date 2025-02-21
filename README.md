# Collatz Sequence PowerShell Script

This repository contains a PowerShell script that calculates the **Collatz Sequence** for a given positive integer. The Collatz Conjecture, also known as the \(3n + 1\) problem, states that for any positive integer, repeatedly applying the rules of dividing by 2 if even or multiplying by 3 and adding 1 if odd will eventually reach the number 1.

## Features

- **Input**: Prompts the user to enter a positive integer.
- **Sequence Calculation**: Generates the full Collatz sequence.
- **Step Count**: Displays the number of steps taken to reach `1`.

## Requirements

- **PowerShell 5.0+**: Compatible with versions supporting the `System.Numerics` library for `BigInteger` handling.
- **System.Numerics Assembly**: Must be available in your environment to manage large numbers.

## Script Details

### 1. Load System.Numerics Assembly
The script uses `BigInteger` to handle very large numbers:
```powershell
Add-Type -AssemblyName System.Numerics
