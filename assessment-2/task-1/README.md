# Task 1 — SQL JOIN Query

**Standards:** DA.SK1, DA.SK2, DA.SK3
**Database:** `northwindsupply`
**Time guide:** 45 minutes

---

## Your assignment

Write a query against the `northwindsupply` database that shows **each user's name and the number of orders they have placed.** Group the results by user.

Then run it, capture the output, and explain in writing what the query is for.

## What you submit

Three things, all on your own branch (see [Submitting](#submitting) below):

| File | What goes in it |
| --- | --- |
| `query.sql` | Your SQL query |
| `submission.md` → **Output** section | The exact output your query produced, pasted in |
| `submission.md` → **Purpose** section | A short written explanation of what the query does and why someone would run it |

Both files already exist in this folder with the sections marked. Fill them in — don't create new files.

---

## The database

Two tables. Build them yourself with the setup script below — the data is already written for you, you do not need to create or change it.

### `users` — one row per person with an account

| Column | Type | Notes |
| --- | --- | --- |
| `id` | INTEGER | Primary key |
| `name` | VARCHAR(100) | |
| `email` | VARCHAR(255) | Unique |
| `city` | VARCHAR(100) | |
| `state` | VARCHAR(2) | |
| `signup_date` | DATE | |

### `orders` — one row per order placed

| Column | Type | Notes |
| --- | --- | --- |
| `id` | INTEGER | Primary key |
| `user_id` | INTEGER | Foreign key → `users.id` — tells you who placed the order |
| `order_date` | DATE | |
| `status` | VARCHAR(20) | `shipped`, `pending`, or `cancelled` |
| `total_amount` | DECIMAL(10,2) | |

**8 users, 19 orders.** The data is deliberately uneven — look at it before you write anything. Run `SELECT * FROM users;` and `SELECT * FROM orders;` first. What you notice there should inform the query you write.

---

## Building the database

The fastest path is SQLite — no server to install, and it ships with most systems.

**Mac / Linux / Git Bash:**
```bash
cd assessment-2/task-1
bash db/setup.sh
```

**Windows PowerShell:**
```powershell
cd assessment-2\task-1
.\db\setup.ps1
```

Either one creates `northwindsupply.db` in this folder and prints the row counts so you know it worked. Then open it:

```bash
sqlite3 northwindsupply.db
```

Useful once you're in the SQLite prompt:

| Command | Does |
| --- | --- |
| `.tables` | List the tables |
| `.schema users` | Show a table's columns |
| `.headers on` | Show column names in output — **turn this on before capturing output** |
| `.mode column` | Line the output up in columns |
| `.read query.sql` | Run the query you saved in `query.sql` |
| `.quit` | Exit |

Running PostgreSQL or MySQL instead? See [`db/README.md`](db/README.md) — the schema is portable, with the two small differences noted.

## Capturing your output

Run your query with headers on, then copy the result — column headers and all — into the **Output** section of `submission.md`. One command that does it in one step:

```bash
sqlite3 -header -column northwindsupply.db < query.sql
```

Paste the real output. Do not retype it from memory or hand-write what you expect it to be — the output has to match what the query actually returns.

---

## How this is graded

**Proficient:**
- The query joins `users` and `orders` rather than querying one table
- Results are grouped by user, with a count of orders per user
- The count column is given a readable alias
- The output in `submission.md` matches what the query actually returns
- The purpose note explains what the query answers and who would want to know

**Common errors that cost points:**
- `SELECT` without a `JOIN` — pulling from one table only, or listing both tables with no join condition
- Missing `GROUP BY`, so the count collapses to a single row for the whole table
- No explanation of the query's purpose

---

## Submitting

Work on your own branch and open a pull request. Do not commit to `main`.

```bash
git checkout -b assessment-2/<your-name>
# fill in query.sql and submission.md
git add .
git commit -m "Task 1: SQL JOIN query — <your name>"
git push -u origin assessment-2/<your-name>
```

Then open a pull request against `main` on GitHub. Full instructions, including how to submit all three tasks on one branch, are in [SUBMITTING.md](../../SUBMITTING.md) at the repo root.
