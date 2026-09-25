# R rechnet: Kennzahlen & Verteilungen (2026-09-25)

Lesson: [`lesson.html`](lesson.html) im selben Ordner — R rechnet die
Kennzahlen und Verteilungen, die wir bisher mit dem Taschenrechner
gemacht haben (KM5-Recap in R), plus Setup-Nachholung (winget,
`tidyverse` + `palmerpenguins`).

- Setup: `winget install RProject.R` / `Posit.RStudio`,
  `install.packages(c("tidyverse", "palmerpenguins"))`,
  Kontrolle `glimpse(penguins)` → 344 Zeilen, 8 Spalten
- R-Umsetzung: `mean/median/sd/var/IQR/quantile`, Schätzer vs. Parameter,
  `geom_histogram` vs. `geom_bar`, `d/p/q/r` (`pnorm`, `qnorm`, `dbinom`,
  `dpois`), Boxplot + QQ-Plot
- Quiz: 4 Fragen (Richtige D·C·B·A)
- **Aufgabe:** Betriebsdaten je Maschine auswerten (`mean/median/sd/IQR`),
  Ausschuss-Wahrscheinlichkeit per `pnorm` unter Normalannahme prüfen,
  Normalannahme per Histogramm beurteilen — **Abgabe:** Commit in deinem
  PMM-Repo (R-Skript + kurze Antwort). Die Aufgabe steht als Abschnitt am
  Lesson-Ende.

## Housekeeping

- Lehrplan: [`lehrplan/pmm-hwit/kompetenzmodule/km5.md`](../../lehrplan/pmm-hwit/kompetenzmodule/km5.md)
  (+ [`km7.md`](../../lehrplan/pmm-hwit/kompetenzmodule/km7.md))
- KM-Bezug: UE 4 (KM7, 4HWIT WS), Wiederholung aus KM5, Anschluss UE 5
  (Schätzen & Konfidenzintervalle) — [`jg4-semesterplan-ws.md`](../../unterricht/HWIT-PMM/jg4-semesterplan-ws.md)
- Runtime: R / RStudio (R 4.5.x), `tidyverse`, `palmerpenguins`
