# Architecture

Living structural map of the system as of 2026-09-27.
Overwritten when structural changes occur during a session.

## Overview

GRG-PMM is a teaching repository for the subject Prozessmanagement (PMM, Maturafach) at HTL Spengergasse, Abteilung Wirtschaftsingenieure (Technisches Management & Umwelt). It follows the `lehrplan/` convention (flat layout, single Zweig/Fach — documented deviation) plus a single shared asset folder (`assets/`) and a self-study workspace (`selbststudium/`) for Georg's R/statistics learning path via the `teach` skill. All HTML pages load assets through a generic inline bootstrap (repo-name-agnostic) and run via a local **live server** or GitHub Pages (no `file://`).

## Directory Layout

| Path | Purpose |
|------|---------|
| `lehrplan/` | Curriculum layer (flat, single Zweig/Fach, #19): `LEHRPLAN.md` (full extract JG1–JG5), `RIS.md` (legal status/amendments), `METADATA.md` (legal basis, RIS refs, amendment history, class mapping), `RIS/` (RIS law-text PDFs only, ISO-date prefix), `4HWIT/`+`5HWIT/` (class extracts), `kompetenzmodule/` (didactic KM-Steckbriefe km3–km9b), `ressourcen-matrix.md`, `r4ds-abdeckung.md` |
| `unterricht/HWIT-PMM/` | Teaching layer (repo root) with master files: `jg4-/jg5-semesterplan-{ws,ss}.md`, UE folders (`NN-slug/` preparing, `YYYY-MM-DD_thema` dated), `00-was-kann-r/` |
| `assets/` | **Single shared asset folder** (repo root): `lesson.css`, `style.css`, `slides.css`, `theme.js`, `quiz.js` (unified radio widget), `loader.js` (root resolver + injector), `site.js` (per-repo config: Pages base + badge label), `github-pages-link.js` (badge), `betriebsdaten.csv` |
| `4ahwit-x/`, `4ahwit-y/` | Root cohort folders (lowercase = cohort storage). Teach-workspace at root: `MISSION.md`, `RESOURCES.md`, `NOTES.md`, `README.md` (hub + Lessons table), `prepared-lessons/` (undated lessons 01–03), `YYYY-MM-DD__thema/lesson.html` (dated), `2026-09-22_git_vscode_Rstudio_installation/` (x setup) |
| `5ahwit/` | Root cohort folder in SWP pattern: hub-README + `teach/` (`MISSION/NOTES/RESOURCES`, `prepared-lessons/`, `reference/`, `learning-records/`), `hausaufgaben/`, date folders |
| `selbststudium/` | Self-study workspace (teach skill): `MISSION.md`, `RESOURCES.md`, `NOTES.md`, `prepared-lessons/` (four-digit, grandfathered), `reference/` (glossar, jg3-/km7-verlaufsmap, r-setup), `learning-records/` |
| `index.html` | Landing page for GitHub Pages / local server |
| `serve.sh` | Local live server (repo root) |
| `.nojekyll` | Bypass Jekyll on GitHub Pages |
| `docs/ai/` | Structured knowledge files for AI agent persistence |
| `Unterlagen/` | Teaching reference materials and scripts |
| *(kein `.opencode/`)* | Skills live in `opencode-helpers/skills/`, symlinked via `~/.config/opencode/skills` |

## HTML Page Anatomy (all pages)

1. Generic inline bootstrap in `<head>` (walks ancestor dirs, probes `assets/loader.js`; no repo name).
2. `assets/loader.js` resolves the root from its own URL, injects `data-css`/`data-js`, plus `site.js` and `github-pages-link.js`.
3. Badge „Auf GitHub Pages ansehen" (fixed, `no-print`).
4. All **non-asset** links stay relative; no `<base>`.

## Knowledge Files (`docs/ai/`)

| File | Purpose | Update mode |
|------|---------|------------|
| HANDOFF.md | Open tasks for next session | Overwrite |
| DECISIONS.md | Active decisions still in force | Append; prune superseded → HISTORY.md |
| ARCHITECTURE.md | Living structural map | Overwrite |
| CONVENTIONS.md | Ongoing rules to follow | Append |
| PITFALLS.md | Hard-won failure knowledge | Append |
| DOMAIN.md | Business/domain rules | Append |
| STATE.md | Current project status | Overwrite |
| HISTORY.md | Superseded entries archive | Append-only |

## Top-Level Files

| File | Purpose |
|------|---------|
| `README.md` | Public overview, directory table, usage (serve.sh/Pages), RIS references |
| `GLOSSAR.md` | Abbreviations & domain terms with repo context |
| `AGENTS.md` | AI agent guidelines, directory structure, issue workflow, knowledge persistence |
| `index.html` | Pages landing page |
| `serve.sh` | Local live server |
| `.nojekyll` | Jekyll bypass |

## Key Flows

- Lehrplan (`lehrplan/`) → KM-Steckbriefe (`lehrplan/kompetenzmodule/`) → Semesterpläne (`unterricht/HWIT-PMM/jg<N>-semesterplan-*.md`) → UE-Material (`unterricht/HWIT-PMM/NN-slug/praesentation.html`)
- Semesterpläne → Selbststudium-Lektionen (`selbststudium/prepared-lessons/`) → Learning Records (`learning-records/`)
- Semesterplan JG4-WS → Kohorten-Lektionen (`<klasse>/prepared-lessons/` und `<klasse>/YYYY-MM-DD__thema/lesson.html`) ↔ UE-Material (`unterricht/HWIT-PMM/`)
- **Master/Kopien (#14):** Master in `unterricht/HWIT-PMM/` → copies/adaptions in cohort folder (`5ahwit/hausaufgaben/`, `5ahwit/teach/prepared-lessons/`)
- All HTML → shared `assets/` via inline bootstrap; badge via `assets/site.js`
- Open-Source material canon (`lehrplan/r4ds-abdeckung.md`, `RESOURCES.md`) → reading assignments („link, don't copy", #6)
