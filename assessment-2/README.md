# Assessment 2 — the three tasks

| Task | Standards | Artifact you produce |
| --- | --- | --- |
| [Task 1 — SQL JOIN Query](task-1) | DA.SK1, DA.SK2, DA.SK3 | SQL query + its real output + a note explaining the query's purpose |
| [Task 2 — SDLC Diagram](task-2) | SD.KU1, SD.SK1, SD.SK2 | Completed swimlane diagram with annotated phases |
| [Task 3 — Test Plan + Defect Log](task-3) | QA.SK1, QA.SK2 | Test plan + defect log for the [RSVP portal](../scenario) |

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

You get a **working web app** — the [Riverside Community Association RSVP portal](../scenario) — six requirements the client asked for, and a deadline: the meetup is Saturday and this build hasn't gone public yet. Open the app in your browser and try to break it.

You write Given/When/Then test cases traced to those requirements, then log every defect you find. **How much to cover and what to go after is your call** — that judgment is part of what's assessed, and the traceability matrix will make your coverage plain either way. Nobody tells you where the defects are or how many there are.

This is the only task with a scenario app. Tasks 1 and 2 don't use it.

---

## The tasks are related

All three are graded on their own, so you don't need to connect them. But they're the same job seen from three angles: Task 1 queries the data an app produces, Task 3 tests whether an app does what was asked of it, and Task 2 maps the lifecycle that both of those sit inside.

If you notice while doing Task 2 that the defect you logged in Task 3 is exactly the kind of thing one methodology catches late and the other catches early, that's worth writing down. Reviewers notice when an apprentice sees across the three.
