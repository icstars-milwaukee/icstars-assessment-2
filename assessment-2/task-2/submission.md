# Task 2 Submission — SDLC Swimlane Diagram

**Apprentice name:**
**Date:**
**Project:**

---

## Part 1 — The SDLC phases

List the phases in the order they happen. **Add or remove rows as you need** — the number of rows below is not the answer, and working out how many there are is part of the task.

| # | Phase name | What happens in it | What comes out of it |
| --- | --- | --- | --- |
| 1 |Planning |define the problems, goals, scope, resources and timeline. | project plan|
| 2 |Requirments |idnetify what the software needs and what users need | requirments/userstories|
| 3 |design |design how the software, database and users interface will be structred. |design/system set up |
| 4 | development|developers write and build the software |working code |
| 5 |testing |test the software and find defects or problems |test results / defect reports |
| 6 |deployment |release the software so users can use it  | deployed software |

**Does anything happen after the last phase? Say what, and where it goes.**

> Maintenece, you need to constantly fix bugs and improve software by doing updates to fixes.

---

## Part 2 — Waterfall swimlane

Fill in **either** the table or the Mermaid diagram. Put your own phase names in — nothing is pre-filled, including how many columns or boxes you need.

### Table version

Replace the blank column headers with your phases. The lanes down the left are a starting suggestion — change them if your project's roles are different.

| Lane (role) | planning | requirments | design | development | testing | deployment |
| --- | --- | --- | --- | --- | --- | --- |
| Product / BA | define project goals and scope | gather and document requirments | review deisgn | gather feedback |
| Design | create system design or UI |
| Development | writes and builds software |
| QA | test the software and identify defects | regression testing |
| Ops / Release | deploy/release the software | monitor and maintain the release |

Leave a cell blank if that role is genuinely idle at that point. Idle cells are information, not gaps.

### Mermaid version

Replace every `" "` with your own content. **Add, remove, and rearrange nodes and arrows as your diagram requires** — this skeleton is scaffolding for the syntax, not a map of the right answer. Label the arrows with what gets handed off.

```mermaid
flowchart LR
  subgraph PROD["Product / BA"]
    direction TB
    P1[" "]
  end

  subgraph DES["Design"]
    direction TB
    D1[" "]
  end

  subgraph DEV["Development"]
    direction TB
    V1[" "]
  end

  subgraph QAL["QA"]
    direction TB
    Q1[" "]
  end

  subgraph OPS["Ops / Release"]
    direction TB
    O1[" "]
  end

  P1 -->|" "| D1
  D1 -->|" "| V1
  V1 -->|" "| Q1
  Q1 -->|" "| O1
```

### How work moves through this diagram

**Where does work have to stop and wait for approval before it can continue? Mark those points on your diagram and list them here.**

> In Waterfall work may have to wait for approval after requirements and design before the next phase can begin. Development may not begin until the requirements and design have been reviewed and approved.

**Does work ever travel backwards in this model? When, and what does that cost?**

>Yes. If maintenance finds a problem with the requirements or design, the team may have to go back to an earlier phase like testing. This can cause delays because completed work may need to be changed and later phases might need to be repeated.

---

## Part 3 — Agile swimlane

The same phases from Part 1. Work out for yourself how the arrangement changes — the structure of this diagram is yours to decide, and the shape of it is most of what's being assessed here.

### Table version

Build the grid yourself. Use whatever columns make the Agile arrangement clear; they do not have to be the same columns you used in Part 2.

| Lane (role) | sprint 1 | sprint 2 | sprint 3 |
| --- | --- | --- | --- |
| Product / BA | prioritize requirements and user stories | review feedback and prioritize next work  |Prioritize next stories and improvements  |
| Design | design Sprint 1 feature  |build Sprint 2 feature |build Sprint 3 feature |
| Development | | | |
| QA | | | |
| Ops / Release | | | |

### Mermaid version

Same skeleton as Part 2, deliberately. If your Agile diagram ends up looking structurally different from your Waterfall one, that difference is your argument — make it visible here.

```mermaid
flowchart LR
  subgraph PROD["Product / BA"]
    direction TB
    P1[" "]
  end

  subgraph DES["Design"]
    direction TB
    D1[" "]
  end

  subgraph DEV["Development"]
    direction TB
    V1[" "]
  end

  subgraph QAL["QA"]
    direction TB
    Q1[" "]
  end

  subgraph OPS["Ops / Release"]
    direction TB
    O1[" "]
  end

  P1 -->|" "| D1
  D1 -->|" "| V1
  V1 -->|" "| Q1
  Q1 -->|" "| O1
```

### How work moves through this diagram

**Where does work stop and wait here, if anywhere? How does that compare to Part 2?**

>

**Which lanes are busy at the same time, and which sit idle?**

>

---

## Part 4 — Where Agile and Waterfall differ

**Decide for yourself which dimensions are worth comparing.** Three starters are filled in to show the format; name the rest yourself. Aim for at least six rows total — the ones you choose say as much as the ones you fill in.

| Dimension | Waterfall | Agile |
| --- | --- | --- |
| Phase sequence | | |
| How requirements are treated | | |
| Documentation | | |
| | | |
| | | |
| | | |
| | | |
| | | |

**In one or two sentences — what is the single most important difference, and why does it matter?**

>

**Name a project where Waterfall would be the better choice, and say why.**

Neither model is a mistake. Knowing when each one fits is the point of comparing them.

>

---

## Part 5 — How our current project reflects Agile practices

Required. Name **specific, real** things from your project: the repo, the branch, a commit, a sprint, a story, a defect, a ceremony you actually attended. A reviewer should be able to go look at what you cite.

>
>
>

**Where is your project *not* yet fully Agile?** Naming an honest gap is part of the standard, not a deduction.

>

---

## Checklist before you open your pull request

- [ ] Phases listed, and I checked the order
- [ ] Every phase has a description and a named output
- [ ] I answered what happens after the last phase
- [ ] Waterfall diagram filled in — table or Mermaid
- [ ] Agile diagram filled in — table or Mermaid
- [ ] I answered the "how work moves" questions under both diagrams
- [ ] Comparison table has at least six rows, with dimensions I chose
- [ ] Project note names specific real things, not generalities
- [ ] I pushed my branch and viewed this file on GitHub to confirm it renders
