# i.c.stars Assessment 2 — Carl Lewis

Milwaukee · Molson Cycle 21 · 2026-10-08

Artifacts for the three Assessment 2 tasks. Each task folder contains the **setup** template it was worked from, the **artifact** itself, and a flat CSV for import into a tracker.

| Task | Standards | Artifact |
| --- | --- | --- |
| [Task 1 — Agile Backlog Refinement](assessment-2/task-1) | AG.SK2, AG.SK3, AG.SK5 | [`refined-backlog.md`](assessment-2/task-1/refined-backlog.md) |
| [Task 2 — SDLC Diagram](assessment-2/task-2) | SD.KU1, SD.SK1, SD.SK2 | [`sdlc-swimlane.md`](assessment-2/task-2/sdlc-swimlane.md) |
| [Task 3 — Test Plan + Defect Log](assessment-2/task-3) | QA.SK1, QA.SK2 | [`test-plan.md`](assessment-2/task-3/test-plan.md) · [`defect-log.md`](assessment-2/task-3/defect-log.md) |

> Open Task 2 in the GitHub web UI — the swimlane diagrams are Mermaid and render as actual diagrams there. Each one is mirrored as a plain-text table so it stays readable in an editor or a PDF export.

## The three tasks are one continuous thread

They deliberately chain, because that is what a real sprint looks like:

```
Task 1                     Task 3                      Task 2
rough stories      →       acceptance criteria   →     the whole loop,
refined into               become executable           diagrammed and
STORY-101 with             test cases; TC-002          compared against
acceptance criteria        catches DEF-001             Waterfall
```

- `STORY-101` (customer login) is refined from a one-line scribble in **Task 1**.
- Its acceptance criteria convert into test cases `TC-001`–`TC-005` in **Task 3**, where `TC-002` catches `DEF-001` — a Severity-1 authentication bypass that the happy-path test passes straight over.
- **Task 2** maps that same sequence onto the SDLC and shows why catching `DEF-001` inside the sprint, rather than in a Waterfall testing phase months later, is the entire argument for working this way.

Start at [`assessment-2/README.md`](assessment-2/README.md) for the full standard-by-standard evidence map.

## Repo layout

```
assessment-2/
  task-1/   Agile backlog refinement  — rough stories in, sprint-ready backlog out
  task-2/   SDLC diagram              — blank template + completed swimlanes
  task-3/   Test plan + defect log    — blank templates + executed plan and log
.github/
  ISSUE_TEMPLATE/   story, task and defect templates
```

## The issue templates are part of the work

[`.github/ISSUE_TEMPLATE/`](.github/ISSUE_TEMPLATE) holds templates for user stories, tasks, and defects. They exist because every "common error" the assessment warns about — vague stories, missing acceptance criteria, no estimates, defects missing critical fields — is preventable at the moment of filing rather than caught later in review. Filing an issue in this repo forces the fields.

[`assessment-2/task-1/create-issues.sh`](assessment-2/task-1/create-issues.sh) loads the refined backlog into this repo as labeled GitHub issues. It is dry-run by default:

```bash
bash assessment-2/task-1/create-issues.sh          # prints what it would do
APPLY=1 bash assessment-2/task-1/create-issues.sh  # actually creates them
```

## Note on the content

The teammate names in the backlog and defect log (A. Rivera, J. Chen) are placeholder squad members — swap them for the real Cycle 21 team before using any of this as a live sprint plan. `DEF-001` is the simulated defect called for by the Task 3 script, written up as though genuinely found during the sprint.

The project-context section of Task 2 refers to the live [Molson Cycle 21 project repo](https://github.com/icstars-milwaukee/icstars-rfp-molson-cycle21-carl-), which is where the actual application code lives.
