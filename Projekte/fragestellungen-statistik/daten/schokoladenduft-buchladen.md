# schokoladenduft-buchladen.csv

- **Herkunft:** `experimentr::mcgrath` — McGrath et al. (2016):
  „Chocolate Scents and Product Sales: A Randomized Controlled Trial in a
  Canadian Bookstore and Café", *SpringerPlus* 5:719,
  <https://doi.org/10.1186/s40064-016-2303-5>; via Rdatasets
- **Inhalt:** 30 Zeilen · Spalten: `rownames, treatment, book, coffee, food,
  grandtotal` (`treatment` 1 = Schokoladenduft im Laden, 0 = Kontrolle;
  Umsätze in CAD über den Versuchszeitraum)
- **Doku:** https://vincentarelbundock.github.io/Rdatasets/doc/experimentr/mcgrath.html
- **Original-CSV:** https://vincentarelbundock.github.io/Rdatasets/csv/experimentr/mcgrath.csv
- **Lizenz:** wie Paket `experimentr` (MIT) — Daten aus publiziertem Artikel
- **Stand:** heruntergeladen 2026-10-21
- **R-Einlesen:** `read.csv(...)` — geprüft per `Rscript` (30 Zeilen,
  6 Spalten; 14 Kontrolle / 16 Treatment)
- **Nutzung:** Themenfile `kuriose-quellen.md` F-C11 (echter RCT im
  Buchladen); KM9a UE 1 (DoE-Einführung: Randomisierung, warum nicht OFAT),
  KM7 UE 6 (t-Test)
- **Kennzeichnung:** echter randomisierter Versuch — für DoE-UEs auswerten,
  nicht als „eigene Messung" verkaufen. Kontrollwerte (Mittelwerte):
  Buch 168,7 vs. 189,1 · Kaffee 334,7 vs. 329,2 · Food 72,0 vs. 93,7 ·
  Gesamt 575,4 vs. 612,0 (Kontrolle vs. Duft).
