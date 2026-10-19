# verurteilungen-gerichtsbezirke.csv

- **Herkunft:** Statistik Austria OGD `OGD_krimi001_KRIMI_1` —
  „Verurteilungsstatistik seit 2012: sämtliche den Verurteilungen
  zugrundeliegende Delikte, nach Gerichtssprengeln"
  (Meta: https://data.statistik.gv.at/web/meta.jsp?dataset=OGD_krimi001_KRIMI_1)
- **Inhalt:** 280 Zeilen · Spalten: `jahr, gericht_code, gericht_name, ebene,
  olg_code, olg_name, delikte` (2012–2025; `ebene` = LG | OLG-Summe |
  unklassifizierbar)
- **Original (kodiert):** https://data.statistik.gv.at/data/OGD_krimi001_KRIMI_1.csv
  + Dimension-Files `…_C-A10-0.csv` (Jahr) und `…_C-KRIMEA9-0.csv`
  (Gerichtssprengel; FK-Spalte = OLG-Sprengel)
- **Lizenz:** CC BY 4.0 (Statistik Austria)
- **Stand:** heruntergeladen 2026-10-19 (Datenstand 2025, Update 2026-06)
- **R-Einlesen:** `read.csv(...)` — geprüft per `Rscript` (280 Zeilen;
  Summe LG-Delikte 2012 = 53.624)
- **Nutzung:** KM7-F2 (EDA, Joins)
- **Unterrichts-Fallstricke:** OLG-Aggregatzeilen (`KRIMJ93-*`) und
  „Nicht klassifizierbar" vor dem Summieren herausfiltern (sonst doppelt);
  Gerichtsperspektive ≠ PKS-Anzeigenperspektive
