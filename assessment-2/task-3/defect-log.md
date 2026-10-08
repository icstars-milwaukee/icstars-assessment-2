# Task 3 Submission — Defect Log

**Apprentice name:**
**Date:**
**Requirement under test:** REQ-01 — *A user can log in with email + password and see the dashboard.*

> **Simulated error to log:** *Login accepts wrong password.* During testing, a registered user entered a password that was not theirs and was logged in successfully.

---

## Summary table

One row per defect. At least one required.

| ID | Title | Severity | Priority | Status | Found in | Reported by | Owner | Date found | Linked test case |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| DEF-001 | | | | | | | | | |

---

## DEF-001 —

| Field | Value |
| --- | --- |
| Defect ID | DEF-001 |
| Title | |
| Severity | 1 Critical / 2 Major / 3 Minor / 4 Trivial — *impact if it ships* |
| Severity justification | *Why that level? One sentence.* |
| Priority | P1 / P2 / P3 — *how soon we fix it* |
| Priority justification | |
| Status | New / Triaged / In Progress / Fixed / Verified / Closed |
| Reported by | |
| Date found | |
| Owner | |
| Environment | OS, browser + version, device |
| Build / commit | |
| Linked requirement | REQ-01 / AC |
| Linked test case | TC- |
| Reproducibility | Always / Intermittent (n of 10) / Once |

### Steps to reproduce

Numbered, with literal test data. Someone who has never seen this defect must be able to follow these and hit it.

1.
2.
3.
4.

### Expected result

*What should have happened. Quote the acceptance criterion it violates.*

>

### Actual result

*What actually happened. Be specific — include observable state, not just "it didn't work."*

>

### Evidence

*Screenshot, log excerpt, request/response pair, or failing test output. Describe what you would attach.*

>

### Root cause

*Leave blank if not investigated. If this is a guess, label it a hypothesis.*

>

### Fix

*What change would resolve it.*

>

### Verification

*Who retests, on what build, and what result closes this out.*

>

### Regression guard

*The automated test that would fail on the broken build and pass on the fix — so this defect cannot come back silently.*

>

---

## Add a second defect block below if you found more than one

<!-- Copy the DEF-001 block, renumber to DEF-002. -->

---

## How you will track this log

Answer in a few sentences:

**What status does a defect move through, and who is allowed to move it to "Verified"?**

>

**How often is this log reviewed, and what would block a sprint from being demoed?**

>

---

## Checklist before you open your pull request

- [ ] Title states the defect as a fact, not a question
- [ ] Steps reproduce it from a clean start, with literal data
- [ ] Expected **and** actual results both filled in
- [ ] Severity and priority both set, each with a justification
- [ ] Environment and build recorded
- [ ] Linked to a requirement and a test case
- [ ] The linked test case in `test-plan.md` references this defect back
