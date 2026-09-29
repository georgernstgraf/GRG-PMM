# AGENTS.md

This document contains operational guidelines for AI agents working in the `GRG-PMM` repository.

---

## 1. Project Overview

This repository contains coursework for **Prozessmanagement (PMM)** at HTL Spengergasse, Abteilung Wirtschaftsingenieure (Technisches Management & Umwelt). (Legacy school-level name: „Projektmanagement und Netzwerktechnik (PMN)" — not the legal subject name.)

## 2. Directory Structure

- `lehrplan/` — Everything curriculum-related, split into **Fach-Ebene** (formunabhängig) and **Zweig-Ebene** (see DECISIONS #21):
  - `METADATA.md` — Legal basis, RIS references, amendment history, class mapping (root)
  - `RIS/` — Legal curriculum PDFs from RIS (BGBl. II Nr. 262/2015), named `YYYY-MM-DD_*.pdf` with ISO-date prefix (Kundmachungsdatum)
  - `kompetenzmodule/` (KM-Steckbriefe KM3–KM9b) + `ressourcen-matrix.md`, `r4ds-abdeckung.md` — **Fach-Ebene** (formunabhängig)
  - `pmm-hwit/` — **Zweig-Ebene**: `LEHRPLAN.md` (complete extract, all Jahrgänge), `RIS.md` (legal status/amendments), `4HWIT/` + `5HWIT/` class extracts, `jg{3,4,5}-semesterplan-{ws,ss}.md` semester plans
- `unterricht/` — Teaching layer (repo root). Prepared units lie **flat** as `<PREFIX>-<NN>-<slug>/` (`KM<#>` = Kompetenzmodul, `SA` = schulautonom; `<NN>` runs per KM) with `praesentation.html` + `hausaufgabe.md` + `lesson.html`. **No Zweig-Fach folder** — semester plans live in `lehrplan/pmm-hwit/`
- `assets/` — **Single shared asset folder** (repo root): CSS, JS (`loader.js`, `quiz.js`, `theme.js`, `github-pages-link.js`, `site.js`), data (`betriebsdaten.csv`). All pages load these via the generic inline bootstrap (no repo name baked in).
- Cohort folders (`4ahwit-x/`, `4ahwit-y/`, `5ahwit/`) hold **dated** lessons `YYYY-MM-DD__thema/lesson.html` (e.g. `4ahwit-y/2026-09-25__r-kennzahlen-und-verteilungen/`); undated lessons are canonical under `unterricht/` (cohort `prepared-lessons/` dissolved 2026-09-28, #20)
- `selbststudium/` — Self-study workspace for learning R and statistics (Teach skill), incl. `prepared-lessons/`
- `index.html`, `serve.sh`, `.nojekyll` — GitHub Pages entry, local live server, Jekyll bypass
- `Unterlagen/` — Reference materials and scripts
- `docs/` — Central documents (project specifications, AI knowledge files)

> Kein `.opencode/`-Verzeichnis im Repo: Alle Skills (global `teach`,
> `create-lesson`, …) werden in `opencode-helpers/skills/` gepflegt und von
> der OpenCode-Instanz per Symlink (`~/.config/opencode/skills`) versorgt.

## 3. File Naming Conventions

- Class lesson folders: `<klasse>/YYYY-MM-DD__thema/` (e.g., `4ahwit-y/2026-09-25__r-kennzahlen-und-verteilungen/`)
  - During curriculum preparation (before teaching dates are known):
    `unterricht/<PREFIX>-<NN>-<slug>/` (`KM<#>` = Kompetenzmodul, `SA` =
    schulautonom; `<NN>` runs per KM) with `lesson.html`; selbststudium keeps
    its four-digit `prepared-lessons/`. Dated lessons live in the date folder
    as `lesson.html`.
- Lowercase with hyphens for multi-word names
- ISO 8601 date prefix for all dated documents

## 3a. HTML Pages (Assets, Bootstrap, Badge)

- **Every** HTML page carries the generic inline bootstrap in `<head>` that
  discovers `assets/loader.js` by walking up the ancestor directories; the
  loader injects the page's CSS/JS (`data-css`, `data-js`) and the
  „Auf GitHub Pages ansehen"-badge. No repo name appears in the mechanism.
- Use the **live server** (`./serve.sh`), not `file://`: Firefox's
  `security.fileuri.strict_origin_policy` blocks cross-directory subresources
  under `file://` (slashes, not dots, are the reason central assets work).
- All non-asset links stay **relative**; do not use `<base>` or root-absolute
  asset paths.

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
- Reference: `lehrplan/METADATA.md` for full legal details

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
global `teach` skill. Use it when the
user wants to learn R, statistics, or any PMM-relevant topic.

- Invoke `/teach` from anywhere in the project to start a learning session
- The skill is hardwired to `selbststudium/` as the workspace root — no `cd` needed
- `selbststudium/MISSION.md` defines the learning goal (R + statistics for teaching PMM)
- `selbststudium/RESOURCES.md` lists curated courses, books, and communities
- `selbststudium/learning-records/` tracks progress across sessions
- `selbststudium/prepared-lessons/` contains generated interactive HTML lessons (four-digit numbering)

## 10. Klassen-Lektionen (Create-Lesson-Skill)

- Bestellformat: `KM/Teil-KM + Ziel-UE + Thema` (z. B.
  „Wiederholung Verteilungen aus KM5 für 4AHWIT UE 4"); Bau nach globalem
  `create-lesson`-Skill (themenfokussierter Kicker, R-Code per Rscript
  verifiziert).
- **Ablage (2026-09-28, #20):** vorbereitete (undatierte) Einheiten liegen
  **flach** unter `unterricht/` als `<PREFIX>-<NN>-<slug>/` (`KM<#>` =
  Kompetenzmodul, `SA` = schulautonom; `<NN>` läuft **pro KM**) mit
  `praesentation.html` + `hausaufgabe.md` + `lesson.html`. Semesterpläne
  liegen in `lehrplan/pmm-hwit/`. Terminierte/abgehaltene Lektionen liegen
  in `<klasse>/YYYY-MM-DD__thema/lesson.html` (Kohorten-`prepared-lessons/`
  wurden aufgelöst).
- **Lesson = immer 90 Minuten** (eine Doppelstunde) — auch Wiederholungen.
- **Quiz ohne harte Obergrenze:** der Skill entscheidet die Fragenzahl selbst,
  so viele wie nötig (nicht mehr 1–5 gedeckelt); Richtige-Positionen rotieren.
- Jede Lektion nutzt die **gemeinsamen Assets** unter `assets/` (Bootstrap +
  Badge), keine eigenen `assets/`-Ordner.
- Selbststudium-Bestand (`selbststudium/prepared-lessons/`, vierstellig) bleibt
  unangetastet — eigene fortlaufende Zählung mit Querverweisen.

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
