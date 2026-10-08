# Task 3 Submission — Test Plan

**Apprentice name:**
**Date:**
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

**In scope** — what these tests cover:

>

**Out of scope** — what they deliberately do not cover, and why:

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

Literal values, not descriptions. These are the values your reviewer will type in to reproduce your cases.

| Field | Value you used |
| --- | --- |
| Full name | |
| Email — valid | |
| Email — invalid | |
| Guests — in range | |
| Guests — out of range | |
| Session | |
| Dietary notes | |

## 4. Entry / exit criteria

**Entry** — what has to be true before testing can start:

>

**Exit** — what has to be true before you'd sign this off for Saturday:

>

---

## Test cases

Three required, covering **at least three different requirements.**

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

### TC-002 —

| Field | Value |
| --- | --- |
| Test case ID | TC-002 |
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

### TC-003 —

| Field | Value |
| --- | --- |
| Test case ID | TC-003 |
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

### TC-004 — *(optional, copy this block for more)*

| Field | Value |
| --- | --- |
| Test case ID | TC-004 |
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

| Field | Value |
| --- | --- |
| Actual result | |
| Status | |
| Executed by / date | |
| Defect raised | |

---

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

Every requirement you tested needs a test case, and every test case needs to point back at a requirement. Fill in the rows you covered; for rows you didn't cover, write "not tested" rather than leaving them blank — an untested requirement is information your reviewer needs.

| Requirement | Test case(s) | Status | Defect |
| --- | --- | --- | --- |
| REQ-01 | | | |
| REQ-02 | | | |
| REQ-03 | | | |
| REQ-04 | | | |
| REQ-05 | | | |
| REQ-06 | | | |

**Which requirements did you leave untested, and why those?**

>

---

## Notes (optional)

Anything your reviewer should know — something you noticed but couldn't pin down, a behavior you weren't sure was a defect, a question about the requirements themselves.

Being unsure whether something is a defect is worth writing down. The judgment call is the interesting part.

>

---

## Checklist before you open your pull request

- [ ] 3 test cases written, covering at least 3 different requirements
- [ ] Every case traces to a specific REQ id
- [ ] Every case has literal test data, not a description
- [ ] Every expected result is checkable by someone who didn't write it
- [ ] One behavior per case — no "and" hiding in a **When**
- [ ] Scope, environment and test data sections filled in
- [ ] Release recommendation answered
- [ ] Traceability matrix complete, including untested rows
- [ ] Every defect found is logged in `defect-log.md` and referenced here
