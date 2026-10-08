# Task 1 — SQL JOIN Query

**Standards:** DA.SK1, DA.SK2, DA.SK3
**Database:** `northwindsupply`
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

Everything you need to design your query is below. **[`setup.sql`](setup.sql) is the complete build script** — it creates both tables and inserts all the data. Read it, then run it.

## Building it

```bash
cd assessment-2/task-1
bash setup.sh
```

Windows PowerShell: `.\setup.ps1`

Either one creates `northwindsupply.db` in this folder and prints the row counts so you know it worked — you should see `users = 8, orders = 19`. If you'd rather skip the script, it does nothing but this:

```bash
sqlite3 northwindsupply.db < setup.sql
```

No `sqlite3` on your machine? `brew install sqlite3` on Mac, `sudo apt install sqlite3` on Ubuntu, `winget install SQLite.SQLite` on Windows. Running PostgreSQL or MySQL instead? See [Using a different database engine](#using-a-different-database-engine) at the bottom.

## The two tables

This is the actual SQL from `setup.sql` that creates them:

```sql
-- One row per person with a northwindsupply account.
CREATE TABLE users (
  id          INTEGER      PRIMARY KEY,   -- unique id for each user
  name        VARCHAR(100) NOT NULL,      -- the user's full name
  email       VARCHAR(255) NOT NULL UNIQUE,
  city        VARCHAR(100),
  state       VARCHAR(2),
  signup_date DATE         NOT NULL
);

-- One row per order placed.
CREATE TABLE orders (
  id           INTEGER       PRIMARY KEY,  -- unique id for each order
  user_id      INTEGER       NOT NULL,     -- which user placed it -> users.id
  order_date   DATE          NOT NULL,
  status       VARCHAR(20)   NOT NULL,     -- 'shipped', 'pending' or 'cancelled'
  total_amount DECIMAL(10,2) NOT NULL,
  FOREIGN KEY (user_id) REFERENCES users(id)
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

Open an interactive session:

```bash
sqlite3 northwindsupply.db
```

| Command | Does |
| --- | --- |
| `.tables` | List the tables |
| `.schema users` | Show a table's columns |
| `.headers on` | Show column names in output — **turn this on before capturing output** |
| `.mode column` | Line the output up in columns |
| `.read query.sql` | Run the query you saved in `query.sql` |
| `.quit` | Exit |

Broke something? `bash setup.sh` again — it drops and rebuilds from scratch every time.

---

## Capturing your output

Write your query in `query.sql`, then run it with headers on and copy the result — column names and all — into the **Output** section of `submission.md`:

```bash
sqlite3 -header -column northwindsupply.db < query.sql
```

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

## Submitting

Work on your own branch and open a pull request. Do not commit to `main`.

```bash
git checkout -b assessment-2/<your-name>
# fill in query.sql and submission.md
git add .
git commit -m "Task 1: SQL JOIN query — <your name>"
git push -u origin assessment-2/<your-name>
```

Don't commit `northwindsupply.db` — it's gitignored on purpose. Everyone builds their own from `setup.sql`.

Full instructions are in [SUBMITTING.md](../../SUBMITTING.md) at the repo root.

---

## Using a different database engine

`setup.sql` is portable — the same file works on all three.

<details>
<summary><strong>PostgreSQL</strong></summary>

```bash
createdb northwindsupply
psql northwindsupply -f setup.sql
psql northwindsupply
```

One difference: `INTEGER PRIMARY KEY` doesn't auto-increment in Postgres the way it does in SQLite. That doesn't matter here — `setup.sql` supplies every `id` explicitly.

</details>

<details>
<summary><strong>MySQL / MariaDB</strong></summary>

```bash
mysql -u root -e "CREATE DATABASE northwindsupply;"
mysql -u root northwindsupply < setup.sql
mysql -u root northwindsupply
```

One difference: the foreign key is only enforced if the storage engine is InnoDB. It's the default on any current version, so you shouldn't have to do anything.

</details>

<details>
<summary><strong>No database installed at all</strong></summary>

Paste the contents of `setup.sql` into a browser-based SQL sandbox such as [SQLite Online](https://sqliteonline.com/) or [DB Fiddle](https://www.db-fiddle.com/), run it, then write your query in the same window.

This works fine for the assessment. The only thing you lose is the `sqlite3 -header -column` one-liner for capturing output — you'll copy the result out of the browser instead. Make sure the column headers come with it.

</details>

**Checking your setup worked, on any engine:**

```sql
SELECT COUNT(*) FROM users;    -- expect 8
SELECT COUNT(*) FROM orders;   -- expect 19
```

Those two numbers mean your database is identical to everyone else's, so your output can be compared directly against the answer key.
