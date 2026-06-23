# Notes

## Sprache

- Der Benutzer ist Deutschsprachig. Lektionen sollen auf Deutsch sein.
- R/Statistik-Fachbegriffe werden teils auf Englisch verwendet (z.B. "tidyverse", "data frame", "p-value", "ANOVA").
- Kommentiere R-Code auf Deutsch (entsprechend AGENTS.md Konvention).

## Curriculum-Kontext

- Das PMM-Curriculum basiert auf BGBl. II Nr. 262/2015, Anlage 1.28 (Wirtschaftsingenieure — Technisches Management).
- 4 Semester Statistik/Prozessmanagement:
  - KM7 (4AHWIT WS): R-Grundlagen, deskriptive Statistik, Verteilungen, statistische Tests, Annahmestichprobenpruefung
  - KM8 (4AHWIT SS): SPC/Regelkarten, CUSUM, EWMA, Prozessfaehigkeit (Cp, Cpk), Gage R&R, ISO 14001
  - KM9a (5AHWIT WS): DOE (2^k, teilfaktoriell), Response Surface Methodology, Taguchi
  - KM9b (5AHWIT SS): Zuverlaessigkeit, Weibull, Energiemanagement, Maturavorbereitung
- Die Semesterplaene in `4AHWIT/` und `5AHWIT/` sind die konkreten Lehrziele.
- Zeitmodell: ca. 15 Doppelstunden pro Semester (nach Abzug von Pruefungen/admin).

## Werkzeug-Entscheidung

- R/RStudio wurde bewusst ueber Python gewaehlt.
- Gruende: industrielle Statistik-Pakete (`qcc`, `FrF2`, `rsm`, `SixSigma`, `AcceptanceSampling`) haben keine adaequaten Python-Aequivalente.
- Python kann grundlegende Statistik (pandas, scipy.stats), ist aber fuer SPC und DOE praktisch unbrauchbar.
- Siehe hierzu die detaillierte Analyse in der Sitzung vom 2026-06-23.

## Lernstrategie

- Empfohlene Start-Reihenfolge:
  1. openHPI "Programmieren mit R" (Deutsch, kostenlos) + swirl fuer Muskelgedaechtnis
  2. Coursera Duke "Statistics with R" (Audit) fuer Statistik-Tiefe
  3. R for Data Science (r4ds.hadley.nz) als Begleitbuch
  4. ISLR (statlearning.com) fuer fortgeschrittene Methoden

## Benutzer-Präferenzen

- Bevorzugt interaktive, gamifizierte Lernplaetze (wie boot.dev, brilliant.org).
- Hat Programmiererfahrung (lehrt bereits andere Informatik-Faecher).
- Selbststudium; keine formelle Schulung eingeplant.
