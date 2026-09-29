# History

Chronological archive of superseded decisions and pruned entries.
Entries here are no longer active truth. Never delete from this file.

## 2026-08-09 (SUPERSEDED 2026-08-21, origin: DECISIONS.md, reason: #3 — 5HWIT-Test auf 60/240 erweitert für Umweltmanagement-Block): Einstiegstest-Format für 5HWIT (analog 4HWIT)

- **Choice:** Einstiegstest 5HWIT im GRG-PMM-T Repo mit identischem Format wie 4HWIT: 50 Multiple-Choice-Fragen à 4 Punkte = 200 Punkte, 5 Blöcke à 10 Fragen, separate Schüler-/Lehrer-Version.
- **Reason:** Konsistenz zwischen den Jahrgängen erleichtert Erstellung und Auswertung. Das Format hat sich beim 4AHWIT-Einstiegstest bewährt (ehrliche Bestandsaufnahme, keine Benotung, mehrere richtige Antworten pro Frage möglich).
- **Inhalt:** Block 1 (R-Toolchain, KM7), Block 2 (Statistische Tests, KM7), Block 3 (Annahmestichprobenprüfung, KM7), Block 4 (SPC & Regelkarten, KM8), Block 5 (Prozessfähigkeit, KM8).
- **Ablage:** `5hwit/knowledge_5hwit_2026-09-08.md` + `_solutions.md` im GRG-PMM-T Repo.
- **Origin:** DECISIONS.md
- **Reason:** Am 2026-08-21 überarbeitet (GRG-PMM-T Issue #3): Test auf 60 Fragen / 240 Punkte erweitert, Block 6 (Umweltmanagement, KM7+KM8) hinzugefügt, weil der Lehrplan für KM7+KM8 den Bereich Umweltmanagement verpflichtend vorsieht und dieser im 50-Fragen-Test komplett fehlte.

## 2026-09-27 (SUPERSEDED 2026-09-29, origin: DECISIONS.md, reason: #21 — lehrplan pro Fach-Zweig): lehrplan-Flachlegung

- **Choice:** Der Zweig-Ordner `lehrplan/pmm-hwit/` wurde entfernt; `LEHRPLAN.md`, `RIS.md`, Klassen-Extrakte (`4HWIT/`, `5HWIT/`) und `kompetenzmodule/` lagen flach unter `lehrplan/` (dokumentierte Abweichung vom Skill, da nur ein Zweig/Fach).
- **Origin:** DECISIONS.md (#19)
- **Reason der Ablösung:** opencode-helpers #92 trennt Fach-Ebene (Root) und Zweig-Ebene sauber; die flache Ablage ist damit überholt. Siehe DECISIONS #21.

## 2026-09-28 (SUPERSEDED 2026-09-29, origin: DECISIONS.md, reason: #21 — Pläne in lehrplan/<fach>-<zweig>/): Semesterpläne im Zweig-Fach-Unterordner `unterricht/HWIT-PMM/`

- **Choice:** Semesterpläne blieben in `unterricht/HWIT-PMM/` (`jg4-/jg5-semesterplan-{ws,ss}.md`), während die vorbereiteten Einheiten flach unter `unterricht/` lagen.
- **Origin:** DECISIONS.md (#20)
- **Reason der Ablösung:** Die Unterrichtsebene führt keine Zweig-Fach-Ebene mehr; Semesterpläne liegen auf der Lehrplan-Ebene in `lehrplan/pmm-hwit/`. Siehe DECISIONS #21.
