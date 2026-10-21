# pizza-verkauf-2015.csv

- **Herkunft:** `gt::pizzaplace` — „A year of pizza sales from a pizza
  place" (ein Jahr Verkäufe einer Pizzeria, 2015); via Rdatasets
- **Inhalt:** 49.574 Zeilen · Spalten: `rownames, id, date, time, name,
  size, type, price` (`name` = Pizzaname, `size` S/M/L/XL/XXL,
  `type` classic/chicken/supreme/veggie, `price` in USD)
- **Doku:** https://vincentarelbundock.github.io/Rdatasets/doc/gt/pizzaplace.html
- **Original-CSV:** https://vincentarelbundock.github.io/Rdatasets/csv/gt/pizzaplace.csv
- **Lizenz:** wie Paket `gt` (MIT)
- **Stand:** heruntergeladen 2026-10-21 (Datenjahr 2015)
- **R-Einlesen:** `read.csv(...)` — geprüft per `Rscript` (49.574 Zeilen,
  8 Spalten; Zeitraum 2015-01-01 bis 2015-12-31)
- **Nutzung:** Themenfile `kuriose-quellen.md` F-C8 (Verkaufsrhythmus,
  Größe × Typ); KM7 UE 1–3 (EDA, Zeitmuster), UE 7 (χ² Unabhängigkeit),
  UE 13 (Fallstudie)
- **Kontrollwerte:** Gesamtumsatz 817.860 USD · Größenanteile L 38,2 %,
  M 31,5 %, S 29,1 %, XL 1,1 %, XXL 0,1 % · häufigster Typ `classic`
  (14.888), dann `supreme` (11.987).
- **Hinweis:** 49.574 Zeilen sind bewusst realistisch groß — gut für
  `count`/`summarise`-Übungen und zum Zeigen, warum man erst aggregiert.
