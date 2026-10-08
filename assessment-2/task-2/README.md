# Task 2 — SDLC Diagram

**Standards:** SD.KU1, SD.SK1, SD.SK2
**Time guide:** 45 minutes

---

## Your assignment

1. **Map out the phases of the SDLC** on the blank swimlane template provided.
2. **Show where Agile and Waterfall differ.**
3. **Add one note** about how your current project reflects Agile practices.

## What you submit

One file: [`submission.md`](submission.md). It is a blank template with every section marked out. Fill it in — don't create new files.

The template is intentionally empty. Nobody has filled in the phases for you, and the number of blanks is not a hint about how many phases there are — figuring out the phases and their order is the task.

---

## Working on the diagram

The template gives you two formats for each diagram. **Fill in at least one of them** — whichever you're more comfortable with. Doing both is not extra credit.

| Format | Good if |
| --- | --- |
| **Table grid** | You want to type it quickly and be sure it's readable |
| **Mermaid** | You want it to render as an actual diagram on GitHub |

Mermaid is a way of writing a diagram as text, which GitHub turns into a picture automatically when it displays the file. The template includes a skeleton with the lanes already set up, so you fill in the boxes and the arrows rather than learning the syntax from scratch. If it renders as code instead of a diagram, something in the syntax is off — check the [Mermaid flowchart docs](https://mermaid.js.org/syntax/flowchart.html).

**Preview your work before you submit:** push your branch, then open `submission.md` on GitHub in the browser. That's how your reviewer sees it. A Mermaid block that doesn't render looks broken.

## What a swimlane diagram is

A swimlane diagram shows **who does what, when.** Phases run across the top as columns. Roles run down the side as rows — those rows are the "lanes." Each cell says what that role produces during that phase, and arrows show the hand-offs between lanes.

The useful part is what it reveals: which lanes are busy, which are sitting idle, and where work has to stop and wait for a hand-off. Keep that in mind as you fill in the Waterfall version versus the Agile version — the difference between them should be visible in the shape of the diagram, not just in your notes.

---

## How this is graded

**Proficient:**
- **5 or more phases, in the correct order.** Both the names and the sequence are being assessed.
- **Agile and Waterfall clearly distinguished.** A reader should be able to tell which is which and say what actually differs — not just that one is "faster."
- **Connected to your team's actual project.** Name real things: your repo, your sprint, a specific commit, a specific story or defect. Generic statements like "we use Agile" earn nothing.

**Common errors that cost points:**
- Phases missing or out of order
- No Agile vs. Waterfall distinction
- No project context — the diagram floats free of any real work

---

## Submitting

Work on your own branch and open a pull request. Do not commit to `main`.

```bash
git checkout -b assessment-2/<your-name>
# fill in submission.md
git add .
git commit -m "Task 2: SDLC diagram — <your name>"
git push -u origin assessment-2/<your-name>
```

Full instructions are in [SUBMITTING.md](../../SUBMITTING.md) at the repo root.
