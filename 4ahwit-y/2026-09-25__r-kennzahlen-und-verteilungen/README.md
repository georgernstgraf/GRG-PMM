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

## Aufgabe

Betriebsdaten je Maschine auswerten (`mean/median/sd/IQR`),
Ausschuss-Wahrscheinlichkeit per `pnorm` unter Normalannahme prüfen,
Normalannahme per Histogramm beurteilen — **Abgabe:** Commit in deinem
PMM-Repo (R-Skript + kurze Antwort). Die Aufgabe steht als Abschnitt am
Lesson-Ende.

## Einstiegsvideos (freiwillig)

Zum Nachschauen und Nachtrippen — alle **unter 30 Minuten**, kein Konto
nötig. Erst das Video schauen, dann den Code in RStudio selbst ausführen.

**Setup & erste Schritte (deutsch):**

- [R installieren (Windows) und RStudio installieren](https://www.youtube.com/watch?v=X_Mxya2Fis0)
  — Statistik am PC, ca. 6 min
- [R mit RStudio – eine Einführung in die Bedienung von RStudio](https://www.youtube.com/watch?v=tyvEHQszZJs)
  — Statistik am PC, ca. 10 min
- [1.1 R-Kurs – Einführung in R Studio](https://www.youtube.com/watch?v=FePjgJmAs_c)
  — Statistik Grundlagen, ca. 13 min

**Kennzahlen, Einlesen & EDA (deutsch):**

- [Deskriptive Statistik in R berechnen und interpretieren](https://www.youtube.com/watch?v=2oJxL-ImcOM)
  — Statistik am PC, ca. 7 min
- [Daten einlesen mit R und RStudio](https://www.youtube.com/watch?v=noH6CPIDtGM)
  — Statistik-Akademie (Daniela Keller), ca. 10 min
- [Programmieren in R – Eine schnelle Explorative Datenanalyse (EDA)](https://www.youtube.com/watch?v=ObFfxFkvUok)
  — Jochen Kruppa-Scheetz, ca. 10 min

**Englischer Einstieg (passt zur englischen Pflichtlektüre R4DS):**

- [R programming for ABSOLUTE beginners](https://www.youtube.com/watch?v=FY8BISK5DpM)
  — R Programming 101, ca. 14 min

## Housekeeping

- Lehrplan: [`lehrplan/pmm-hwit/kompetenzmodule/km5.md`](../../lehrplan/pmm-hwit/kompetenzmodule/km5.md)
  (+ [`km7.md`](../../lehrplan/pmm-hwit/kompetenzmodule/km7.md))
- KM-Bezug: UE 4 (KM7, 4HWIT WS), Wiederholung aus KM5, Anschluss UE 5
  (Schätzen & Konfidenzintervalle) — [`jg4-semesterplan-ws.md`](../../unterricht/HWIT-PMM/jg4-semesterplan-ws.md)
- Runtime: R / RStudio (R 4.5.x), `tidyverse`, `palmerpenguins`
