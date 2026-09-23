# Architecture

Living structural map of the system as of 2026-09-16.
Overwritten when structural changes occur during a session.

## Overview

GRG-PMM is a teaching repository for the subject Prozessmanagement (PMM, Maturafach) at HTL Spengergasse, Abteilung Wirtschaftsingenieure (Technisches Management & Umwelt). It follows the `lehrplan/`-Konvention des `unterricht`-Skills: alle Lehrplan- und Unterrichtsmaterialien liegen unter `lehrplan/`, daneben ein Self-Study-Workspace (`selbststudium/`) für Georgs R/Statistik-Lernpfad via `teach` skill.

## Directory Layout

| Path | Purpose |
|------|---------|
| `lehrplan/` | Alles Lehrplan-Bezogene (lehrplan-Skill-Konvention, seit 2026-09-06 #8; Zweig-Layout seit 2026-09-10): `RIS/` (Gesetzestext-PDFs, BGBl. II Nr. 262/2015, ISO-Datum-Präfix), `METADATA.md` (Rechtsgrundlage, RIS-Verweise, Änderungshistorie, Klassen-Zuordnung), `pmm-hwit/` (Zweig-Ordner: `LEHRPLAN.md` Komplett-Extrakt JG1–JG5, Klassen-Extrakte `4HWIT/`+`5HWIT/`, `kompetenzmodule/`, `r4ds-abdeckung.md` #6, `ressourcen-matrix.md` #6) |
| `lehrplan/RIS/` | Gesetzestext-PDFs aus dem Rechtsinformationssystem (Lehrplanpaket, Novellen) — einziger Ablageort für RIS-PDFs |
| `lehrplan/pmm-hwit/4HWIT/`, `lehrplan/pmm-hwit/5HWIT/` | Klassen-Extrakte (`<KLASSE>.lehrplan.md` + README), generisch (4AHWIT/4BHWIT bzw. 5AHWIT/5BHWIT) |
| `lehrplan/pmm-hwit/kompetenzmodule/` | Didaktische KM-Steckbriefe (km3–km9b + README): Modul-Bedeutung, Praxisrelevanz, Wissen/Verstehen/Können (#6) |
| `unterricht/HWIT-PMM/` | Unterrichts-Ebene (Repo-Root, seit 2026-09-10) mit **Master-Dateien**: `jg4-/jg5-semesterplan-{ws,ss}.md`, UE-Ordner (`NN-slug/` in Vorbereitung, `YYYY-MM-DD_thema` mit Datum), `00-was-kann-r/` (Werkzeug-Überblicksfolie, #13), `assets/` (slides.css, betriebsdaten.csv #14) |
| `5ahwit/` | Root-Klassenordner (klein = Kohorten-Ablage): Klassenhub-README (UE-Tabelle, Log) + `teach/`-Unterordner im SWP-Muster (`GRG-SWP/3ahwii/teach/`, #14): MISSION/NOTES/RESOURCES, `assets/`, `lessons/01–03` (R-On-Ramp vor KM9a), `reference/` (Glossar + Cheatsheet), `learning-records/`; `hausaufgaben/` = adaptierte Master-Kopien |
| `4ahwit-x/`, `4ahwit-y/` | Root-Klassenordner der 4AHWIT-Kohorten (Teilung große Klasse, 2(1)-Splitstunde, #13). Kohorte x = Teach-Workspace im Legacy-Layout (Workspace-Dateien am Ordner-Root): `MISSION.md`, `RESOURCES.md`, `NOTES.md`, `assets/lesson.css`+`assets/quiz.js`, `lessons/NN-slug.html`. Harmonisierung auf SWP-Muster offen. Kohorte y = byte-identischer Spiegel von x (Lessons-Tabelle im README, #15) |
| `docs/ai/` | Structured knowledge files for AI agent persistence |
| `Unterlagen/` | Teaching reference materials and scripts |
| `selbststudium/` | Self-study workspace (teach skill): `MISSION.md`, `RESOURCES.md`, `NOTES.md`, `lessons/`, `learning-records/`, `reference/`, `assets/` |
| *(kein `.opencode/`)* | Alle Skills liegen in `opencode-helpers/skills/` und werden per Symlink (`~/.config/opencode/skills`) versorgt — seit #16 kein `.opencode/`-Verzeichnis im Repo |

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

- Lehrplan (`lehrplan/`) → KM-Steckbriefe (`lehrplan/pmm-hwit/kompetenzmodule/`) → Semesterpläne (`unterricht/HWIT-PMM/jg<N>-semesterplan-*.md`) → UE-Material (`unterricht/HWIT-PMM/NN-slug/praesentation.html` + `hausaufgabe.md`)
- Semesterpläne → Selbststudium-Lektionen (`selbststudium/lessons/`) → Learning Records (`learning-records/`)
- Semesterplan JG4-WS → Kohorten-Lektionen (`4ahwit-x/lessons/`, teach-Stil) ↔ UE-Material (`unterricht/HWIT-PMM/NN-slug/`, verlinkt wechselseitig)
- **Master/Kopien (#14):** Master in `unterricht/HWIT-PMM/` → Kopien + Adaptionen im Kohortenordner (`5ahwit/hausaufgaben/`, `5ahwit/teach/lessons/`) — Master-Dateien bleiben unangetastet
- Semesterplan JG5-WS (KM9a DoE) → R-On-Ramp-Lektionen (`5ahwit/teach/lessons/`) → Betriebsdaten (`unterricht/HWIT-PMM/assets/betriebsdaten.csv`)
- Open-Source-Material-Kanon (`lehrplan/pmm-hwit/r4ds-abdeckung.md`, `RESOURCES.md`) → Lektüre-Zuweisungen in UE- und Lern-Materialien („link, don't copy", #6)
