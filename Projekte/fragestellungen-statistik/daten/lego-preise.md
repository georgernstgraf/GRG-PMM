# lego-preise.csv

- **Herkunft:** `openintro::lego_population` — LEGO-Sets im Verkauf
  (Stichprobe des Zeitraums 1.1.2018–11.9.2020), Begleitdatensatz zu
  *OpenIntro Statistics*; via Rdatasets
- **Inhalt:** 1.304 Zeilen · Spalten: `rownames, item_number, set_name,
  theme, pieces, price, amazon_price, year, ages, pages, minifigures,
  packaging, weight, unique_pieces, size` (Preise in USD, Teilezahl,
  Altersempfehlung, Verpackung)
- **Doku:** https://vincentarelbundock.github.io/Rdatasets/doc/openintro/lego_population.html
- **Original-CSV:** https://vincentarelbundock.github.io/Rdatasets/csv/openintro/lego_population.csv
- **Lizenz:** wie Paket `openintro` (GPL-3)
- **Stand:** heruntergeladen 2026-10-21
- **R-Einlesen:** `read.csv(...)` — geprüft per `Rscript` (1.304 Zeilen,
  15 Spalten; `price` bei 239 Sets NA)
- **Nutzung:** Themenfile `kuriose-quellen.md` F-C10 (Was kostet ein
  Stein?); KM7 UE 1–3 (EDA), UE 5 (CI), UE 13 (Fallstudie: Preisprognose)
- **Kontrollwerte:** `cor(pieces, price)` = 0,892 — aber die Beziehung ist
  besser log-log (Preis pro Stein sinkt mit Größe des Sets: Skaleneffekt).
