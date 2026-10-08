# Task 1 Submission — SQL JOIN Query

**Apprentice name:**
**Date:**
**Database:** `northwindsupply`

---

## Output

Paste the exact output of your query here, **column headers included.**

In SSMS: press **Ctrl+T** (Results to Text), then **F5** to run, then copy the Results pane. If you'd rather stay in the grid, select your rows and press **Ctrl+Shift+C** (Copy with Headers) — plain Ctrl+C drops the column names, which is the usual reason a paste comes out nameless.

```
name	number_of_orders
Maria Alvarez	5
Darnell Brooks	4
Priya Raman	3
Tomas Nowak	2
Grace Okonkwo	1
Hector Reyes	4
Leah Fitzgerald	0
Sam Whitcomb	0



```

---

## Purpose

Explain what this query is for, in your own words. A few sentences is enough. Cover:

- **What question does it answer?** State it as a question a real person would ask.
- **Who would want to know, and why?** Which role at northwindsupply runs this, and what decision does it help them make?
- **How does it work?** Walk through what the join does and what the grouping does.

Write your explanation below:

>This query shows each user and the total number of orders they placed. It joins the users and orders tables using the users ID, counts the orders for each user and groups the results by user. Northwindsupply could run this query to see how many orders each customer has placed, including customers who have not placed any orders.
>
>

---

## Notes (optional)

Anything you want the reviewer to know — a problem you hit, something about the data you noticed, a second approach you considered and rejected.

>
