# Rscript und die Kommandozeile (2026-__-__)

Lesson: `lesson.html` im selben Ordner — führt die Ausführung von
R-Skripten ohne RStudio ein: Terminal, `Rscript`, frische Session,
Argumente, Exit-Codes und Shebang.
- Demo: Console vs. Terminal, `Rscript scripts/analyse.R`,
  Reproduzierbarkeit (gleicher Code + Daten = gleiches Ergebnis),
  `Rscript -e`, `commandArgs()`, Exit-Code (`echo $?`),
  Shebang + `chmod +x`, `R CMD BATCH` (historisch)
- Quiz: 7 Fragen (Rscript-Ablauf, frische Session, `-e`, Argumente,
  Exit-Code, Shebang, relative Pfade)
- Callout: Exit-Code ≠ korrektes Ergebnis (`maschine.R M4` → Code 0,
  aber `n = 0, NaN` — Prüfungen gehören ins Skript)
- Alle Code-Blöcke per `Rscript` gegen `assets/betriebsdaten.csv`
  ausgeführt und verifiziert (120 Zeilen; M1 `n = 37` / `10.0` /
  `0.0315`, M2 `n = 39` / `9.98` / `0.0400`, M3 `n = 40` / `10.1` /
  `0.0696`)

## Aufgabe
`hausaufgabe.md` — das KM7-04-Projekt automatisierungstauglich machen:
`Rscript`-Lauf aus dem Terminal, Skript `maschine.R` mit
`commandArgs()`, Exit-Code-Experiment mit `kaputt.R`, Kapitel-Check
R4DS Kap. 6. Abgabe nach Vorgabe der Lehrperson.

## Housekeeping
- Lehrplan: [`lehrplan/pmm-hwit/jg4-semesterplan-ws.md`](../../lehrplan/pmm-hwit/jg4-semesterplan-ws.md) — UE 1–3 (R-Toolchain, schulautonom), Lektüre R4DS Kap. 6
- KM-Bezug: **KM7** (Statistische Tests & Annahmestichprobenprüfung) — die R-Toolchain ist laut KM-Steckbrief schulautonom flankierend; baut direkt auf [`KM7-04-rstudio-projekt-und-skript/`](KM7-04-rstudio-projekt-und-skript/) auf, Ausblick auf SPC-Automatisierung (KM8)
- Runtime: R / RStudio, `tidyverse`, `Rscript` (R 4.5)
