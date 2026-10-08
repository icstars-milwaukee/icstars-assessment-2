# Task 3 Submission — Test Plan

**Apprentice name:**
**Date:**
**Requirement under test:** REQ-01 — *A user can log in with email + password and see the dashboard.*

---

## 1. Scope

**In scope** — what these tests cover:

>

**Out of scope** — what they deliberately do not cover, and why:

>

## 2. Environment

| Item | Value |
| --- | --- |
| Environment / URL | |
| Browser + version | |
| Device / screen size | |
| Build or commit under test | |

## 3. Test data

Literal values, not descriptions.

| Field | Value |
| --- | --- |
| Valid email | |
| Valid password | |
| Wrong password | |
| Unregistered email | |

## 4. Entry / exit criteria

**Entry** — what has to be true before testing can start:

>

**Exit** — what has to be true before you'd call REQ-01 tested:

>

---

## Test cases

Three required. Copy the block for a fourth if you want one.

### TC-001 —

| Field | Value |
| --- | --- |
| Test case ID | TC-001 |
| Traces to | REQ-01 / AC |
| Type | Positive / Negative / Boundary / Security |
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
| Traces to | REQ-01 / AC |
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
| Traces to | REQ-01 / AC |
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

## Execution summary

| Status | Count | Cases |
| --- | --- | --- |
| Pass | | |
| Fail | | |
| Blocked | | |
| **Total** | | |

**Can REQ-01 be accepted based on these results? Why or why not?**

>

---

## Traceability matrix

Every acceptance criterion needs at least one test case, and every test case needs to point back at a criterion. A gap in either direction is a hole in your plan — if you find one, say so rather than hiding it.

| Requirement / AC | Criterion | Test case(s) | Status | Defect |
| --- | --- | --- | --- | --- |
| REQ-01 / AC 1 | | | | |
| REQ-01 / AC 2 | | | | |
| REQ-01 / AC 3 | | | | |

**Any criterion with no coverage, or any gap you noticed in the requirement itself:**

>

---

## Checklist before you open your pull request

- [ ] 3 test cases written, each tracing to a specific AC
- [ ] Every case has literal test data, not a description
- [ ] Every expected result is checkable by someone who didn't write it
- [ ] One behavior per case — no "and" hiding in a **When**
- [ ] Scope, environment and test data sections filled in
- [ ] Traceability matrix complete
- [ ] Any defect found is logged in `defect-log.md` and referenced here
