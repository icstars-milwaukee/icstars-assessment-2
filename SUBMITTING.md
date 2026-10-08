# How to submit Assessment 2

You submit by **creating a branch and opening a pull request.** Do not commit to `main` — `main` holds the blank assessment, and it stays blank.

Everything you write goes on your own branch, named after you. All three tasks go on the **same** branch and into the **same** pull request.

---

## Step by step

### 1. Clone the repo (once)

```bash
git clone https://github.com/icstars-milwaukee/icstars-assessment-2.git
cd icstars-assessment-2
```

### 2. Create your branch

Use your own name. Lowercase, hyphens instead of spaces.

```bash
git checkout -b assessment-2/jordan-smith
```

Check you're on it before you type anything else:

```bash
git branch --show-current
```

If that prints `main`, stop and run the `checkout -b` command again.

### 3. Do the work

Fill in the files that are already there. Don't create new ones, don't rename anything, and don't edit another apprentice's branch.

| Task | Files you edit |
| --- | --- |
| [Task 1](assessment-2/task-1) — SQL JOIN query | `query.sql`, `submission.md` |
| [Task 2](assessment-2/task-2) — SDLC diagram | `submission.md` |
| [Task 3](assessment-2/task-3) — Test plan + defect log | `test-plan.md`, `defect-log.md` |

Each task folder has its own README with the assignment and the grading criteria. Read it first.

Two things not to commit:

- **`northwindsupply.db`** — gitignored on purpose. Everyone builds their own from `setup.sql`.
- **Any change to `scenario/rsvp-portal/index.html`** — Task 3 assesses that app. If you modify it, your findings stop being reproducible by your reviewer, and the reviewer checks. If you've edited it by accident: `git checkout scenario/`

### 4. Commit as you go

Commit after each task rather than all at once at the end. If something goes wrong, you lose one task's work instead of three.

```bash
git add .
git commit -m "Task 1: SQL JOIN query"
```

### 5. Push your branch

```bash
git push -u origin assessment-2/jordan-smith
```

After the first push, later pushes are just `git push`.

### 6. Open your pull request

Go to the [repo on GitHub](https://github.com/icstars-milwaukee/icstars-assessment-2). A banner appears offering to open a pull request from your branch — click **Compare & pull request**.

| Field | What to put |
| --- | --- |
| Base | `main` |
| Compare | your branch |
| Title | `Assessment 2 — Jordan Smith` |

A checklist loads into the description automatically. Work through it and tick what you've done. If something is incomplete, say so in the PR rather than leaving the box ticked — an honest gap reads better than a false claim, and your reviewer will check.

### 7. Check your own work in the browser

Open the **Files changed** tab on your pull request. This is exactly what your reviewer sees.

- Does every file you were supposed to edit show up?
- Did Task 2's Mermaid diagram render as a picture, or as a block of code? Click through to the file itself to see it rendered.
- Do your tables line up, or did a missing `|` break them?

Fixing these now is free. Leave them and they cost you points.

### 8. You're submitted

Leave the pull request open. Your reviewer will comment there. If they ask for changes, push more commits to the same branch — the pull request updates itself, and you don't open a new one.

---

## Common problems

**"I committed to `main` by accident."** Don't panic and don't force-push. Make your branch from where you are, then reset `main` back:

```bash
git checkout -b assessment-2/your-name   # your commits come with you
git checkout main
git reset --hard origin/main             # main goes back to blank
git checkout assessment-2/your-name
```

**"`git push` was rejected."** You most likely have no upstream set yet. Use the `-u` form from step 5.

**"I can't push to `main`."** Correct — that's intentional. Push your own branch.

**"Someone else's work is showing up in my pull request."** You branched off their branch instead of `main`. Start over from `main`:

```bash
git checkout main
git pull
git checkout -b assessment-2/your-name
```

**"I need to change something after opening the PR."** Just commit and push to the same branch. The PR picks it up automatically.

---

## What gets graded

Each task's README lists its own proficiency criteria and the common errors that cost points. Read those before you start — they tell you exactly what the reviewer is looking for.

Two things apply across all three tasks:

- **Show real work.** Paste the output your query actually returned. Cite the real commit, the real sprint. Invented or approximated evidence is the fastest way to lose a standard.
- **Flag your gaps.** If you couldn't finish something or weren't sure, write that down in the task's notes section. Naming a gap honestly is treated as a strength — on Task 2 it's explicitly part of the standard.
