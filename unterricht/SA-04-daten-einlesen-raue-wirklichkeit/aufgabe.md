# Aufgabe SA-04 — Daten einlesen II: die raue Wirklichkeit

Du führst die komplette Kette aus der Lektion selbst durch — mit den
Dateien in `daten/` neben der Lesson. Arbeitsverzeichnis: Repo-Root
(RStudio-Projekt). **Abgabe nach Vorgabe deiner Lehrperson.**

## 1) NASA sauber einlesen (Grundlage)

Lies `daten/gistemp_roh.csv` so ein, dass `jahr` und `anomalie` (Spalte
`J-D`) **numerisch** sind und `***` als `NA` behandelt wird.

- Baue den Tibble `anomalie` mit den Spalten `jahr`, `anomalie`
  (146 Zeilen sollten übrig bleiben).
- Gib die Anomalien ab 2022 aus (2022: 0.89 · 2023: 1.17 · 2024: 1.28 ·
  2025: 1.18 — wenn deine Werte das nicht zeigen, prüfe `skip` und `na`).
- Plotte die Jahresanomalien über die Zeit
  (`ggplot(anomalie, aes(jahr, anomalie)) + geom_line()`).

## 2) Verurteilungsstatistik lesbar machen (Joins)

Lies `daten/OGD_krimi001_KRIMI_1.csv` **und** beide Dimensions-Dateien
ein und baue den Tibble `delikte` (`jahr`, `gericht`, `olg`, `delikte`).

- Filtere **nur** LG-Sprengel (keine OLG-Aggregate, nicht
  „Nicht klassifizierbar") und berechne die Gesamtdelikte 2024
  (Kontrollwert: 45 958).
- Welche drei Sprengel hatten 2024 die meisten Delikte? (Hinweis:
  `arrange(desc(delikte)) |> head(3)`.)
- Bonus: Vergleiche „LG für Strafsachen Wien" über die Jahre —
  plott die Zeitreihe.

## 3) Werkstatt-Excel retten (Excel)

Lies `daten/betriebsdaten_licht.xlsx` so ein, dass du die
Kennzahlen je Maschine berechnen kannst.

- Notiere **vor** dem Ausführen: Was erwartest du für
  `class()` der Masse-Spalte — und warum?
- Baue die Kennzahlentabelle (`n`, `mittel`) je Maschine
  (Kontrollwerte: M1 37/10.0 · M2 39/9.98 · M3 38/10.1).
- Erkläre in zwei Sätzen in deinem Skript (als Kommentar), warum
  M3 heute `n = 38` hat, obwohl SA-03 noch `n = 40` zeigte.

## 4) Bonus: eigene raue Datei

Erzeuge mit dem Editor eine Mini-CSV mit Semikolon-Trenner und
Dezimalkomma (5 Zeilen erfundene Messwerte, eine Zelle leer, eine mit
`???`), und lies sie so ein, dass die Messspalte numerisch wird und
beide Problemzellen `NA` sind.

## Kapitel-Check

R4DS 2e, Kap. 7 (Data import) — nach der Aufgabe solltest du
beantworten können: Was machen `skip`, `na`, `locale` und `n_max`
jeweils?
