# strompreise-eu-haushalte.csv

- **Herkunft:** Eurostat `nrg_pc_204` — „Electricity prices for household
  consumers - bi-annual data"; JSON-API-Abruf
  (`…/statistics/1.0/data/nrg_pc_204?lang=EN&format=JSON&unit=KWH&lastTimePeriod=3`)
  und Konvertierung nach tidy-CSV (Skript-Ablauf im Issue #36-Kommentar)
- **Inhalt:** 12.771 Zeilen · Spalten: `geo, geo_name, siec, nrg_cons, unit,
  tax, currency, jahr_halbjahr, zeitpunkt, preis` (letzte 3 Halbjahre;
  `nrg_cons` = Verbrauchsbänder, `tax` = Steuer-Behandlung, `preis` = EUR/kWh)
- **Doku:** https://ec.europa.eu/eurostat/databrowser/view/nrg_pc_204
- **Lizenz:** CC BY 4.0 (Eurostat) — Namensnennung: „Eurostat (nrg_pc_204)"
- **Stand:** heruntergeladen 2026-10-19 (letzte 3 Halbjahre laut API-Filter)
- **R-Einlesen:** `read.csv(...)` — geprüft per `Rscript` (12.771 Zeilen,
  6.129 Werte; Kombinationen ohne Wert sind NA)
- **Nutzung:** KM7-F1/F3, KM9a-F7
- **Hinweis:** für aktuelle Werte Abruf wiederholen (Filter `lastTimePeriod`)
