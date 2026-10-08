# Task 1 — SQL JOIN Query

**Standards:** DA.SK1, DA.SK2, DA.SK3
**Database:** `northwindsupply`
**Tool:** SQL Server Management Studio (SSMS)
**Time guide:** 45 minutes

---

## Your assignment

Write a query against the `northwindsupply` database that shows **each user's name and the number of orders they have placed.** Group the results by user.

Then run it, capture the output, and explain in writing what the query is for.

## What you submit

| File | What goes in it |
| --- | --- |
| `query.sql` | Your SQL query |
| `submission.md` → **Output** | The exact output your query produced, pasted in |
| `submission.md` → **Purpose** | A short written explanation of what the query does and why someone would run it |

Both files are already in this folder with the sections marked. Fill them in — don't create new files.

---

# The database

Everything you need to design your query is below. **[`setup.sql`](setup.sql) is the complete build script** — it creates the database, creates both tables, and inserts all the data. Read it, then run it.

## Building it in SSMS

1. Open **SQL Server Management Studio** and connect to your server.
2. **File → Open → File…** and pick [`setup.sql`](setup.sql). (Or open a New Query window and paste the whole file in.)
3. Click **Execute**, or press **F5**.
4. Click the **Messages** tab. You should see:

   ```
   users rows (expect 8):    8
   orders rows (expect 19):  19
   ```

If you see those two numbers, your database is built and identical to everyone else's.

## ⚠️ `USE northwindsupply;` — the one that catches everybody

A new query window in SSMS starts out pointed at **`master`**, not at your database. `master` has no `users` table, so your query fails with:

```
Invalid object name 'users'.
```

That error almost always means you're in the wrong database, not that your SQL is wrong. Two ways to fix it:

```sql
USE northwindsupply;
GO
```

Put that at the top of your query — it's **already waiting for you at the top of `query.sql`**, so leave it there. Or pick `northwindsupply` from the database dropdown in the SSMS toolbar before you run anything. Doing both is fine.

`GO` isn't really SQL — it's SSMS's way of saying "send everything above this as one batch." `CREATE DATABASE` and `USE` each need their own batch, which is why `setup.sql` is full of them.

## The two tables

This is the actual SQL from `setup.sql` that creates them:

```sql
-- One row per person with a northwindsupply account.
CREATE TABLE dbo.users (
    id          INT          NOT NULL PRIMARY KEY,  -- unique id for each user
    name        VARCHAR(100) NOT NULL,              -- the user's full name
    email       VARCHAR(255) NOT NULL UNIQUE,
    city        VARCHAR(100) NULL,
    state       CHAR(2)      NULL,
    signup_date DATE         NOT NULL
);

-- One row per order placed.
CREATE TABLE dbo.orders (
    id           INT           NOT NULL PRIMARY KEY, -- unique id for each order
    user_id      INT           NOT NULL,             -- who placed it -> users.id
    order_date   DATE          NOT NULL,
    status       VARCHAR(20)   NOT NULL,             -- shipped / pending / cancelled
    total_amount DECIMAL(10,2) NOT NULL,
    CONSTRAINT FK_orders_users FOREIGN KEY (user_id) REFERENCES dbo.users(id)
);
```

**The thing to notice:** `orders.user_id` holds the `id` of the user who placed that order. That shared value is the only thing connecting the two tables — a user's *name* exists only in `users`, and the record that they placed an order exists only in `orders`. Your query needs both, which is why one table alone won't answer the question.

## The data

All of it, so you can design your query against what's actually there — and check your output by hand afterward.

### `users` — 8 rows

| id | name | email | city | state | signup_date |
| --- | --- | --- | --- | --- | --- |
| 1 | Maria Alvarez | maria.alvarez@example.com | Milwaukee | WI | 2024-01-15 |
| 2 | Darnell Brooks | darnell.brooks@example.com | Madison | WI | 2024-02-03 |
| 3 | Priya Raman | priya.raman@example.com | Chicago | IL | 2024-02-27 |
| 4 | Tomas Nowak | tomas.nowak@example.com | Milwaukee | WI | 2024-04-11 |
| 5 | Grace Okonkwo | grace.okonkwo@example.com | Racine | WI | 2024-05-06 |
| 6 | Hector Reyes | hector.reyes@example.com | Green Bay | WI | 2024-06-19 |
| 7 | Leah Fitzgerald | leah.fitzgerald@example.com | Kenosha | WI | 2024-08-02 |
| 8 | Sam Whitcomb | sam.whitcomb@example.com | Waukesha | WI | 2024-09-23 |

### `orders` — 19 rows

| id | user_id | order_date | status | total_amount |
| --- | --- | --- | --- | --- |
| 1 | 1 | 2024-03-02 | shipped | 184.50 |
| 2 | 1 | 2024-03-18 | shipped | 62.00 |
| 3 | 1 | 2024-05-21 | shipped | 410.75 |
| 4 | 1 | 2024-07-09 | shipped | 98.25 |
| 5 | 1 | 2024-09-14 | pending | 233.00 |
| 6 | 2 | 2024-03-27 | shipped | 75.40 |
| 7 | 2 | 2024-06-05 | shipped | 312.10 |
| 8 | 2 | 2024-08-16 | shipped | 44.99 |
| 9 | 2 | 2024-09-30 | pending | 129.60 |
| 10 | 3 | 2024-04-08 | shipped | 560.00 |
| 11 | 3 | 2024-07-22 | shipped | 87.30 |
| 12 | 3 | 2024-10-01 | pending | 201.45 |
| 13 | 4 | 2024-05-13 | shipped | 156.80 |
| 14 | 4 | 2024-08-29 | shipped | 73.15 |
| 15 | 5 | 2024-06-24 | shipped | 419.00 |
| 16 | 6 | 2024-07-01 | shipped | 92.50 |
| 17 | 6 | 2024-07-30 | cancelled | 58.20 |
| 18 | 6 | 2024-09-05 | shipped | 275.65 |
| 19 | 6 | 2024-10-02 | pending | 140.00 |

**Study the `user_id` column before you write anything.** Count how many orders each user has. Then compare that list against the 8 users above. Whatever you notice there is a decision your query has to make — and it's the difference between a query that's technically valid and one that actually answers the question.

## Exploring it yourself

In a New Query window:

```sql
USE northwindsupply;
GO

SELECT * FROM users;
SELECT * FROM orders;
```

Handy in SSMS:

| Shortcut | Does |
| --- | --- |
| **F5** | Execute. Highlight part of the script first and F5 runs only that part. |
| **Ctrl+D** | Results to grid (the default) |
| **Ctrl+T** | Results to text — easier to copy into Markdown |
| **Ctrl+Shift+C** | Copy selected grid cells **with** column headers |
| **F8** | Show/hide Object Explorer |

Broke something? Just run `setup.sql` again. It drops and rebuilds from scratch every time.

---

## Capturing your output

Write your query in `query.sql`, run it, then copy the result — **column headers included** — into the **Output** section of `submission.md`.

The cleanest way to get something that pastes nicely:

1. Press **Ctrl+T** (Results to Text).
2. Press **F5** to run your query.
3. Select the output in the Results pane and copy it.

Alternatively, leave results in the grid, select the rows, and use **Ctrl+Shift+C** (Copy with Headers) — or right-click the grid → **Copy with Headers**. Plain Ctrl+C drops the headers, which is why your paste comes out missing the column names.

Paste the real output. Don't retype it from memory or write what you expect it to be — it has to match what the query actually returned. You have the full data above, so you can check it yourself before you submit.

---

## How this is graded

**Proficient:**
- The query joins `users` and `orders` rather than querying one table
- Results are grouped by user, with a count of orders per user
- The count column has a readable alias
- The output in `submission.md` matches what the query actually returns
- The purpose note explains what the query answers and who would want to know

**Common errors that cost points:**
- `SELECT` without a `JOIN` — pulling from one table only, or naming both tables with no join condition
- Missing `GROUP BY`, so the count collapses to one row for the whole table
- No explanation of the query's purpose

---

## Troubleshooting

| Error / symptom | What it means |
| --- | --- |
| `Invalid object name 'users'` | You're in the wrong database. Run `USE northwindsupply;` or pick it from the toolbar dropdown. |
| `Database 'northwindsupply' does not exist` | `setup.sql` hasn't run yet, or it errored partway. Run it again and read the Messages tab. |
| `Incorrect syntax near 'GO'` | You pasted into something that isn't SSMS. `GO` is an SSMS instruction, not SQL. |
| `Cannot drop table ... referenced by a FOREIGN KEY` | You're dropping `users` before `orders`. `setup.sql` already handles the order — run the whole file rather than parts of it. |
| My pasted output has no column names | Use Ctrl+T, or Ctrl+Shift+C instead of Ctrl+C. |
| `COUNT` returned one row for everything | Worth re-reading the assignment: *group the results by user.* |

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

Full instructions are in [SUBMITTING.md](../../SUBMITTING.md) at the repo root.

---

## No SSMS on your machine?

<details>
<summary><strong>SQLite, PostgreSQL or MySQL instead</strong></summary>

Use [`setup-sqlite.sql`](setup-sqlite.sql) rather than `setup.sql`. It builds the same two tables with the same data, minus the SQL Server–specific `CREATE DATABASE`, `USE` and `GO` statements.

**SQLite** — there are helper scripts that do it in one command:

```bash
cd assessment-2/task-1
bash setup.sh          # Windows PowerShell: .\setup.ps1
```

Or by hand:

```bash
sqlite3 northwindsupply.db < setup-sqlite.sql
```

Capture output with `sqlite3 -header -column northwindsupply.db < query.sql`. Note that `query.sql` ships with `USE northwindsupply;` and `GO` at the top for SSMS — delete those two lines if you're on SQLite, since neither statement exists there.

**PostgreSQL:**

```bash
createdb northwindsupply
psql northwindsupply -f setup-sqlite.sql
```

**MySQL / MariaDB:**

```bash
mysql -u root -e "CREATE DATABASE northwindsupply;"
mysql -u root northwindsupply < setup-sqlite.sql
```

**Nothing installed at all:** paste `setup-sqlite.sql` into a browser SQL sandbox such as [SQLite Online](https://sqliteonline.com/) or [DB Fiddle](https://www.db-fiddle.com/), run it, then write your query in the same window.

On any engine, check your setup with `SELECT COUNT(*) FROM users;` (expect 8) and `SELECT COUNT(*) FROM orders;` (expect 19).

</details>
