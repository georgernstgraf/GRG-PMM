# Project State

Current status as of 2026-09-15.

## Current Focus
**4AHWIT-Kohorten (x/y) live (#13):** Kohorten-Ablagen am Repo-Root
eingerichtet; Kohorte x ist Teach-Workspace mit den ersten zwei
Lektionen (UE 1 ggplot, UE 2 dplyr) — R-Code verifiziert.

## Completed (this cycle)
- [x] **Kohorten-Dirs (#13, 6908328):** `4ahwit-x/` + `4ahwit-y/` mit
      READMEs (5ahwit-Muster); METADATA.md Root-Klassenordner-Absatz
      erweitert (Kohorten-Teilung große Klasse, 2(1)-Splitstunde)
- [x] **Teach-Workspace Kohorte x (#13, 0f709ca):** MISSION, RESOURCES,
      NOTES, Assets (`lesson.css`, `quiz.js` wiederverwendbar);
      Lektionen `0001-daten-visualisieren-ggplot.html` (UE 1) und
      `0002-daten-transformieren-dplyr.html` (UE 2) gebaut
- [x] **R-Code-Verifikation der Lektionen:** Ziel-Pipe Lektion 0002
      (female): Adelie 3369 / Chinstrap 3527 / Gentoo 4680 — Zahlen im
      Lektionstext korrigiert; `geom_point()` droppt 2 NA-Zeilen → 342
      Punkte (Lektionstext korrigiert)
- [x] **palmerpenguins reinstalliert** (war trotz STATE-Notiz vom
      2026-09-10 nicht mehr vorhanden)

## Pending
- [ ] **Einstiegstest 4HWIT** (lt. HANDOFF fällig nach Konferenztag
      2026-09-07; konkrete DS offen, Repo GRG-PMM-T): nach Korrektur
      Bonus-UE bzw. UE 4–5 anpassen
- [ ] **Einstiegstest 5HWIT**: DOE-Block anpassen + Umwelt-Vorwissen
      auswerten (GRG-PMM-T)
- [ ] **Kohorte y:** Lektionen 0001/0002 dorthin spiegeln oder
      referenzieren (Entscheidung offen — Mirror vs. Symlink vs. Link)
- [ ] **Lektion 0003** (UE 3: Daten einlesen & deskriptive Statistik)
      bauen — braucht Betriebsdaten-Gap (RESOURCES `## Gaps`)
- [ ] **`tidyverse`-Meta-Paket installieren** — Komponenten vorhanden,
      Meta fehlt; Compilation scheitert an fehlenden `-dev`-Headern
      (siehe PITFALLS); Alternative: `sudo apt install r-cran-tidyverse`
      oder Header-Install laut `selbststudium/reference/r-setup-linux.html`
- [ ] JG3 Phase 0: L0004 durcharbeiten (teach-Session), danach L0005+
- [ ] Phase 4 (#6): Stil in `selbststudium/NOTES.md` verankern;
      km7-verlauf.html umbauen/archivieren; AGENTS.md-Stil-Verweis

## Blockers
- `install.packages("tidyverse")` (Meta-Paket): curl/systemfonts/fs-
  Compilation braucht System-Header → sudo-Rechte nötig (Georg fragen).

## Notes
- R 4.5 / Ubuntu 26.04, Rscript: /usr/bin/Rscript. **tidyverse-Meta
  fehlt**; ggplot2 4.0.3, dplyr 1.2.1 und alle anderen Tidy-Komponenten
  sind installiert — Verifikation mit `library(ggplot2); library(dplyr)`.
- palmerpenguins: 344 Zeilen, 2 davon mit NA (geom_point → 342 Punkte).
- Zeitmodell: 13 echte UE + 2 reservierte DS (1 DS/Woche).
- Kohorten-Layout siehe ARCHITECTURE.md; Stil: `docs/stil-leitfaden.md`.
- Unterrichts-Skill-Erkenntnisse persistiert im globalen Skill
  (opencode-helpers, 5333f09).

## Next Session Suggestion
Einstiegstest-Termine bestätigen und mit `knowledge-assessment` korrigieren;
parallel Lektion 0003 vorbereiten (Betriebsdaten-Beschaffung klären).
