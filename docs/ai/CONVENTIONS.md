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
