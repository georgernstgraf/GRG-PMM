# wochensterbefaelle-oesterreich.csv

- **Herkunft:** Eurostat `demo_r_mwk_ts` (Weekly deaths by NUTS 3 region),
  gefiltert `geo=AT, sex=T, unit=NR` via Statistics-API
  (`format=JSON`); Databrowser:
  https://ec.europa.eu/eurostat/databrowser/view/demo_r_mwk_ts
- **Inhalt:** 1.388 Zeilen · Spalten: `woche_code, woche_label, jahr,
  woche, sterbefaelle` — Wochen 2000-W01 bis 2026-W32 (wenige
  Melde-Lücken als NA)
- **Lizenz:** CC BY 4.0 (Eurostat) — Namensnennung
- **Stand:** heruntergeladen 2026-10-19
- **R-Einlesen:** `read.csv(...)` — geprüft per `Rscript`; Jahres-Summen
  plausibel (2019: 81.557 → 2020: 91.196 → 2025: 85.651)
- **Nutzung:** `corona-impfmythen.md` F-C1 (Übersterblichkeit)
- **Unterrichts-Fallstricke:** Kalenderwochen ≠ Kalenderjahre (Jahres-Summe
  überschreitet Jahresgrenze); Baseline-Wahl (2015–2019 vs. 2000–2019)
  verschiebt die Übersterblichkeitsziffer — bewusst diskutieren; 2022+
  erhöht (Nachbeben/Demografie), nicht „Impfschäden" interpretieren
  ohne Alters-Standardisierung
