# Task 3 — Test Plan + Defect Log

**Standards:** QA.SK1, QA.SK2
**Time guide:** 45 minutes

---

## The requirement under test

> **REQ-01:** A user can log in with email + password and see the dashboard.

That one sentence is everything you are given. Part of the work is noticing what it does *not* say.

### Acceptance criteria

| ID | Criterion |
| --- | --- |
| AC 1 | A registered user who submits correct credentials is taken to the dashboard |
| AC 2 | A user who submits incorrect credentials is not logged in and sees an error |
| AC 3 | Submitting the form with a required field empty is blocked and flagged |

## Your assignment

1. **Write 3 test cases** for REQ-01 using the Given/When/Then format.
2. **Log at least one defect** based on this simulated error:

   > **Simulated error:** *Login accepts wrong password.* During testing, a registered user entered a password that was not theirs and was logged in successfully.

## What you submit

Two files, both blank templates waiting in this folder:

| File | What goes in it |
| --- | --- |
| [`test-plan.md`](test-plan.md) | Your 3 test cases, plus scope, environment and a traceability table |
| [`defect-log.md`](defect-log.md) | Your defect log, with the simulated error written up in full |

Fill those in — don't create new files. Reference copies of the blank templates live in [`templates/`](templates) if you wreck your working copy and want a clean one.

---

## Writing a test case

**Given / When / Then** splits a test into three parts:

| Part | What it states |
| --- | --- |
| **Given** | The state the system is in before the test starts |
| **When** | The single action being tested |
| **Then** | The observable outcome you check |

Two rules that catch most people out:

**One behavior per case.** If your **When** contains the word "and," you probably have two test cases.

**The expected result has to be checkable by someone who didn't write the test.** "Login works" is not checkable. "The browser redirects to `/dashboard` and the header shows the user's name" is.

Use literal test data — something like `test.user@example.com` / `Correct-Horse-9281` — not descriptions like "a valid user." Another person has to be able to run your case exactly as written and get the same result.

**Think about what you choose to test.** Three test cases that all check the happy path from slightly different angles will pass cleanly and tell you nothing. Look at the acceptance criteria and ask what could go wrong that a passing test wouldn't catch.

## Logging a defect

A defect report has one job: let someone else reproduce the problem without talking to you. That means every field filled, reproduction steps with real data, and **both** the expected and the actual result — the gap between those two is the entire report.

Two fields people routinely confuse:

| | Means | Who decides |
| --- | --- | --- |
| **Severity** | How bad the impact is if it reaches users | QA |
| **Priority** | How soon it gets fixed relative to other work | Product owner |

They are not the same and they do not always match. A typo in the footer is low severity but could be high priority if it's on a press release. Think about which one the simulated error scores high on, and be ready to defend it.

---

## How this is graded

**Proficient:**
- **At least 3 test cases, each tied to the requirement.** Every case names the specific acceptance criterion it covers.
- **One defect logged with details.** Reproduction steps, expected vs. actual, severity, priority, environment, and owner all present.
- **Captured in the provided template.** Use `test-plan.md` and `defect-log.md` as given.

**Common errors that cost points:**
- Test cases vague or incomplete — no literal test data, or an expected result nobody else could check
- No connection to requirements — cases that don't trace back to REQ-01 or a specific AC
- Defect missing critical fields — most often severity, priority, or the actual-vs-expected pair

---

## Submitting

Work on your own branch and open a pull request. Do not commit to `main`.

```bash
git checkout -b assessment-2/<your-name>
# fill in test-plan.md and defect-log.md
git add .
git commit -m "Task 3: test plan and defect log — <your name>"
git push -u origin assessment-2/<your-name>
```

Full instructions are in [SUBMITTING.md](../../SUBMITTING.md) at the repo root.
