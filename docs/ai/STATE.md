# Project State

Current status as of 2026-09-16.

## Current Focus
**4AHWIT Kohorte x — R-Start (#13):** DS am 2026-09-22: HÜ-Kontrolle
(`4ahwit-x/2026-09-22_hue-kontrolle.md`, anonym, erwartet
`glimpse(penguins)` → 344×8) + Übersichtsfolie „Was kann R?"
(`unterricht/HWIT-PMM/00-was-kann-r/praesentation.html`, Master,
reveal via CDN) + UE-1-Start (Lektion 0001, HA aus UE-Ordner 01).
Kohorte y: Installationstag 2026-09-18 ✓ (winget: git/VS Code/R/
RStudio/node, GitHub-Account + Repo „PMM", im y-README protokolliert).

**5AHWIT R-On-Ramp (#14):** Teach-Workspace im SWP-Muster
(`5ahwit/teach/`, analog `GRG-SWP/3ahwii/teach/`) mit Lektionen
0001 (ggplot), 0002 (dplyr), 0003 (einlesen & deskriptiv auf
Betriebsdaten) — alle R-Code-Blöcke per Rscript verifiziert. Die DS am
2026-09-16 startet mit Lektion 0001 live.

## Completed (this cycle)
- [x] **Teach-Workspace 5ahwit (#14, fba6ed1):** SWP-Muster (teach/-
      Unterordner, reference/ + learning-records/, Klassenhub-README
      mit UE-Tabelle); Lessons 0001/0002 adaptiert von 4ahit-x, 0003
      neu; HA-Master-Kopien in `5ahwit/hausaufgaben/` (03 adaptiert auf
      Betriebsdaten)
- [x] **Betriebsdaten-Master (#14):**
      `unterricht/HWIT-PMM/assets/betriebsdaten.csv` (synthetisch,
      `set.seed(20260916)`, 120 Teile, 10 Chargen × 3 Maschinen,
      Soll 10,00 ± 0,15 mm; M1 im Soll, M2 leicht tief, M3 aus der
      Mitte mit 6/116 Ausschuss = 5,2 %) — löst den Betriebsdaten-Gap
      aus #13 auch für Kohorte x
- [x] **R-Umgebung reinstalliert:** r-base-core 4.3.3 + r-cran-tidyverse
      via apt (Binärpakete; tidyverse-Meta-Blocker erledigt),
      palmerpenguins via `sudo Rscript -e 'install.packages(...)'`
      (PITFALLS-Eintrag ergänzt)
- [x] **CONVENTIONS (#14):** Master/Kopien-Modell (unterricht/ = Master,
      Kohortenordner = Kopien+Adaptionen) + SWP-Teach-Layout dokumentiert;
      GLOSSAR um Ausschuss/Sollwert/Toleranz ergänzt
- [x] **Quiz-Regeln:** Richtige rotieren C/B/A; Wortzahlen aller
      5ahwit-Quizantworten egalisiert (0001/0002 vom x-Original verbessert)
- [x] **GRG-SWP gepullt** (bded299, 3ahwii-Teach-Workspace als Muster)

## Pending
- [ ] **Einstiegstest 4HWIT** (lt. HANDOFF fällig nach Konferenztag
      2026-09-07; konkrete DS offen, Repo GRG-PMM-T): nach Korrektur
      Bonus-UE bzw. UE 4–5 anpassen
- [ ] **Einstiegstest 5HWIT**: DOE-Block anpassen + Umwelt-Vorwissen
      auswerten (GRG-PMM-T); Ergebnis gegen On-Ramp-Beobachtungen
      abgleichen (LR 0001 in `5ahwit/teach/learning-records/`)
- [ ] **R/RStudio auf Schul-Laptops der 5AHWIT bestätigen** — Setup-Log
      nennt nur git/VS Code (Gap in `5ahwit/teach/RESOURCES.md`)
- [ ] **Kohorte y:** Lektionen 0001/0002 spiegeln oder referenzieren
      (Entscheidung offen — Mirror vs. Symlink vs. Link)
- [ ] **Lektion 0003 für 4ahit-x bauen** — Betriebsdaten liegen jetzt
      bereit (`unterricht/HWIT-PMM/assets/betriebsdaten.csv`), x kann
      die 5ahwit-L0003 als Vorlage adaptieren
- [ ] **4ahit-x auf SWP-Teach-Muster harmonisieren** (teach/-Unterordner,
      reference/, Hub-UE-Tabelle) — separates Issue wert
- [ ] JG3 Phase 0: L0004 durcharbeiten (teach-Session), danach L0005+
- [ ] Phase 4 (#6): Stil in `selbststudium/NOTES.md` verankern;
      km7-verlauf.html umbauen/archivieren; AGENTS.md-Stil-Verweis

## Notes
- R 4.5.2 (System-Upgrade von 4.3.3; `r-cran-tidyverse` aus apt gefallen).
  Kern-Komponenten lagen in der User-Lib, Meta-Paket `tidyverse` per
  Source-Build nachinstalliert (zusätzlich `libuv1-dev` nötig, PITFALLS).
  `library(tidyverse)` verifiziert. Verifikation sonst mit `Rscript`.
- Betriebsdaten-Kennzahlen (verifiziert): Gesamt 10.014/0.062, Median
  10.000, IQR 0.070; M1 10.00/0.03 · M2 9.98/0.04 · M3 10.06/0.07;
  Ausschuss 6/116 = 5,2 %; Charge 107 = 1 Ausschuss-Teil; 4 NA-Zeilen.
- penguins: 344 Zeilen, 2 davon mit NA (geom_point → 342 Punkte).
- Zeitmodell: 13 echte UE + 2 reservierte DS (1 DS/Woche).
- Stil: `docs/stil-leitfaden.md`; Kohorten-/Teach-Layout: CONVENTIONS.

## Next Session Suggestion
Auswertung der x-HÜ-Kontrolle (Nachholer per Partner-Prinzip); UE 2
(dplyr, Lektion 0002 liegt bereit) vorbereiten; Lektion 0003 für
Kohorte x aus der 5ahwit-Vorlage adaptieren.
