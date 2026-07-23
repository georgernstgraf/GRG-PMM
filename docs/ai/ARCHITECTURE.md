# Architecture

Living structural map of the system as of 2026-07-23.
Overwritten when structural changes occur during a session.

## Overview

GRG-PMN is a teaching repository for the subject Projektmanagement und Netzwerktechnik at HTL Spengergasse. It holds legal curriculum documents, teaching materials, class-specific lesson folders following ISO 8601 date conventions, and a self-study workspace (`selbststudium/`) where Georg learns R/statistics via the `teach` skill.

## Directory Layout

| Path | Purpose |
|------|---------|
| `docs/lehrplan/` | Legal curriculum PDFs from RIS (BGBl. II Nr. 262/2015), METADATA.md, `pmm-lehrplan-text.md` (PMM extract JG1–JG5), `r4ds-abdeckung.md` (R4DS coverage analysis + licenses, #6), `ressourcen-matrix.md` (topic-centric matrix: Lehrplan-Thema ↔ free resources, #6) |
| `docs/ai/` | Structured knowledge files for AI agent persistence |
| `kompetenzmodule/` | Didactic KM-Steckbriefe (km3–km9b + README): module meaning, practice relevance, Wissen/Verstehen/Können (#6) |
| `Unterlagen/` | Teaching reference materials and scripts |
| `4HWIT/` | 4th year class (generic label, covers parallel classes like 4AHWIT/4BHWIT) — lesson folders (`NN-slug/` during prep, `YYYY-MM-DD_thema` once dated) + `assets/slides.css` |
| `5HWIT/` | 5th year class — same folder conventions |
| `selbststudium/` | Self-study workspace (teach skill): `MISSION.md`, `RESOURCES.md`, `NOTES.md`, `lessons/`, `learning-records/`, `reference/`, `assets/` |
| `.opencode/skills/` | Project-local opencode skills (teach, grill-me, grilling, handoff, writing-great-skills) |

## Knowledge Files (`docs/ai/`)

| File | Purpose | Update mode |
|------|---------|------------|
| HANDOFF.md | Open tasks for next session | Overwrite |
| DECISIONS.md | Chronological record of choices | Append; prune superseded → HISTORY.md |
| ARCHITECTURE.md | Living structural map | Overwrite |
| CONVENTIONS.md | Ongoing rules to follow | Append |
| PITFALLS.md | Hard-won failure knowledge | Append |
| DOMAIN.md | Business/domain rules | Append |
| STATE.md | Current project status | Overwrite |
| HISTORY.md | Superseded entries archive | Append-only |

## Top-Level Files

| File | Purpose |
|------|---------|
| `README.md` | Public project overview, directory table, RIS references |
| `AGENTS.md` | AI agent guidelines, issue workflow, knowledge persistence |

## Key Flows

- Lehrplan (docs/lehrplan) → KM-Steckbriefe (`kompetenzmodule/`) → Semesterpläne (`4HWIT|5HWIT/semesterplan-*.md`) → UE-Material (`NN-slug/praesentation.html` + `hausaufgabe.md`)
- Semesterpläne → Selbststudium-Lektionen (`selbststudium/lessons/`) → Learning Records (`learning-records/`)
- Open-Source-Material-Kanon (`r4ds-abdeckung.md`, `RESOURCES.md`) → Lektüre-Zuweisungen in UE- und Lern-Materialien („link, don't copy", #6)
