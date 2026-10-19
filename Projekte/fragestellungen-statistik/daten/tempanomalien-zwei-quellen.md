# tempanomalien-zwei-quellen.csv

- **Herkunft:** Zwei unabhängige globale Temperaturreihen, per Jahr gejoined:
  (1) NASA GISS GISTEMP v4 (Basisperiode 1951–1980) — Annual Column J-D aus
  `tempanomalien-global.csv`; (2) Met Office Hadley Centre HadCRUT5 v5.2.0.0
  (Basisperiode 1961–1990) —
  https://hadleyserver.metoffice.gov.uk/hadcrut5/data/HadCRUT.5.2.0.0/analysis/diagnostics/HadCRUT.5.2.0.0.analysis.summary_series.global.annual.csv
- **Inhalt:** 147 Zeilen (Jahre 1880–2026) · Spalten: `jahr,
  gistemp_anomalie (°C vs. 1951–80), hadcrut_anomalie, hadcrut_ci_unten,
  hadcrut_ci_ober (°C vs. 1961–90, 95 % ±2σ)`
- **Lizenz:** NASA GISTEMP gemeinfrei (US-Gov); HadCRUT5 frei nutzbar mit
  Quellenangabe (Met Office Hadley Centre / Climatic Research Unit, UEA;
  Morice et al. 2021)
- **Stand:** heruntergeladen 2026-10-19
- **R-Einlesen:** `read.csv(...)` — geprüft per `Rscript` (147 Zeilen;
  mittlere Differenz über gemeinsame Jahre: 0,083 °C — spiegelt die
  Basisperioden-Differenz)
- **Nutzung:** `datensaetze-im-widerspruch.md` F-W1 (Praktiken-Check:
  Basisperiode, Abdeckung, Analyse-Methode)
- **Unterrichts-Fallstricke:** Die Reihen sind NICHT direkt vergleichbar
  (verschiedene Baselines) — Rekalibrierung gehört zur Aufgabe; die
  HadCRUT-Konfidenzgrenzen sind ±2σ; bei Versionssprung (z. B. 5.3.x) die
  URL anpassen (Versionsnummer ist im Pfad!)
