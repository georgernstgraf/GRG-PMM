# tempanomalien-global.csv

- **Herkunft:** NASA GISS Surface Temperature Analysis (GISTEMP v4),
  `GLB.Ts+dSST.csv` (Land-Ocean Temperature Index) —
  https://data.giss.nasa.gov/gistemp/
- **Inhalt:** 147 Zeilen (Jahre 1880–2025 + laufendes Jahr) · Spalten:
  `jahr, anomalie_jahr, jan, feb, …, dez` — Anomalien in °C gegen
  Basisperiode 1951–1980 (`anomalie_jahr` = Jahresmittel J-D;
  laufendes Jahr NA)
- **Lizenz:** NASA-Daten gemeinfrei (US-Gov); Quellenangabe: NASA GISS
  (Hansen et al., GISTEMP Team 2026)
- **Stand:** heruntergeladen 2026-10-19
- **R-Einlesen:** `read.csv(...)` — geprüft per `Rscript` (146 Jahreswerte)
- **Nutzung:** `klima-klimawandel.md` F-K1/F-K2 (Trend-Regression)
- **Unterrichts-Fallstricke:** Negative Werte ohne führende 0 im Original
  (`-.19`) — beim Einlesen normalisiert; Dekaden-Mittel statt Einzeljahre
  interpretieren
