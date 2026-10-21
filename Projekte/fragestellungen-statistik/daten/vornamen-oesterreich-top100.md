# vornamen-oesterreich-top100.csv

- **Herkunft:** Statistik Austria OGD `OGDEXT_VORNAMEN_1` — „Vornamen"
  (Vornamen der lebendgeborenen Kinder, 1984–2025); Roh-CSV
  `https://data.statistik.gv.at/data/OGDEXT_VORNAMEN_1.csv` (28 MB,
  Bezirksdetails) → aggregiert per `daten/_build/build_data4.R`
- **Inhalt:** 8.400 Zeilen · Spalten: `jahr, geschlecht, rang, vorname,
  anzahl`. Je Geburtsjahr und Geschlecht die **100 häufigsten** Vornamen
  (über alle Wohnbezirke summiert, inkl. Code `GEH` = Geheimhaltungsfälle;
  Rang = Position in dieser Datei, nicht der amtliche Bundesrang).
  `anzahl` = Anzahl lebendgeborener Kinder mit diesem ersten Vornamen.
- **Doku:** https://data.statistik.gv.at/web/meta.jsp?dataset=OGDEXT_VORNAMEN_1
- **Lizenz:** CC BY 4.0 (Statistik Austria) — Namensnennung:
  „Statistik Austria (OGDEXT_VORNAMEN_1)"
- **Stand:** heruntergeladen 2026-10-21 (Datenstand 2025)
- **R-Einlesen:** `read.csv(...)` — geprüft per `Rscript` (8.400 Zeilen;
  42 Jahre × 2 Geschlechter × 100 Ränge)
- **Nutzung:** Themenfile `kuriose-quellen.md` F-C1 (Modenamen-Zeitreihe,
  Rangdynamik); KM7 UE 1–3 (EDA), UE 4 (Verteilungen)
- **Hinweis:** Für den eigenen Vornamen (auch seltene) die volle Roh-CSV
  per `read.csv2()` live einlesen — das ist selbst eine Übung (SA-03/SA-04).
  Kontrollwerte: Michael 1984 = 2.280 · Emma 2025 = 559 ·
  Michael 12× auf Rang 1, Emma 3×.
