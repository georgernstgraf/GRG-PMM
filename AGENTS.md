# AGENTS.md

This document contains operational guidelines for AI agents working in the `GRG-PMN` repository.

---

## 1. Project Overview

This repository contains coursework for **Projektmanagement und Netzwerktechnik (PMN)** at HTL Spengergasse, Abteilung Wirtschaftsingenieure (Technisches Management & Umwelt).

## 2. Directory Structure

- `4HWIT/` — 4th year class materials (generic year label, covers any parallel class like 4AHWIT/4BHWIT), date-based folders (`YYYY-MM-DD_thema`) and prep-numbered folders (`NN-slug/` during preparation)
- `5HWIT/` — 5th year class materials, same folder conventions
- `kompetenzmodule/` — Didactic KM-Steckbriefe (one Markdown file per Kompetenzmodul, KM3–KM9b): what the module means, why it matters in practice, Wissen/Verstehen/Können
- `selbststudium/` — Self-study workspace for learning R and statistics (Teach skill)
- `.opencode/skills/` — Project-local opencode skills
- `Unterlagen/` — Reference materials and scripts
- `docs/` — Central documents (curriculum, metadata, project specifications)
- `docs/lehrplan/` — Legal curriculum documents from RIS (BGBl. II Nr. 262/2015)

## 3. File Naming Conventions

- Class lesson folders: `YYYY-MM-DD_thema/` (e.g., `2025-09-15_einfuehrung/`)
  - During curriculum preparation (before teaching dates are known):
    `NN-slug/` (e.g., `01-r-grundlagen-datenstrukturen/`). Rename to
    `YYYY-MM-DD_slug/` when the teaching date is fixed.
- Lowercase with hyphens for multi-word names
- ISO 8601 date prefix for all dated documents

## 4. Language

- **Teaching materials:** German
- **Code comments:** German (unless the file uses English consistently)
- **Commit messages:** German (match existing pattern)
- **AGENTS.md and technical docs:** English

## 5. Git Conventions

- Commit messages in German
- Descriptive messages referencing the lesson/topic
- No commit of temporary files, IDE directories, or binary artifacts

## 6. Curriculum Context

The legally mandated curriculum is Anlage 1.28 of BGBl. II Nr. 262/2015. Key structural facts:

- Semester-based Kompetenzmodule (KM 3–9) starting from year 2
- Year 1 and year 5 each treated as a single block (no semester split in KM)
- School-autonomous adaptations allowed within IV. Abschnitt, but no autonomous focus areas
- Reference: `docs/lehrplan/METADATA.md` for full legal details

## 7. Issue Workflow

Every commit must reference a GitHub issue number. Use the `issue-workflow` skill for all issue operations:

- `/issue-start` — begin work, create or fetch an issue, assess the codebase
- `/issue-commit` — save progress with a comment on the issue, commit with issue number, push
- `/issue-finish` — finalize, close the issue, persist knowledge

Before creating any commit:
1. Ensure a relevant issue exists — create one if needed
2. Include the issue number in the commit message (e.g., `Thema: Beschreibung (#1)`)
3. Never commit without an issue reference

## 8. Knowledge Persistence

Session context must be persisted via the `knowledge-persistence` skill. This skill writes to structured knowledge files in `docs/ai/`:

| File | Purpose |
|------|---------|
| `HANDOFF.md` | Open tasks for next session |
| `DECISIONS.md` | Architectural and technical decisions |
| `CONVENTIONS.md` | Coding patterns, naming rules, style agreements |
| `PITFALLS.md` | Hard-won failure knowledge |
| `DOMAIN.md` | Business rules and domain relationships |
| `STATE.md` | Current project status |
| `ARCHITECTURE.md` | Living structural map |

Run knowledge persistence during `/issue-commit` and `/issue-finish`.

## 9. Self-Study (Teach Skill)

The `selbststudium/` directory is a teaching workspace powered by the
project-local `teach` skill (`.opencode/skills/teach/`). Use it when the
user wants to learn R, statistics, or any PMM-relevant topic.

- Invoke `/teach` from anywhere in the project to start a learning session
- The skill is hardwired to `selbststudium/` as the workspace root — no `cd` needed
- `selbststudium/MISSION.md` defines the learning goal (R + statistics for teaching PMM)
- `selbststudium/RESOURCES.md` lists curated courses, books, and communities
- `selbststudium/learning-records/` tracks progress across sessions
- `selbststudium/lessons/` contains generated interactive HTML lessons

## Knowledge Bootstrap
Before starting any task, read the following files in order:
1. `docs/ai/HANDOFF.md` ← **read first, act on it**
2. `docs/ai/CONVENTIONS.md`
3. `docs/ai/DECISIONS.md`
4. `docs/ai/ARCHITECTURE.md`
5. `docs/ai/PITFALLS.md`
6. `docs/ai/STATE.md`
7. `docs/ai/DOMAIN.md` (if task involves business logic)

If `HANDOFF.md` contains open tasks, complete them before starting
any new work unless the user explicitly says otherwise.
