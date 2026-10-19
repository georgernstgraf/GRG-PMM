# covid-at-gemeldet-vs-uebersterblichkeit.csv

- **Herkunft:** Our World in Data `owid-covid-data.csv` (GitHub-Repo
  owid/covid-19-data), auf Österreich gefiltert und **monatlich aggregiert**
  (COVID-Tode: Summe der Tageswerte `new_deaths`; Übersterblichkeit: Mittel
  der wöchentlichen Werte `excess_mortality` — Quelle: The Economist/IHME-
  Schätzwerte basierend auf All-Cause-Mortalität)
- **Inhalt:** 48 Monate (Jänner 2020 – Dezember 2023) · Spalten: `jahr,
  monat, covid_tote_gemeldet, uebersterblichkeit_prozent`
- **Referenzwerte (Plausibilitäts-Check):** 2020: 7.049 gemeldete COVID-Tode
  vs. Übersterblichkeit Ø 8,7 % ≈ 7.100; 2021: 9.538 vs. 9,3 %; 2022:
  4.984 vs. 10,6 % — Divergenz 2022 ist der Lehrmoment
- **Lizenz:** CC BY 4.0 (Our World in Data); zugrunde liegend: WHO/AGES/
  Human Mortality Database via OWID-Verarbeitung
- **Stand:** heruntergeladen 2026-10-19
- **R-Einlesen:** `read.csv(...)` — geprüft per `Rscript`
- **Nutzung:** `datensaetze-im-widerspruch.md` F-W2; Brücke zu
  `corona-impfmythen.md` F-C1
- **Unterrichts-Fallstricke:** Zwei Spalten = zwei Messinstrumente (Todes-
  ursachen-Kodierung vs. All-Cause); Übersterblichkeit ist eine Modell-
  schätzung mit Bandbreite, keine Registrierung; 2022+ Basislinien-Fragen
  (Demografie, Nachbeben) immer mitverhandeln; Werte über 2023 hinaus
  (excess) im Original-Datensatz spärlich
