# `northwindsupply` — database setup notes

Three files, none of which you should change:

| File | What it is |
| --- | --- |
| `schema.sql` | Creates the `users` and `orders` tables |
| `seed.sql` | Inserts the 8 users and 19 orders |
| `setup.sh` / `setup.ps1` | Runs both of the above against a fresh SQLite file |

Re-running either setup script is always safe — it drops and rebuilds from scratch, so if you break something while experimenting, just run it again.

## SQLite (recommended)

Nothing to install beyond the `sqlite3` binary, and no server to run.

```bash
cd assessment-2/task-1
bash db/setup.sh        # or: .\db\setup.ps1 on Windows
sqlite3 northwindsupply.db
```

Don't have `sqlite3`?

| Platform | Install |
| --- | --- |
| Mac | `brew install sqlite3` |
| Ubuntu / Debian | `sudo apt install sqlite3` |
| Windows | `winget install SQLite.SQLite` |

## PostgreSQL

```bash
createdb northwindsupply
psql northwindsupply -f db/schema.sql
psql northwindsupply -f db/seed.sql
psql northwindsupply
```

One difference: `INTEGER PRIMARY KEY` does not auto-increment in Postgres the way it does in SQLite. That does not matter here, because `seed.sql` supplies every `id` explicitly.

## MySQL / MariaDB

```bash
mysql -u root -e "CREATE DATABASE northwindsupply;"
mysql -u root northwindsupply < db/schema.sql
mysql -u root northwindsupply < db/seed.sql
mysql -u root northwindsupply
```

One difference: MySQL needs the storage engine to be InnoDB for the foreign key to be enforced. It is the default on any current version, so you should not have to do anything.

## Checking your setup worked

```sql
SELECT COUNT(*) FROM users;    -- expect 8
SELECT COUNT(*) FROM orders;   -- expect 19
```

If you get those two numbers, your database is correct and identical to everyone else's — which means your query output can be compared directly against the answer key.

## Before you write any SQL

Look at the data first:

```sql
SELECT * FROM users;
SELECT * FROM orders;
```

Reading the rows before writing a query is the habit being assessed here as much as the syntax is. There are things about this data that will change what you decide to write.

## If you break the database

```bash
rm northwindsupply.db      # Windows PowerShell: Remove-Item northwindsupply.db
bash db/setup.sh
```

The `.db` file is gitignored, so it never gets committed — everyone builds their own from these scripts.
