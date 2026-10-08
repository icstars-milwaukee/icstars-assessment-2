# Task 2 Submission — SDLC Swimlane Diagram

**Apprentice name:**
**Date:**
**Project:**

---

## Part 1 — The SDLC phases

List the phases in the order they happen. **Add or remove rows as you need** — the number of rows below is not the answer, and working out how many there are is part of the task.

| # | Phase name | What happens in it | What comes out of it |
| --- | --- | --- | --- |
| 1 | Requirements| Review and look over criteria, vision, and needs.| An idea of what the stakeholders want and what to work on. |
| 2 | Design| Creation of plans, rough drafts, lofi wireframes.| Scope of what the product should look like.|
| 3 | Build| Writing code in branches, carifying practices, preparing test environments.| The product in creation for the stakeholder.|
| 4 | Test| Find bugs, test codes, and adress issues within product.| To work out the kinks and find the issues within the product/code.|
| 5 | Demo & Release|Merge to the main branch, finalizing bug fixes, and walkthrough the features. | The finished product and finalization on checks.|
| 6 | | | |

**Does anything happen after the last phase? Say what, and where it goes.**

>

---

## Part 2 — Waterfall swimlane

Fill in **either** the table or the Mermaid diagram. Put your own phase names in — nothing is pre-filled, including how many columns or boxes you need.

### Table version

Replace the blank column headers with your phases. The lanes down the left are a starting suggestion — change them if your project's roles are different.

| Lane (role) |Requirements|Design |Build |Test |Demo/Release | |
| --- | --- | --- | --- | --- | --- | --- |
| Product / BA | Ensuring requirements set from stakeholders and delagating work.| Building the relationship with mentors/stakeholders and continuing to delegate work| Watching over the building and making sure that it meets the expectation of stakeholders needs|Noticing the issues within the work and creating plans to fix/debug | In contact with stakeholders about the progress and finzlization of product| |
| Design | Understand user and stakeholder needs.| Create wireframes, mockups, and prototypes | Support the developers in specific design applications| Make sure that the UI/UX works as intened|Approve the final visual of design before the release of product. | |
| Development |Review requirements and identify technical needs. | Plan the techstack of the product| Write the code and implement features| Fix the bugs and adress the issues found while testing| Merge/deploy code that supports the release| |
| QA |Review requirements for testability and acceptance criteria. |Create test plans and test cases. |Prep the testing environments |Test the product in environments created |Final corrections |Verify the bugs are fixed and product/code is working as planned |
| Ops / Release | | | | | | |

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

>

**Does work ever travel backwards in this model? When, and what does that cost?**

>Work does not move backwards within this model and this costs the feedback area of the work that is being done. So, once something is finished it is finished.

---

## Part 3 — Agile swimlane

The same phases from Part 1. Work out for yourself how the arrangement changes — the structure of this diagram is yours to decide, and the shape of it is most of what's being assessed here.

### Table version

Build the grid yourself. Use whatever columns make the Agile arrangement clear; they do not have to be the same columns you used in Part 2.

| Lane (role) |Requirements |Design | Build|
| --- | --- | --- | --- |
| Product / BA | | | |
| Design | | | |
| Development | | | |
| QA | | | |
| Ops / Release | | | |

### Mermaid version

Same skeleton as Part 2, deliberately. If your Agile diagram ends up looking structurally different from your Waterfall one, that difference is your argument — make it visible here.

```mermaid
flowchart LR
  subgraph PROD["Product / BA"]
    direction TB
    P1["Requirements "]
  end

  subgraph DES["Design"]
    direction TB
    D1[" Design"]
  end

  subgraph DEV["Development"]
    direction TB
    V1["Test/Build "]
  end

  subgraph QAL["QA"]
    direction TB
    Q1["Test/Release&Demo "]
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
