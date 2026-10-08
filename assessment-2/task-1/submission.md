# Task 1 Submission — SQL JOIN Query

**Apprentice name:**
**Date:**
**Database:** `northwindsupply`

---

## Output

Paste the exact output of your query here, **column headers included.**

In SSMS: press **Ctrl+T** (Results to Text), then **F5** to run, then copy the Results pane. If you'd rather stay in the grid, select your rows and press **Ctrl+Shift+C** (Copy with Headers) — plain Ctrl+C drops the column names, which is the usual reason a paste comes out nameless.

```
Group By User
name	number_of_orders
Maria Alvarez	5
Darnell Brooks	4
Priya Raman	    3
Tomas Nowak	    2
Grace Okonkwo	1
Hector Reyes	4
Leah Fitzgerald	0
Sam Whitcomb	0

ORDER BY NAME
name	number_of_orders
Darnell Brooks	4
Grace Okonkwo	1
Hector Reyes	4
Leah Fitzgerald	0
Maria Alvarez	5
Priya Raman	3
Sam Whitcomb	0
Tomas Nowak	2

```

---

## Purpose

Explain what this query is for, in your own words. A few sentences is enough. Cover:

- **What question does it answer?** State it as a question a real person would ask.
- **Who would want to know, and why?** Which role at northwindsupply runs this, and what decision does it help them make?
- **How does it work?** Walk through what the join does and what the grouping does.

Write your explanation below:

>It answers the question of who orders most, meaning who would need the most marketing attention or who would be more likely to buy a newer and more expensive product.
>The manager or director of the sales team would want to know this because it will help them decide who to give more publicity to or who would be a great target for a new product line.
>The specific type of join that I used makes it so that even users that haven't placed any orders are also shown in the results. The group by makes it so that the results are the users are paired with their appropriate amount of orders to porperly be able to calculate the orders.

---

## Notes (optional)

Anything you want the reviewer to know — a problem you hit, something about the data you noticed, a second approach you considered and rejected.

>I wasn't clear if the wording "group by user" meant to simply group or also order by user as well so I added the "ORDER BY u.name asc;" to cover both bases. 
