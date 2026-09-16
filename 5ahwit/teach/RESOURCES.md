# PMM-Datenarbeit (5AHWIT) — Resources

## Knowledge

- [R4DS 2e — Kap. 1 Data visualization](https://r4ds.hadley.nz/data-visualize)
  Hauptlektüre Lektion 0001: ggplot-Grammatik, aes, Geoms, Facets. CC BY-NC-ND —
  wir verlinken, schreiben aber jeden Satz selbst (`docs/stil-leitfaden.md`).
- [R4DS 2e — Kap. 3 Data transformation](https://r4ds.hadley.nz/transform)
  Hauptlektüre Lektion 0002: filter/select/mutate/summarise, Pipe.
- [R4DS 2e — Kap. 7 Data import](https://r4ds.hadley.nz/data-import.html)
  Hauptlektüre Lektion 0003: read_csv, Spaltentypen, Parsing-Probleme.
- [R4DS 2e — Kap. 10 Exploratory data analysis](https://r4ds.hadley.nz/EDA.html)
  Hauptlektüre Lektion 0003: Kennzahlen, Variation, Kovariation.
- [palmerpenguins](https://allisonhorst.github.io/palmerpenguins/)
  Der Pinguin-Datensatz (Art/Insel/Maße). Daten für Lektion 0001–0002.
- [NIST/SEMATECH e-Handbook, Kap. 5](https://www.itl.nist.gov/div898/handbook/pri/pri.htm)
  Process improvement — der Lektüre-Anker für den DoE-Start nach der
  On-Ramp (UE 1 des Semesterplans). Referenz, keine Lernlektüre.

## Daten

- `../../unterricht/HWIT-PMM/assets/betriebsdaten.csv`
  Synthetische Fertigungsmessreihe (120 Teile, 10 Chargen × 3 Maschinen,
  Sollmaß 10,00 mm, Toleranz ±0,15 mm, 4 fehlende Messungen).
  Erzeugt mit `set.seed(20260916)`; ersetzt später echte Schuldaten.
  Betriebsdomein ab Lektion 0003.

## Wisdom (Communities)

- Unterricht & Rückfragen: Georg (DS, Mail, Teams) — erste Anlaufstelle.
- [Posit Community](https://forum.posit.co/)
  R-Fragen auf Englisch; gut dokumentierte Fragen = Muster für
  hilf-bitte-Fragen im Unterricht.

## Gaps

- R/RStudio-Installation auf den Schul-Laptops der 5AHWIT ist nicht
  bestätigt — das Setup-Log (2026-09-09) nennt nur git und VS Code.
  Klären, bevor Lektion 0002 als HÜ läuft.
