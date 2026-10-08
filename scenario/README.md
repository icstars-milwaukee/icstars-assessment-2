# Scenario — Riverside Community Association RSVP Portal

**Used by:** [Task 3](../assessment-2/task-3) — Test Plan + Defect Log

This is the system you'll be testing. Read this page once, open the app, click around — then go do Task 3.

---

## The client

**Riverside Community Association** runs a quarterly community meetup at Riverside Civic Hall. Until now, RSVPs came in by phone and were tracked on a paper clipboard at the front desk. Two meetups ago they ran out of chairs, and last meetup they double-booked the kitchen because nobody had counted the dietary requests.

They asked for a web form.

## The project

A small RSVP portal for the **Saturday, October 11** meetup. Attendees fill in a form, submit it, and get an on-screen confirmation with a code to show at the door.

**Where the project is right now:** version 1 is built and deployed to staging. It has **not** been released to the public yet, and the meetup is in three days. You are the QA pass standing between this build and real community members using it.

## The app

**[`rsvp-portal/index.html`](rsvp-portal/index.html)**

Open it in your browser — double-click the file, or drag it into a browser window. There's no server to run, no install, nothing to build. It's a single self-contained HTML file.

Everything runs in the browser. There is no backend yet, which is a known limitation of v1 and not something to report as a defect.

## What the client asked for

These are the requirements as the product owner wrote them. They are your basis for testing — when you're deciding whether something is a defect, this is the list you check against.

| ID | Requirement |
| --- | --- |
| **REQ-01** | A community member can fill in the RSVP form and submit it, and gets an on-screen confirmation showing what they submitted |
| **REQ-02** | **Full name** and **email address** are required. The form cannot be submitted without both. |
| **REQ-03** | The email address must be a valid email format, so confirmations and reminders can actually reach people |
| **REQ-04** | **Number of guests** must be a whole number from **0 to 5**. The hall's capacity depends on this number being real. |
| **REQ-05** | Every RSVP gets **its own unique confirmation code**, used to check that person in at the door |
| **REQ-06** | The confirmation accurately reflects what was entered — including when an optional field is left blank |

### Notes on the requirements

**Session is optional.** The client decided not to force a session choice; people who haven't decided can RSVP anyway. But REQ-06 still applies — leaving it blank has to produce a sensible confirmation.

**Dietary notes are optional.** Same.

**The confirmation code is for door check-in.** A volunteer at the door reads a code off someone's phone and ticks them off a list. REQ-05 exists because that process doesn't work if codes aren't unique to a person.

---

## Using this scenario

The app is your system under test for [Task 3](../assessment-2/task-3). Open it, exercise it against the six requirements above, and write up what you find in a test plan and a defect log. Full instructions are in the [Task 3 README](../assessment-2/task-3/README.md).

This scenario is not used by Tasks 1 or 2.

---

## Ground rules

**Don't modify `index.html`.** You're assessing it, not fixing it. If you change the app, your findings stop being reproducible by your reviewer, and the reviewer checks.

**Use the browser's developer tools.** Right-click → Inspect, or F12. The Console and Network tabs will tell you things that clicking alone won't. If you've never opened them before, this is a good moment to learn — it's a QA skill in its own right.

**Reading the source is fair game.** It's a single file and you're allowed to open it in your editor. Finding something in the code still means writing it up as a defect you can reproduce in the browser — a reviewer has to be able to follow your steps and see it happen, not just take your word for what line 228 says.
