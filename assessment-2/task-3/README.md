# Task 3 — Test Plan + Defect Log

**Standards:** QA.SK1, QA.SK2
**System under test:** [Riverside Community Association RSVP Portal](../../scenario)
**Time guide:** 45 minutes

---

## The situation

Riverside Community Association's RSVP portal is built and sitting in staging. The meetup is **Saturday, October 11 — three days away.** It has not been released to the public yet.

You're the QA pass standing between this build and real community members using it.

**Read the [scenario brief](../../scenario/README.md) first**, then open the app:

**[`scenario/rsvp-portal/index.html`](../../scenario/rsvp-portal/index.html)** — double-click it, or drag it into a browser window. No server, no install.

## The requirements you're testing against

| ID | Requirement |
| --- | --- |
| **REQ-01** | A community member can fill in the RSVP form and submit it, and gets an on-screen confirmation showing what they submitted |
| **REQ-02** | **Full name** and **email address** are required. The form cannot be submitted without both. |
| **REQ-03** | The email address must be a valid email format, so confirmations and reminders can actually reach people |
| **REQ-04** | **Number of guests** must be a whole number from **0 to 5** |
| **REQ-05** | Every RSVP gets **its own unique confirmation code**, used to check that person in at the door |
| **REQ-06** | The confirmation accurately reflects what was entered — including when an optional field is left blank |

Session and dietary notes are **optional** by design. There is no backend in v1 — that's a known limitation, not a defect.

---

## Your assignment

### 1. Write test cases

In Given/When/Then format, in [`test-plan.md`](test-plan.md), each one traced to a requirement.

**How many and which ones is your call** — and it's part of what's being assessed. There are six requirements. Decide what needs testing to be able to stand behind a release decision on Saturday, and be ready to defend what you chose to cover and what you left alone. The traceability matrix at the end of the template will make your coverage obvious either way, including the gaps.

### 2. Log the defects you find

In [`defect-log.md`](defect-log.md), each one written up in full.

**This build has defects in it.** Finding them is the task — nobody is going to tell you where they are or how many there are. A log with nothing in it means either the build is perfect or the testing wasn't thorough, and your reviewer will know which.

Log everything you find, to the same standard, however many that turns out to be.

## What you submit

| File | What goes in it |
| --- | --- |
| [`test-plan.md`](test-plan.md) | Your test cases, plus scope, environment, a release recommendation and a traceability table |
| [`defect-log.md`](defect-log.md) | Your defect log |

Fill those in — don't create new files. Clean reference copies of both templates are in [`templates/`](templates) if you wreck your working copy.

---

## How to test a form like this

**Try to break it, not to use it.** Anyone can fill the form in correctly. Submit it empty. Put `99` in the guests field. Put `not-an-email` in the email field. Leave the session on "-- Select a session --" and read what the confirmation says. A test that passes tells you less than one that fails.

**Open developer tools.** Right-click → Inspect, or F12. The Console tab shows JavaScript errors you'd otherwise never see; the Elements tab lets you watch the page change as you submit. Never opened them? Now's the moment — it's a QA skill in itself.

**Check the app's promises against its behavior.** The form makes claims in its own labels and hint text. "0–5 allowed" under the guests field is a promise. The red `*` next to a label is a promise. Check each one, one at a time.

**Read what the confirmation actually says**, character by character, against what you typed. Not "looks right" — *is* it right?

**Submit more than once.** Some things only go wrong the second time. The "Submit another" link is there; use it.

**Reading the source is fair game.** It's one file; open it in your editor. But a defect you found in the code still has to be written up with browser steps your reviewer can follow — "line 228 hardcodes it" isn't a reproduction, it's a root cause.

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

**The expected result has to be checkable by someone who didn't write the test.** "The form works" is not checkable. "The confirmation panel shows `Guests: 3` and the form card is hidden" is.

Use literal test data — `Jordan Ellis` / `jordan@example.com` / `3` — not descriptions like "a valid attendee." Another person has to run your case exactly as written and get the same result.

## Logging a defect

A defect report has one job: let someone else reproduce the problem without talking to you. Every field filled, reproduction steps with real data, and **both** expected and actual results — the gap between those two *is* the report.

Two fields people routinely confuse:

| | Means | Who decides |
| --- | --- | --- |
| **Severity** | How bad the impact is if it reaches users | QA |
| **Priority** | How soon it gets fixed relative to other work | Product owner |

They are not the same and they don't always match. Think about the three-days-to-the-event context when you set priority — and be ready to defend both numbers. A defect that merely looks untidy and one that sends 40 unexpected people to a hall with 30 chairs are not the same severity, even if both are one-line fixes.

If you log more than one, rank them. A developer with three days left needs to know what to fix first.

---

## How this is graded

**Proficient:**
- **Test cases in Given/When/Then format, each tracing to a specific requirement.** Enough coverage to support the release decision you make.
- **Defects logged with details.** Reproduction steps, expected vs. actual, severity, priority, environment, and owner all present on each one.
- **Captured in the provided template.** Use `test-plan.md` and `defect-log.md` as given.

**Common errors that cost points:**
- Test cases vague or incomplete — no literal test data, or an expected result nobody else could check
- No connection to requirements — cases that don't trace back to a REQ id
- Defect missing critical fields — most often severity, priority, or the expected/actual pair
- Coverage that only exercises the happy path

**Going beyond proficient:** thorough coverage, defects nobody pointed you at, severity you can justify, and a release recommendation you can defend.

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

Don't commit changes to `scenario/rsvp-portal/index.html` — you're assessing it, not fixing it.

Full instructions are in [SUBMITTING.md](../../SUBMITTING.md) at the repo root.
