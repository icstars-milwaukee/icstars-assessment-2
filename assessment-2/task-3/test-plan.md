# Task 3 Submission — Test Plan

**Apprentice name:** Amir
**Date:** 10/08/2026
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

>

**Out of scope** — what it deliberately does not cover, and why:

>

*(The absence of a backend is a known v1 limitation. If you're putting it out of scope, say so here rather than logging it as a defect.)*

## 2. Environment

| Item | Value |
| --- | --- |
| File / URL under test | |
| Browser + version | |
| Operating system | |
| Device / screen size | |
| Developer tools used | *e.g. Console, Elements — and did the Console show anything?* |

## 3. Test data

Literal values, not descriptions. These are the values your reviewer will type in to reproduce your cases. Add rows for whatever else you used.

| Field | Value you used |
| --- | --- |
| | |
| | |
| | |
| | |
| | |

## 4. Entry / exit criteria

**Entry** — what has to be true before testing can start:

>

**Exit** — what has to be true before you'd sign this off for Saturday:

>

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

### TC-001 — Successful RSVP Submission

| Field | Value |
| --- | --- |
| Test case ID | TC-001 |
| Traces to | REQ-01 |
| Type | Positive |
| Priority | High |
| Preconditions | RSVP form is open |
| Test data | Full Name: Amir Husseini, Email: amir@test.com, Guests: 2 |

**Given** the RSVP form is open

**When** I enter "Amir Husseini", "amir@test.com", and 2 guests and click Submit

**Then** a confirmation message is displayed showing the information I submitted

| Field | Value |
| --- | --- |
| Actual result | Pass|
| Status | done |
| Executed by / date | Amir Husseini |
| Defect raised | |

---

### TC-002 — Full Name Is Required

| Field | Value |
| --- | --- |
| Test case ID | TC-002 |
| Traces to | REQ-02 |
| Type | Validation |
| Priority | High |
| Preconditions | RSVP form is open |
| Test data | Full Name: blank, Email: amir@test.com, Guests: 1 |

**Given** the RSVP form is open

**When** I leave the Full Name field blank and click Submit

**Then** the form should not submit and an error message should be displayed

| Field | Value |
| --- | --- |
| Actual result | Fail |
| Status | Done |
| Executed by / date | Amir Husseini |
| Defect raised | error not displayed and was able to submit |

---

### TC-003 — Invalid Email Address

| Field | Value |
| --- | --- |
| Test case ID | TC-003 |
| Traces to | REQ-03 |
| Type | Validation |
| Priority | High |
| Preconditions | RSVP form is open |
| Test data | Full Name: Amir Husseini, Email: not-an-email, Guests: 1 |

**Given** the RSVP form is open

**When** I enter "not-an-email" in the Email field and click Submit

**Then** the form should not submit and an email validation error should be displayed

| Field | Value |
| --- | --- |
| Actual result | Fail |
| Status | Done |
| Executed by / date | Amir Husseini |
| Defect raised | It failed no error displayed and form was submitted |

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
| REQ-01 | TC-001 | run | None |
| REQ-02 | TC-002 | run | Yes |
| REQ-03 | TC-003 | run | Yes |
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
