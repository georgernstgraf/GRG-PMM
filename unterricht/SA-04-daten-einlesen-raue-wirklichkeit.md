# Daten einlesen II: die raue Wirklichkeit (2026-__-__)

Lesson: `lesson.html` im selben Ordner — CSV- und Excel-Dateien aus
der freien Wildbahn sauber einlesen: Preamble, NA-Marker, Semikolon,
Excel-Sheets, kodierte Amtstabellen.
- Demo: `readLines()` als Erst-Hinschauen, NASA-GISTEMP
  (`skip = 1`, `na = "***"`), Statistik-Austria-OGD
  (`read_csv2`, Joins mit Dimensions-Dateien), Excel
  (`excel_sheets`, `sheet`, `na = "n. gemessen"`, `as.numeric`)
- Quiz: 8 Fragen (Preamble, schleichender Typen-Fehler, falscher
  Trenner, Excel-Rettung, Codes & Joins, stille Fehler,
  Aggregatzeilen, Einlese-Reihenfolge)
- Daten: `daten/` — NASA (gemeinfrei), Statistik Austria CC BY 4.0,
  Eurostat CC BY 4.0, 2 erzeugte Übungs-Excels (Herkunft in
  `daten/README.md`)
- Alle Code-Blöcke per `Rscript` gegen die Dateien ausgeführt und
  verifiziert (Anomalie 2024 = 1.28; Wien 2024 = 11 510 Delikte;
  LG-Summe 2024 = 45 958; M1 37/10.0 · M2 39/9.98 · M3 38/10.1)

## Aufgabe
`aufgabe.md` — die komplette Kette: NASA sauber einlesen und plotten,
Verurteilungsstatistik per Joins lesbar machen (Kontrollwert 45 958),
Werkstatt-Excel retten (M3: n = 38), Bonus: eigene raue Mini-CSV.
Abgabe nach Vorgabe der Lehrperson.

## Housekeeping
- Lehrplan: [`lehrplan/pmm-hwit/jg4-semesterplan-ws.md`](../../lehrplan/pmm-hwit/jg4-semesterplan-ws.md) — R-Toolchain, schulautonom; Lektüre R4DS Kap. 7 (+ Kap. 21 freiwillig)
- KM-Bezug: **schulautonom (SA)** — baut auf [`SA-03-daten-einlesen-deskriptiv/`](SA-03-daten-einlesen-deskriptiv/) auf; erster Teil der Serie „Datenaufbereitung" (SA-04 … SA-07: JSON/APIs, `unlist` & Konvertieren, Postgres); Daten aus [`Projekte/fragestellungen-statistik/`](../../Projekte/fragestellungen-statistik/README.md) (#36)
- Runtime: R / RStudio, `tidyverse` (readr, dplyr), `readxl`, `writexl` (nur Erzeugung)
