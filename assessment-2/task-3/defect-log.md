# Task 3 Submission — Defect Log

**Apprentice name:**
**Date:**
**System under test:** Riverside Community Association RSVP Portal — `scenario/rsvp-portal/index.html`
**Release context:** v1 in staging, meetup is Saturday October 11, not yet public

> **This build has defects in it.** Finding them is the task — nobody is going to tell you where they are or how many there are. Log every one you find, to the standard below.

---

## Summary table

One row per defect. Add rows as you need them.

| ID | Title | Severity | Priority | Status | Found in | Reported by | Owner | Date found | Linked test case |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| req 1| | | | | | | | | |
| | | | | | | | | | |
| | | | | | | | | | |

---

## Detail blocks

**Copy the block below once for each defect you log.** Number them `DEF-001`, `DEF-002`, and so on, and make sure each one has a matching row in the summary table above.

### DEF-001 —

| Field | Value |
| --- | --- |
| Defect ID | DEF-001 |
| Title | *State the defect as a fact, not a question.* |
| Severity | 1 Critical / 2 Major / 3 Minor / 4 Trivial — *impact if it ships* |
| Severity justification | *Why that level? One sentence. Think about what happens at the door on Saturday.* |
| Priority | P1 / P2 / P3 — *how soon it gets fixed* |
| Priority justification | *The meetup is in three days. Does that change your answer?* |
| Status | New / Triaged / In Progress / Fixed / Verified / Closed |
| Reported by | |
| Date found | |
| Owner | |
| Environment | Browser + version, OS, device |
| Build / file | |
| Linked requirement | REQ- |
| Linked test case | TC- |
| Reproducibility | Always / Intermittent (n of 10) / Once |

#### Steps to reproduce

Numbered, with the literal values you typed. Someone who has never seen this defect must be able to follow these and hit it.

1.
2.
3.
4.

#### Expected result

*What should have happened. Quote the requirement it violates.*

>

#### Actual result

*What actually happened. Be specific — exact on-screen text, not "it didn't work."*

>

#### Evidence

*A screenshot, the exact text you saw, or anything the browser Console showed. Describe what you'd attach.*

>

#### Root cause

*Optional. If you looked at the source and found it, say so — and label it a hypothesis if you're not certain.*

>

#### Fix

*What change would resolve it.*

>

#### Verification

*Who retests, on what build, and what result would close this out.*

>

---

<!-- ==========================================================================
     Copy everything between these comment markers to log another defect.
     Renumber the ID, and add a row to the summary table at the top.

### DEF-00N —

| Field | Value |
| --- | --- |
| Defect ID | DEF-00N |
| Title | |
| Severity | |
| Severity justification | |
| Priority | |
| Priority justification | |
| Status | |
| Reported by | |
| Date found | |
| Owner | |
| Environment | |
| Build / file | |
| Linked requirement | REQ- |
| Linked test case | TC- |
| Reproducibility | |

#### Steps to reproduce

1.
2.
3.

#### Expected result

>

#### Actual result

>

#### Evidence

>

#### Root cause

>

#### Fix

>

#### Verification

>

---

     ========================================================================== -->

## Tracking this log

**What status does a defect move through, and who is allowed to move one to "Verified"?**

>

**How often would this log be reviewed, and what would stop this build going live on Saturday?**

>

**If you logged more than one, which gets fixed first and why?**

Ranking them is the part that makes a log useful to a developer with three days left.

>

---

## Checklist before you open your pull request

- [ ] Every title states the defect as a fact, not a question
- [ ] Steps reproduce it from a clean start, with the literal values I typed
- [ ] Expected **and** actual results both filled in, for every defect
- [ ] Severity and priority both set, each with a justification
- [ ] Environment and browser version recorded
- [ ] Every defect links to a requirement and a test case
- [ ] The linked test cases in `test-plan.md` reference these defects back
- [ ] Summary table matches the detail blocks below it
