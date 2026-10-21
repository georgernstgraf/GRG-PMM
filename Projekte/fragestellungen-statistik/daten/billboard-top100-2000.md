# billboard-top100-2000.csv

- **Herkunft:** `tidyr::billboard` — Billboard-Top-100-Charts des Jahres
  2000, eine Zeile pro Song, eine Spalte pro Chartwoche (`wk1`–`wk76`);
  via Rdatasets
- **Inhalt:** 317 Zeilen · Spalten: `rownames, artist, track, date.entered,
  wk1, …, wk76` (Rang in der jeweiligen Woche; `NA` = nicht in den Charts)
- **Doku:** https://vincentarelbundock.github.io/Rdatasets/doc/tidyr/billboard.html
- **Original-CSV:** https://vincentarelbundock.github.io/Rdatasets/csv/tidyr/billboard.csv
- **Lizenz:** wie Paket `tidyr` (MIT)
- **Stand:** heruntergeladen 2026-10-21 (Chartjahr 2000)
- **R-Einlesen:** `read.csv(...)` — geprüft per `Rscript` (317 Zeilen,
  80 Spalten; längste Chartkarriere 57 Wochen)
- **Nutzung:** Themenfile `kuriose-quellen.md` F-C9 (Wie lange lebt ein
  Hit?); SA-06 (`pivot_longer` — wide-to-long als Lernstoff), KM7 UE 1–3
  (Verteilung der Chartwochen), KM5 Verteilungen
- **Didaktischer Reiz:** Die Datei ist absichtlich **wide** — der Umbau
  nach long (`pivot_longer(cols = starts_with("wk"))`) ist die Aufgabe,
  nicht ein Vorbereitungsschritt.
