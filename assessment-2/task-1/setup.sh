#!/usr/bin/env bash
# Builds the northwindsupply SQLite database for Assessment 2 / Task 1.
# Run from the task-1 folder:  bash setup.sh
#
# All this does is feed setup-sqlite.sql to sqlite3. You can do it by hand instead:
#   sqlite3 northwindsupply.db < setup-sqlite.sql

set -euo pipefail

DB="northwindsupply.db"
HERE="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

if ! command -v sqlite3 >/dev/null 2>&1; then
  echo "sqlite3 is not installed or not on your PATH." >&2
  echo "  Mac:     brew install sqlite3" >&2
  echo "  Ubuntu:  sudo apt install sqlite3" >&2
  echo "  Windows: winget install SQLite.SQLite" >&2
  exit 1
fi

# Start clean so re-running is always safe.
rm -f "$DB"

sqlite3 "$DB" < "$HERE/setup-sqlite.sql"

echo "Created $DB"
echo
sqlite3 -header -column "$DB" "
  SELECT 'users' AS table_name, COUNT(*) AS row_count FROM users
  UNION ALL
  SELECT 'orders', COUNT(*) FROM orders;
"
echo
echo "Expected: users = 8, orders = 19"
echo
echo "Now go look at the data:"
echo "  sqlite3 -header -column $DB \"SELECT * FROM users;\""
echo "  sqlite3 -header -column $DB \"SELECT * FROM orders;\""
echo
echo "Or open an interactive session:  sqlite3 $DB"
