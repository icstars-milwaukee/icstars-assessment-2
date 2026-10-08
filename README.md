# i.c.stars Assessment 2

Milwaukee · Molson Cycle 21

This repo holds the Assessment 2 tasks. **`main` is blank on purpose** — it's the assessment, not an answer key. You fill it in on your own branch.

## 👉 Start here: [SUBMITTING.md](SUBMITTING.md)

Read that first. It walks through branching, committing, and opening your pull request. The short version:

```bash
git clone https://github.com/icstars-milwaukee/icstars-assessment-2.git
cd icstars-assessment-2
git checkout -b assessment-2/your-name
```

Then do the three tasks, push your branch, and open a pull request against `main`.

---

## The three tasks

All three go on the same branch and into the same pull request. Budget about 45 minutes each.

| Task | Standards | What you do | Files you edit |
| --- | --- | --- | --- |
| [**Task 1** — SQL JOIN Query](assessment-2/task-1) | DA.SK1–3 | Query the `northwindsupply` database for each user's order count | `query.sql`, `submission.md` |
| [**Task 2** — SDLC Diagram](assessment-2/task-2) | SD.KU1, SD.SK1, SD.SK2 | Map the SDLC phases on a swimlane, show Agile vs. Waterfall | `submission.md` |
| [**Task 3** — Test Plan + Defect Log](assessment-2/task-3) | QA.SK1, QA.SK2 | Write 3 Given/When/Then test cases and log a defect | `test-plan.md`, `defect-log.md` |

Each task folder has its own README with the full assignment, the proficiency criteria, and the common errors that cost points. **Read the task README before you start that task** — it tells you exactly what the reviewer is looking for.

## Repo layout

```
SUBMITTING.md              how to submit — read this first
assessment-2/
  task-1/                  SQL JOIN query
    README.md                the assignment
    query.sql                ← you write your query here
    submission.md            ← you paste your output and explanation here
    db/                      northwindsupply schema, seed data, setup scripts
  task-2/                  SDLC diagram
    README.md                the assignment
    submission.md            ← blank swimlane template, you fill it in
  task-3/                  test plan + defect log
    README.md                the assignment
    test-plan.md             ← blank, you fill it in
    defect-log.md            ← blank, you fill it in
    templates/               clean reference copies of both templates
.github/
  PULL_REQUEST_TEMPLATE.md   loads automatically when you open your PR
  ISSUE_TEMPLATE/            defect template, if you file issues
```

## Setting up the database for Task 1

Task 1 needs the `northwindsupply` database. One command builds it:

```bash
cd assessment-2/task-1
bash db/setup.sh          # Windows PowerShell: .\db\setup.ps1
```

You should see `users = 8, orders = 19`. If you do, your database matches everyone else's. Details and PostgreSQL/MySQL instructions are in [`assessment-2/task-1/db/README.md`](assessment-2/task-1/db/README.md).

The generated `.db` file is gitignored — don't commit it. Everyone builds their own.

## Ground rules

- **Work on your own branch.** Never commit to `main`, never edit someone else's branch.
- **Fill in the files that are already there.** Don't create new files or rename existing ones — the reviewer looks in specific places.
- **Submit real work.** Paste the output your query actually returned. Cite the real commit, the real sprint. Approximated evidence loses the standard faster than an incomplete answer does.
- **Flag what you couldn't finish.** Every submission file has a notes section. Naming a gap honestly is treated as a strength — on Task 2 it's explicitly part of the standard.

Stuck on git rather than on the assessment? The [Common problems](SUBMITTING.md#common-problems) section covers committing to `main` by accident, rejected pushes, and branching off the wrong place.
