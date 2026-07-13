# Project State

Current status as of 2026-07-12.

## Current Focus
Selbststudium (teach skill): Aufbau des KM-7-Kurses (4AHWIT WS).
Lektionen 1–2 fertig, Lektion 1 ✅. Setup-Pitfall (Ubuntu/-dev-Header)
dokumentiert. Lektion 3 als Nächstes.

## Completed (this cycle)
- [x] Selbststudium-Workspace aufgebaut:
  - `assets/style.css` (gemeinsamer Stil), `assets/quiz.js` (Quiz-Widget)
  - `reference/glossar.html`, `reference/km7-verlauf.html` (Verlaufsmap, 30 Lektionen)
  - `reference/r-setup-linux.html` (Ubuntu-Setup, verifizierte Paketliste)
  - `learning-records/0001` (Vorwissen), `0002` (L1 gemeistert), `0003` (Setup-Pitfall)
  - `lessons/0001-r-einfuehrung.html` ✅, `lessons/0002-datenstrukturen.html`
- [x] Lektion 1 ✅: Vektor/Vektorisierung ins Glossar aufgenommen
- [x] Pitfall festgehalten: tidyverse-Header auf Ubuntu 26.04
      (`libfreetype-dev`, nicht `libfreetype6-dev`); in Lektion 1 verlinkt

## Pending
- [ ] Lektion 2 durcharbeiten + Verständnis abholen → Glossar (data.frame,
      factor, list, coercion) + Learning Record + ✅
- [ ] Lektion 3: Daten einlesen & bereinigen (`read.csv`, `dplyr`:
      filter/mutate/select, NA-Behandlung)
- [ ] Lektionen 4–30 (Blöcke A–F)
- [ ] Semesterpläne bleiben offen (blockiert auf Issue #1)

## Notes
- R 4.5 / Ubuntu 26.04: Header-Probleme nur bei `tidyverse`; Statistik-Pakete
  sind reines R (kein Header nötig). `tidyverse` installiert & lädt jetzt
  (v2.0.0). Rscript unter `/usr/bin/Rscript`.
- Lernprofil: sicherer Coder, Statistik-Anfänger, R-Neuling; will Meisterschaft
  + Didaktik; fragt nach Designgründen („warum").
- Nicht committet; kein Issue für Selbststudium angelegt (nötig vor Commit).

## Next Session Suggestion
Lernenden Lektion 2 abnehmen (besonders Factor-Falle). Wenn sitzt: Glossar
erweitern, ✅ setzen, Lektion 3 (dplyr) bauen.
