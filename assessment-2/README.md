# Assessment 2 — the three tasks

| Task | Standards | Artifact you produce |
| --- | --- | --- |
| [Task 1 — SQL JOIN Query](task-1) | DA.SK1, DA.SK2, DA.SK3 | SQL query + its real output + a note explaining the query's purpose |
| [Task 2 — SDLC Diagram](task-2) | SD.KU1, SD.SK1, SD.SK2 | Completed swimlane diagram with annotated phases |
| [Task 3 — Test Plan + Defect Log](task-3) | QA.SK1, QA.SK2 | Test plan with 3 test cases + a defect log |

Open the task folder and read its README before you start. Submission instructions for all three are in [SUBMITTING.md](../SUBMITTING.md).

---

## What each task is assessing

### Task 1 — SQL JOIN Query · DA.SK1–3

**Standards:** write queries that combine data across tables; aggregate and group results; explain what a query is for.

You get the `northwindsupply` database — two tables, `users` and `orders`, with 8 and 19 rows. You write one query showing each user's name and how many orders they've placed, grouped by user. Then you run it, paste the real output, and explain in writing what question it answers and who would ask it.

The explanation is a graded part of the task, not a formality. A query nobody can explain is a query nobody should run.

### Task 2 — SDLC Diagram · SD.KU1, SD.SK1, SD.SK2

**Standards:** identify and explain the SDLC phases; compare Waterfall and Agile.

You get a blank swimlane template. You work out the phases, put them in order, say what happens in each, then show the same phases arranged the Waterfall way and the Agile way — the difference should be visible in the shape of the diagram, not only in your notes. Finally you connect it to your team's real project with specifics a reviewer can go look up.

### Task 3 — Test Plan + Defect Log · QA.SK1, QA.SK2

**Standards:** translate requirements into test cases; log and track defects systematically.

You get one requirement — *a user can log in with email + password and see the dashboard* — and one simulated error: *login accepts wrong password*. You write three Given/When/Then test cases traced to the acceptance criteria, then log the defect with every field a developer would need to reproduce and fix it.

---

## The tasks are related

Task 3 gives you a requirement and asks you to test it. Task 2 asks you to diagram the lifecycle that requirement travels through. Task 1 asks you to query the data a working version of it would produce.

You don't need to connect them to score well — each is graded on its own. But if you notice while doing Task 2 that the defect you logged in Task 3 is exactly the kind of thing Waterfall catches late and Agile catches early, that's worth writing down in your project note. Reviewers notice when an apprentice sees across the three.
