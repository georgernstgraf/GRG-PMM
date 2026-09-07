# Project State

Current status as of 2026-09-07.

## Current Focus
**Unterrichts-Skill durchgearbeitet (#8)** und docs/ai aufgeräumt (#9):
Migration auf `lehrplan/`-Konvention, jahrgangsspezifische Extrakte und
RIS-Novellen-Check abgeschlossen; Handoff-Drift bereinigt.

## Completed (this cycle)
- [x] **Migration `lehrplan/` (#8)**: `4HWIT/`, `5HWIT/`,
      `kompetenzmodule/`, `docs/lehrplan/` → `lehrplan/`
- [x] **AGENTS.md/README.md** auf neue Pfade umgestellt
- [x] **Klassen-Zuordnung** in `lehrplan/METADATA.md` ergänzt
- [x] **Task C:** `lehrplan/4HWIT/4HWIT.lehrplan.md` (IV. JG, KM7+KM8)
      und `lehrplan/5HWIT/5HWIT.lehrplan.md` (V. JG, KM9) extrahiert
- [x] **Task B (Novellen-Check, abgefragt 2026-09-06):** RIS meldet
      „zuletzt geändert durch BGBl. II Nr. 250/2021" — keine Novellen in
      den letzten 12 Monaten. 250/2021 (Ethik) betrifft Anlage 1.28 nur
      in Stundentafel (Religion/Ethik) + Abschnitt VII A; **Abschnitt 5
      (Prozessmanagement) unverändert** → Extrakte gültig. Novellen-PDF
      abgelegt (`2021-06-07_BGBl-II-250_Novelle-Ethik.pdf`).
- [x] **METADATA.md-Historie korrigiert:** falsche 74/2017-Attribution
      entfernt (74/2017 = IngG-Fachrichtungsverordnung, berührt 262/2015
      nicht); 395/2019 (Bekanntmachung Religionslehrpläne) + 250/2021
      belegt eingetragen
- [x] **docs/ai aufgeräumt (#9):** Einstiegstest-Termine „diese Woche"
      (07.09. = Konferenztag), JG3-Task auf „L0004 durcharbeiten"
      korrigiert, PDF-Task entfernt (Präfix nur für Gesetzestexte)

## Pending
- [ ] **Phase 3 (#6):** `docs/stil-leitfaden.md` + Retrofit
      `lehrplan/4HWIT/01-…`, `02-…` (ggplot zuerst)
- [ ] **JG3 Phase 0: L0004 durcharbeiten** (teach-Session; L0004 ist
      gebaut/committet, e732369); danach L0005 bauen und L0005–0015
      fortlaufend
- [ ] **Einstiegstest 4HWIT** (diese Woche, nach Konferenztag 2026-09-07;
      konkrete DS offen, GRG-PMM-T): nach Korrektur Bonus-UE bzw. UE 4–5
      anpassen
- [ ] **Einstiegstest 5HWIT** (diese Woche, konkret offen, GRG-PMM-T):
      DOE-Block anpassen + Umwelt-Vorwissen auswerten
- [ ] Klein: ISO-Datumspräfix in AGENTS.md auf RIS-Gesetzestexte
      präzisieren (Kundmachungsdatum = Fetch-Frische); Referenz-PDFs in
      `Unterlagen/` sind ausgenommen (#9)

## Blockers
- Keine.

## Notes
- R 4.5 / Ubuntu 26.04, tidyverse 2.0.0, Rscript: /usr/bin/Rscript.
- Zeitmodell: 18 Schulwochen offiziell → 13 echte UE + 2 reservierte DS.
- Klassen-Ordner generisch (`lehrplan/4HWIT`, `lehrplan/5HWIT`).
- **Verify-Workflow für künftige Tests:** `verify_quiz.py` in
  `GRG-PMM-T/tools/` nach jeder Test-Generierung.
- Historische Pfad-Referenzen in `docs/ai/` (`docs/lehrplan/`) bewusst
  nicht ersetzt — Archiv-Charakter.
- RIS-Nachweis Novellen-Check: NOR40234889-Kopf (abgefragt 2026-09-06)
  + Artikel 1 von BGBl. II Nr. 250/2021 (SS 81–83 betreffen Anlage 1.28).
- Unterrichts-Skill-Erkenntnisse (NOR-Kopf, ELI/BgblAuth-Kette) sind in
  den globalen Skill persistiert (opencode-helpers, 5333f09) — nicht
  projektspezifisch.

## Next Session Suggestion
Phase 3 (#6) starten: `docs/stil-leitfaden.md` schreiben, dann UE-1–2-
Retrofit auf ggplot-Reihenfolge.
