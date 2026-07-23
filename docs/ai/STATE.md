# Project State

Current status as of 2026-07-23.

## Current Focus
**Issue #6 — R4DS als Hauptmaterial.** Die Struktur steht jetzt:
`ressourcen-matrix.md` (themen-zentriert, repariert) + `kompetenzmodule/`
(Steckbriefe km3–km9b, km7/km9a voll) + korrekte Semesterpläne Sem 7+9
(13 echte UE + 2 Reserve, R4DS-Buchreihenfolge, Ressourcen-Anker pro UE).
Ordner generisch umbenannt: 4HWIT/5HWIT (deckt Parallelklassen ab).
Phase 6 (DE-Übersetzung) endgültig ❌ (O'Reilly-Verlagsdeal, Hadley
2026-07-22). Nächster Schritt: Phase 3 (Stil-Leitfaden + UE-1–2-Retrofit).

## Completed (this cycle)
- [x] Phase 1+2: Abdeckungsmatrix + Georgs Review (2026-07-23)
- [x] Phase 6: abgebrochen nach Hadleys Antwort (O'Reilly-DE-Deal);
      Thread auf hadley/r4ds#1414 freundlich geschlossen
- [x] **Matrix repariert:** KM3-Header-Fix (war „3./4. Sem."), Klassen-
      Angaben pro KM (4HWIT/5HWIT), Eigenbedarf nach Unterrichts-
      zuständigkeit gesplittet (von Georg vs. nicht von Georg)
- [x] **`kompetenzmodule/` neu an Root:** README (Semester↔Klasse↔KM-
      Mapping, Zeitmodell 13+2) + km3–km9b Steckbriefe (km7/km9a voll
      mit Wissen/Verstehen/Können, Rest Gerüst mit Lehrplan-Fakten)
- [x] **Ordner-Rename:** `git mv 4AHWIT→4HWIT`, `5AHWIT→5HWIT` +
      alle Markdown-Referenzen (README, AGENTS, docs/ai, METADATA,
      Unterlagen, selbststudium) aktualisiert
- [x] **Semesterplan Sem 7 neu** (`4HWIT/semesterplan-ws.md`): 13 UE +
      2 Reserve (Einstiegstest, LF/Admin) + optionale Bonus-UE;
      UE 1–3 R4DS-Whole-Game; Bestandsordner 01/02 als Retrofit-vermerkt
- [x] **Semesterplan Sem 9 neu** (`5HWIT/semesterplan-ws.md`): 13 UE +
      2 Reserve (2× LF); Weibull-Statistik nach KM9b verschoben (war
      fälschlich vorweggenommen); D-optimal in Workshop I integriert

## Pending
- [ ] **Phase 3 (#6):** `docs/stil-leitfaden.md` (R4DS-Stimme auf Deutsch)
      + Retrofit `4HWIT/01-…`, `02-…` auf Buch-Reihenfolge (ggplot zuerst);
      generierte HTMLs (praesentation.html, selbststudium-Lessons) ziehen
      dabei mit auf 4HWIT/5HWIT-Bezeichnung
- [ ] Phase 4: Stil in `selbststudium/NOTES.md` + CONVENTIONS.md verankern,
      AGENTS.md-Verweis
- [ ] JG3 Phase 0: L0003 abnehmen → LR Meisterschaft → L0004 (Diskrete
      Verteilungen mit d/p/q/r) bauen; danach L0005–0015 fortlaufend
- [ ] Einstiegstest 4HWIT (2026-09-07, GRG-PMM-T): nach Korrektur
      Bonus-UE aktivieren bzw. UE 4–5 anpassen
- [ ] Issue #1: Kommentar beim Commit (Stundenvolumen geklärt;
      Fachzuordnung offen)

## Blockers
- Keine akuten. Phase 3 ist entblockt (Semesterpläne fixiert).

## Notes
- R 4.5 / Ubuntu 26.04, tidyverse 2.0.0, Rscript: /usr/bin/Rscript.
- Zeitmodell: 18 Schulwochen offiziell → 13 echte UE + 2 reservierte DS
  (Ausfälle einkalkuliert); Bonus-UE bei Glücksfall.
- Drei Artefakte pro UE: Lern-Lektion (selbststudium/lessons/00NN),
  Praesentation+HA (4HWIT/NN-slug/), reveal.js via CDN.
- NN-slug/ wird zu YYYY-MM-DD_slug/ umbenannt, wenn Unterrichtsdaten feststehen.
- Klassen-Ordner generisch (4HWIT/5HWIT) — Parallelklassen-sicher.

## Next Session Suggestion
Phase 3 starten: `docs/stil-leitfaden.md` schreiben (R4DS-Stimme auf
Deutsch: Einstiegsfrage → Ziel-Artefakt → inkrementeller Aufbau →
„Jetzt du!"-Übungen → typische Fehler → Zusammenfassung/Ausblick;
Lektüre-Box), dann UE-1–Retrofit (ggplot zuerst, R4DS Kap. 1–2).
Danach: JG3 L0003-Abnahme.
