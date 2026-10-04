# Architecture

Living structural map of the system as of 2026-09-29.
Overwritten when structural changes occur during a session.

## Overview

GRG-PMM is a teaching repository for the subject Prozessmanagement (PMM, Maturafach) at HTL Spengergasse, Abteilung Wirtschaftsingenieure (Technisches Management & Umwelt). Its `lehrplan/` follows the skill convention with a **Fach-Ebene** at the root (METADATA, RIS, KM-Steckbriefe, KM-keyed resources) and a **Zweig-Ebene** `pmm-hwit/` (extract, class extracts, semester plans); `unterricht/` holds only flat prepared units. A single shared asset folder (`assets/`) and a self-study workspace (`selbststudium/`) for Georg's R/statistics learning path round it out. All HTML pages load assets through a generic inline bootstrap (repo-name-agnostic) and run via a local **live server** or GitHub Pages (no `file://`).

## Directory Layout

| Path | Purpose |
|------|---------|
| `lehrplan/` | Curriculum layer — **Fach-Ebene** (root): `METADATA.md` (legal basis, RIS refs, amendment history, class mapping), `RIS/` (RIS law-text PDFs only, ISO-date prefix), `kompetenzmodule/` (didactic KM-Steckbriefe km3–km9b), `ressourcen-matrix.md`, `r4ds-abdeckung.md` (KM-keyed resources) |
| `lehrplan/pmm-hwit/` | Curriculum layer — **Zweig-Ebene**: `LEHRPLAN.md` (full extract JG1–JG5), `RIS.md` (legal status/amendments), `4HWIT/`+`5HWIT/` (class extracts), semester plans `jg{3,4,5}-semesterplan-{ws,ss}.md` (`jg3` = Vorwissen-/Selbststudiums-Planung) |
| `unterricht/` | Teaching layer: prepared units **flat at root** as `<PREFIX>-<NN>-<slug>/` (`KM<#>` = Kompetenzmodul, `SA` = schulautonom; `<NN>` runs per KM) each with `praesentation.html` + `hausaufgabe.md` + `lesson.html`. **No Zweig-Fach folder** — plans live in `lehrplan/pmm-hwit/` |
| `assets/` | **Single shared asset folder** (repo root): `lesson.css`, `style.css`, `slides.css`, `theme.js`, `quiz.js` (unified radio widget), `loader.js` (root resolver + injector), `site.js` (per-repo config: Pages base + badge label), `github-pages-link.js` (badge), `betriebsdaten.csv` |
| `4ahwit-x/`, `4ahwit-y/` | Root cohort folders (lowercase = cohort storage). Hub `README.md` + `MISSION/RESOURCES/NOTES.md`, `YYYY-MM-DD__thema/lesson.html` (dated lessons). Undated lessons are canonical under `unterricht/`; cohort `prepared-lessons/` dissolved 2026-09-28 (#20) |
| `5ahwit/` | Root cohort folder in SWP pattern: hub-README + `teach/` (`MISSION/NOTES/RESOURCES`, `reference/`, `learning-records/`), `hausaufgaben/`, date folders; R-On-Ramp lessons referenced from `unterricht/SA-01…SA-03` |
| `selbststudium/` | Self-study workspace (teach skill): `MISSION.md`, `RESOURCES.md`, `NOTES.md`, `prepared-lessons/` (two-digit), `reference/` (glossar, jg3-/km7-verlaufsmap, r-setup), `learning-records/` |
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

- Lehrplan (`lehrplan/`) → KM-Steckbriefe (`lehrplan/kompetenzmodule/`) → Semesterpläne (`lehrplan/pmm-hwit/jg<N>-semesterplan-*.md`) → prepared units (`unterricht/<PREFIX>-<NN>-<slug>/lesson.html`)
- Semesterpläne → Selbststudium-Lektionen (`selbststudium/prepared-lessons/`) → Learning Records (`learning-records/`)
- Semesterplan JG4-WS → prepared units (`unterricht/SA-…`, `unterricht/KM5-…`) ↔ dated cohort lessons (`<klasse>/YYYY-MM-DD__thema/lesson.html`)
- **Master/Kopien (#14):** Master units under `unterricht/` → cohort-specific copies/adaptions in the cohort folder (e.g. `5ahwit/hausaufgaben/`); cohort `prepared-lessons/` dissolved 2026-09-28 (#20)
- All HTML → shared `assets/` via inline bootstrap; badge via `assets/site.js`
- Open-Source material canon (`lehrplan/r4ds-abdeckung.md`, `RESOURCES.md`) → reading assignments („link, don't copy", #6)
