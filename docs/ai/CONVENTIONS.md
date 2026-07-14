# Conventions

Coding patterns, naming rules, and style agreements for this project.
Follow these without question. Do not deviate unless explicitly told.

## Naming
- Class lesson folders: `YYYY-MM-DD_thema/` (lowercase, hyphens for multi-word names)
- Legal PDFs: `YYYY-MM-DD_BGBl-II-NNN_Anlage-X.XX_…pdf`
- Readable, descriptive names; no abbreviations unless domain-standard

## Language
- Teaching materials: German
- Code comments: German
- Commit messages: German
- AGENTS.md and technical docs: English
- `docs/ai/` knowledge files: English

## Git
- Every commit must reference a GitHub issue number (e.g., `Thema: Beschreibung (#1)`)
- Use the `issue-workflow` skill for all commits
- No commit of temporary files, IDE directories, or binary artifacts
- Push only the current branch

## Repo Structure
- Legal documents: `docs/lehrplan/`
- Knowledge persistence: `docs/ai/`
- Reference materials: `Unterlagen/`
- Class materials: `4AHWIT/`, `5AHWIT/`
- Each class folder may have its own `README.md`

## Date Format
- All dates in filenames: ISO 8601 (`YYYY-MM-DD`)

## Quizzes & Prüfungsfragen (Answers gut mischen)
Answers in every quiz or exam MUST be well-shuffled. Never leave a predictable
pattern a student could exploit. Specifically:

- **Vary the correct-option position.** The correct letter (A/B/C/D) must cycle
  through all positions across consecutive questions — never cluster on one
  letter (the classic bug: "D is always wrong" or "C is always right").
- **Vary the number of correct answers** in multiple-correct questions (1–4
  correct, not always exactly 3). Include at least a few 1-correct, 2-correct,
  and 4-correct (all correct) questions across a longer exam.
- **Shuffle option order per question**, not just the distractor list. Place
  the single wrong option at different positions (A, B, C, D) across questions.
- **Verify after generation.** For generated exam files, run a consistency
  check (e.g. Python) that the correct-answer positions are distributed across
  A/B/C/D and the correct-count varies — before committing.

Applies to: `knowledge-exam` outputs (Multiple-Correct, `*_solutions.md`) AND
teach-skill lesson quizzes (`quiz.js`, single-correct) in `selbststudium/`.
