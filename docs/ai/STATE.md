# Project State

Current status as of 2026-09-06.

## Current Focus
**Repo-Struktur auf `lehrplan/`-Konvention des `unterricht`-Skills migriert
(#8).** Klassenordner, KM-Steckbriefe, METADATA, PDFs und Extrakte liegen
jetzt zentral unter `lehrplan/`. `AGENTS.md`/`README.md` auf neue Pfade
umgestellt. Klassen-Zuordnung (Jahrgang ↔ Klassenname) in METADATA.md
ergänzt.

## Completed (this cycle)
- [x] **Migration `lehrplan/` (#8)**: `4HWIT/`, `5HWIT/`,
      `kompetenzmodule/` (Top-Level) und `docs/lehrplan/` nach
      `lehrplan/` verschoben (reine Umbenennungen)
- [x] **AGENTS.md/README.md** auf neue Pfade umgestellt; alle
      `docs/lehrplan/`-Referenzen in Markdown ersetzt
      (`docs/ai/` historisch belassen)
- [x] **Klassen-Zuordnung** in `lehrplan/METADATA.md` ergänzt
      (IV. → 4HWIT, V. → 5HWIT, generisch)

## Pending
- [ ] **Task C (Unterrichts-Skill), Stufe 3:** jahrgangsspezifische
      Extrakte `lehrplan/4HWIT/4HWIT.lehrplan.md` (KM7+KM8) und
      `lehrplan/5HWIT/5HWIT.lehrplan.md` (KM9) aus
      `pmm-lehrplan-text.md` erstellen
- [ ] **Task B (Unterrichts-Skill):** RIS-Novellen-Check (letzte
      12 Monate) — noch nie dokumentiert durchgeführt
- [ ] **Einstiegstest 4HWIT** (2026-09-07, GRG-PMM-T): nach Korrektur
      Bonus-UE aktivieren bzw. UE 4–5 anpassen
- [ ] **Einstiegstest 5HWIT** (2026-09-08, GRG-PMM-T): nach Korrektur
      DOE-Block anpassen + Umwelt-Vorwissen auswerten
- [ ] **Phase 3 (#6):** `docs/stil-leitfaden.md` + Retrofit
      `4HWIT/01-…`, `02-…` auf Buch-Reihenfolge (ggplot zuerst)
- [ ] **JG3 Phase 0: L0004 bauen** (Diskrete Verteilungen); danach
      L0005–0015

## Blockers
- Keine akuten.

## Notes
- R 4.5 / Ubuntu 26.04, tidyverse 2.0.0, Rscript: /usr/bin/Rscript.
- Zeitmodell: 18 Schulwochen offiziell → 13 echte UE + 2 reservierte DS.
- Klassen-Ordner generisch (`lehrplan/4HWIT`, `lehrplan/5HWIT`) —
  Parallelklassen-sicher.
- **Verify-Workflow für künftige Tests:** `verify_quiz.py` nach jeder
  Test-Generierung laufen lassen. Skript in `GRG-PMM-T/tools/`.
- Historische Pfad-Referenzen in `docs/ai/` (z. B. `docs/lehrplan/`)
  wurden bewusst NICHT ersetzt — Archiv-Charakter.

## Next Session Suggestion
Task C abschließen: `4HWIT.lehrplan.md` und `5HWIT.lehrplan.md`
extrahieren, dann Task B (Novellen-Check) — beides mit dem
`unterricht`-Skill.
