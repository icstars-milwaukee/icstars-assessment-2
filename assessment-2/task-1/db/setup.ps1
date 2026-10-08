# Builds the northwindsupply SQLite database for Assessment 2 / Task 1.
# Run from the task-1 folder:  .\db\setup.ps1

$ErrorActionPreference = "Stop"

$db   = "northwindsupply.db"
$here = Split-Path -Parent $MyInvocation.MyCommand.Path

if (-not (Get-Command sqlite3 -ErrorAction SilentlyContinue)) {
    Write-Error "sqlite3 is not installed or not on your PATH. Install it with: winget install SQLite.SQLite"
    exit 1
}

# Start clean so re-running is always safe.
if (Test-Path $db) { Remove-Item $db -Force }

Get-Content (Join-Path $here "schema.sql") -Raw | sqlite3 $db
Get-Content (Join-Path $here "seed.sql")   -Raw | sqlite3 $db

Write-Host "Created $db"
Write-Host ""

$counts = @"
SELECT 'users' AS table_name, COUNT(*) AS row_count FROM users
UNION ALL
SELECT 'orders', COUNT(*) FROM orders;
"@
$counts | sqlite3 -header -column $db

Write-Host ""
Write-Host "Expected: users = 8, orders = 19"
Write-Host "Open it with:  sqlite3 $db"
