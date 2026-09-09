# Architecture

Living structural map of the system as of 2026-09-06.
Overwritten when structural changes occur during a session.

## Overview

GRG-PMM is a teaching repository for the subject Prozessmanagement (PMM, Maturafach) at HTL Spengergasse, Abteilung Wirtschaftsingenieure (Technisches Management & Umwelt). It follows the `lehrplan/`-Konvention des `unterricht`-Skills: alle Lehrplan- und Unterrichtsmaterialien liegen unter `lehrplan/`, daneben ein Self-Study-Workspace (`selbststudium/`) für Georgs R/Statistik-Lernpfad via `teach` skill.

## Directory Layout

| Path | Purpose |
|------|---------|
| `lehrplan/` | Alles Lehrplan-Bezogene (Konvention des `unterricht`-Skills, seit 2026-09-06, #8): `RIS/` (Gesetzestext-PDFs, BGBl. II Nr. 262/2015, ISO-Datum-Präfix), `METADATA.md` (Rechtsgrundlage, RIS-Verweise, Änderungshistorie, Klassen-Zuordnung), `pmm-lehrplan-text.md` (Komplett-Extrakt JG1–JG5), `r4ds-abdeckung.md` (#6), `ressourcen-matrix.md` (#6) |
| `lehrplan/RIS/` | Gesetzestext-PDFs aus dem Rechtsinformationssystem (Lehrplanpaket, Novellen) — einziger Ablageort für RIS-PDFs |
| `lehrplan/4HWIT/` | 4. Jahrgang (generisch, deckt 4AHWIT/4BHWIT ab) — `semesterplan-ws/ss.md`, UE-Ordner (`NN-slug/` in Vorbereitung, `YYYY-MM-DD_thema` mit Datum), `assets/` |
| `lehrplan/5HWIT/` | 5. Jahrgang — gleiche Ordnerkonventionen |
| `lehrplan/kompetenzmodule/` | Didaktische KM-Steckbriefe (km3–km9b + README): Modul-Bedeutung, Praxisrelevanz, Wissen/Verstehen/Können (#6) |
| `docs/ai/` | Structured knowledge files for AI agent persistence |
| `Unterlagen/` | Teaching reference materials and scripts |
| `selbststudium/` | Self-study workspace (teach skill): `MISSION.md`, `RESOURCES.md`, `NOTES.md`, `lessons/`, `learning-records/`, `reference/`, `assets/` |
| `.opencode/skills/` | Project-local opencode skills (teach, grill-me, grilling, handoff, writing-great-skills) |

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
| `README.md` | Public project overview, directory table, RIS references |
| `GLOSSAR.md` | Abbreviations & domain terms with repo context, grouped by domain (school, statistics, DoE, environment/norms, R, licenses, project conventions) |
| `AGENTS.md` | AI agent guidelines, issue workflow, knowledge persistence |

## Key Flows

- Lehrplan (`lehrplan/`) → KM-Steckbriefe (`lehrplan/kompetenzmodule/`) → Semesterpläne (`lehrplan/4HWIT|5HWIT/semesterplan-*.md`) → UE-Material (`NN-slug/praesentation.html` + `hausaufgabe.md`)
- Semesterpläne → Selbststudium-Lektionen (`selbststudium/lessons/`) → Learning Records (`learning-records/`)
- Open-Source-Material-Kanon (`lehrplan/r4ds-abdeckung.md`, `RESOURCES.md`) → Lektüre-Zuweisungen in UE- und Lern-Materialien („link, don't copy", #6)
