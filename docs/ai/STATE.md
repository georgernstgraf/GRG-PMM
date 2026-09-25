# Project State

Current status as of 2026-09-25.

## Current Focus
**4AHWIT Kohorte y — Lektion 04 (#17):** DS am 2026-09-25. Lektion
`4ahwit-y/2026-09-25__r-kennzahlen-und-verteilungen/lesson.html` baut den
gut sitzenden KM5-Stoff (Kennzahlen, Schätzer/Parameter, `d/p/q/r`) mit R
um und holt das Setup nach (winget, `tidyverse` + `palmerpenguins`,
`glimpse(penguins)` → 344×8). Tages-README mit Pflicht-Aufgaben-Referenz
(Betriebsdaten je Maschine, `pnorm`-Ausschuss, Histogramm). Neu:
Hell/Dunkel-Toggle über `assets/theme.js` + Dark-Variablen in
`assets/lesson.css`. Ab L04 liegen Lektionen im Datums-Ordner; Legacy
`lessons/01–03` unverändert.

**4AHWIT Kohorte x:** DS am 2026-09-22 (HÜ-Kontrolle, Lektion 01 live);
Lektionen 02–03 bereit (`lessons/02–03`, vor der Umstellung).

**5AHWIT R-On-Ramp (#14):** Teach-Workspace im SWP-Muster
(`5ahwit/teach/`) mit Lektionen 01–03; DS startete 2026-09-16 mit
Lektion 01.

**5. Klasse Team-Teaching (#2):** JG5-Semesterpläne mit Strang-Trennung
(Georg = Statistik-Strang mit R, Kollege = FM/Energie + Praxisrahmen).
Nächster Schritt: Absprache mit Kollegen (UE-1-Co-Einstieg, HÜ-Aufteilung,
Matura-Fragenpool).

## Completed (this cycle)
- [x] **Lektion 04 für 4AHWIT-y (#17):** KM5-Recap in R + Setup-Nachholung
      im Datums-Ordner `2026-09-25__r-kennzahlen-und-verteilungen/`
      (`lesson.html` + Tages-README); alle R-Blöcke per Rscript gegen
      penguins/Betriebsdaten verifiziert, Quiz D·C·B·A, kein CDN,
      Links/HTML geprüft. Theme-Toggle `assets/theme.js` + Dark-Variablen
      in `assets/lesson.css`.
- [x] **create-lesson-Skill (#83, opencode-helpers):** Ablage immer im
      Datums-Ordner `YYYY-MM-DD__thema/lesson.html` + Tages-README;
      Aufgaben-Referenz im README als Pflicht; Quiz 1–5; Tests grün.
- [x] **Betriebsdaten-Kennzahlen (verifiziert):** M1 10.00/0.032 (p_out≈0),
      M2 9.98/0.040 (0.00076), M3 10.06/0.070 (0.106); Toleranz
      10,00 ± 0,15.

## Pending
- [ ] **Einstiegstest 4HWIT** korrigieren → Bonus-UE bzw. UE 4–5 anpassen
      (Termin offen, Repo GRG-PMM-T)
- [ ] **Einstiegstest 5HWIT**: DOE-Block + Umwelt-Vorwissen auswerten
- [ ] **R/RStudio auf Schul-Laptops der 5AHWIT bestätigen** (Gap in
      `5ahwit/teach/RESOURCES.md`)
- [ ] **4ahit-x auf SWP-Teach-Muster harmonisieren** (separates Issue wert)
- [ ] JG3 Phase 0: L0004 durcharbeiten (teach-Session), danach L0005+
- [ ] Phase 4 (#6): Stil in `selbststudium/NOTES.md` verankern;
      km7-verlauf.html umbauen/archivieren; AGENTS.md-Stil-Verweis

## Notes
- R 4.5.2 mit `tidyverse` und `palmerpenguins` installiert; Verifikation
  per `Rscript` (Repo-Root als Arbeitsverzeichnis).
- penguins: 344 Zeilen, 2 NA; body_mass_g mean 4201.75, median 4050,
  sd 801.95, var 643131.1, IQR 1200.
- Zeitmodell: 13 echte UE + 2 reservierte DS (1 DS/Woche).
- Stil: `docs/stil-leitfaden.md`; Kohorten-/Teach-Layout: CONVENTIONS.

## Next Session Suggestion
Rückblick auf die y-DS (hat der Toggle + Paket-Setup funktioniert?);
nächste Lektion on demand (z. B. UE 5 Konfidenzintervalle — Bestellformat
siehe AGENTS.md §10, Bau nach `create-lesson`-Skill).
