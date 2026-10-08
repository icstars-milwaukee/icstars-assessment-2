# Task 3 Submission — Test Plan

**Apprentice name:** Jose Romero
**Date:** 10/8/2026
**System under test:** Riverside Community Association RSVP Portal — `scenario/rsvp-portal/index.html`
**Release context:** v1 in staging, meetup is Saturday October 11, not yet public

### Requirements under test

| ID | Requirement |
| --- | --- |
| REQ-01 | A community member can submit the RSVP form and gets an on-screen confirmation showing what they submitted |
| REQ-02 | Full name and email address are required — the form cannot be submitted without both |
| REQ-03 | The email address must be a valid email format |
| REQ-04 | Number of guests must be a whole number from 0 to 5 |
| REQ-05 | Every RSVP gets its own unique confirmation code, used for door check-in |
| REQ-06 | The confirmation accurately reflects what was entered, including when an optional field is left blank |

---

## 1. Scope

**In scope** — what your testing covers:

>I am testing everything in the requirements (requirements 1-6).

**Out of scope** — what it deliberately does not cover, and why:

>I am not testing anything that is not listed in the requirements.

*(The absence of a backend is a known v1 limitation. If you're putting it out of scope, say so here rather than logging it as a defect.)*

## 2. Environment

| Item | Value |
| --- | --- |
| File / URL under test |http://127.0.0.1:5500/scenario/rsvp-portal/index.html |
| Browser + version |Latest Google Chrome |
| Operating system |Latest Windows 11 |
| Device / screen size |Idk |
| Developer tools used | Chrome developer tools |

## 3. Test data

Literal values, not descriptions. These are the values your reviewer will type in to reproduce your cases. Add rows for whatever else you used.

| Field | Value you used |
| --- | --- |
|Name |Jose Romero|
|Email |jose@example.com |
|Guest |1 |
|Session |Morning (9am) |
|Dietary notes |No fish |

## 4. Entry / exit criteria

**Entry** — what has to be true before testing can start:

>All fields listed above must be present as input fields on the form.

**Exit** — what has to be true before you'd sign this off for Saturday:

>All tests cases must pass.

---

## Test cases

**Copy the block below once for each test case you write.** Number them `TC-001`, `TC-002`, and so on. How many you write, and which requirements you go after, is your call — the traceability matrix further down will show your coverage.

### TC-001 —

| Field | Value |
| --- | --- |
| Test case ID | TC-001 |
| Traces to | REQ- |
| Type | Positive / Negative / Boundary / Validation |
| Priority | High / Medium / Low |
| Preconditions | |
| Test data | |

**Given**
**When**
**Then**

| Step | Action | Expected result |
| --- | --- | --- |
| 1 | | |
| 2 | | |
| 3 | | |

| Field | Value |
| --- | --- |
| Actual result | |
| Status | Not run / Pass / Fail / Blocked |
| Executed by / date | |
| Defect raised | |

---

<!-- ==========================================================================
     Copy everything between these comment markers to add another test case.
     Renumber the ID, and remember to add it to the traceability matrix.

### TC-00N —

| Field | Value |
| --- | --- |
| Test case ID | TC-00N |
| Traces to | REQ- |
| Type | |
| Priority | |
| Preconditions | |
| Test data | |

**Given**
**When**
**Then**

| Step | Action | Expected result |
| --- | --- | --- |
| 1 | | |
| 2 | | |
| 3 | | |

| Field | Value |
| --- | --- |
| Actual result | |
| Status | |
| Executed by / date | |
| Defect raised | |

---

     ========================================================================== -->

## Execution summary

| Status | Count | Cases |
| --- | --- | --- |
| Pass | | |
| Fail | | |
| Blocked | | |
| **Total** | | |

**The meetup is Saturday. Based on your results, would you release this build to the public? Why or why not?**

This is the question a test plan exists to answer. Give a recommendation, not a summary — and if the answer is "not yet," say what specifically has to change first.

>
>

---

## Traceability matrix

Every requirement you tested needs a test case, and every test case needs to point back at a requirement. For rows you didn't cover, write **"not tested"** rather than leaving them blank — an untested requirement is information your reviewer needs, and hiding it is worse than having it.

| Requirement | Test case(s) | Status | Defect |
| --- | --- | --- | --- |
| REQ-01 | | | |
| REQ-02 | | | |
| REQ-03 | | | |
| REQ-04 | | | |
| REQ-05 | | | |
| REQ-06 | | | |

**Which requirements did you leave untested, and why those?**

A deliberate decision not to test something, with a reason, is a legitimate testing choice. Running out of time is also a real answer — say so.

>

---

## Notes (optional)

Anything your reviewer should know — something you noticed but couldn't pin down, a behavior you weren't sure was a defect, a question about the requirements themselves.

Being unsure whether something is a defect is worth writing down. The judgment call is the interesting part.

>

---

## Checklist before you open your pull request

- [ ] Every case is in Given/When/Then format
- [ ] Every case traces to a specific REQ id
- [ ] Every case has literal test data, not a description
- [ ] Every expected result is checkable by someone who didn't write it
- [ ] One behavior per case — no "and" hiding in a **When**
- [ ] My coverage goes beyond the happy path
- [ ] Scope, environment and test data sections filled in
- [ ] Release recommendation answered
- [ ] Traceability matrix complete, with "not tested" where that's the truth
- [ ] Every defect found is logged in `defect-log.md` and referenced here
