# Project State

Current status as of 2026-07-18.

## Current Focus
**Issue #6 — R4DS als Hauptmaterial.** Phase 1 (Abdeckungsmatrix +
RESOURCES-Update) ist erledigt, committet und gepusht (`fd81240`).
Kernbefund: R4DS deckt die R-Toolchain voll ab (KM7 UE 1–3, KM6
„Prüfergebnisse darstellen"), 0 % des Industrie-Statistik-Kerns →
Komplement-Kanon: Navarro LSR (CC BY-SA), ModernDive (CC BY-NC-SA),
NIST e-Handbook (US-Gov), Paket-Vignetten. Lizenz-Grundregel:
„link, don't copy" — eigene Texte sind Originale (R4DS = CC BY-NC-ND 3.0).
Parallel laeuft weiterhin: JG3-Selbststudium Phase 0 (L0003 in Arbeit).

## Completed (this cycle)
- [x] Issue #6 angelegt (R4DS-Hauptmaterial: Abdeckung, Stil, Retrofit,
      DE-Übersetzung) mit Phasen-Checkliste
- [x] `docs/lehrplan/r4ds-abdeckung.md` — Abdeckungsmatrix KM5–KM9b ↔
      R4DS (29 Kap.) ↔ Komplemente, inkl. Lizenz-Tabelle (alle verifiziert:
      R4DS CC BY-NC-ND 3.0, penguins CC0, ModernDive CC BY-NC-SA,
      Navarro CC BY-SA, NIST US-Gov)
- [x] `selbststudium/RESOURCES.md` — r4ds-solutions, NIST e-Handbook,
      ModernDive ergänzt; Gaps-Sektion aktualisiert
- [x] Recherche Community-Übersetzung: offizieller Weg dokumentiert
      (O'Reilly-Freigabe pro Sprache, hadley/r4ds#955 → #1711/#1783);
      deutsche Anfrage #1414 unbeantwortet seit 2023-04, kein DE-Repo
- [x] Kommentar-Entwurf für hadley/r4ds#1414 erstellt (als Kommentar
      auf #6 abgelegt; Georg postet ihn selbst)
- [x] Issue-Kommentar Phase-1-Bericht auf #6

## Pending
- [ ] Phase 2: Georg reviewed `docs/lehrplan/r4ds-abdeckung.md`
- [ ] Phase 3: `docs/stil-leitfaden.md` + Retrofit UE 1–2 (Buch-Reihenfolge:
      ggplot zuerst; Folien+Hausaufgaben; slides.css-Callouts; Semesterplan
      UE 1–3; ggf. Ordner-Umbenennung)
- [ ] Phase 4: Stil in `selbststudium/NOTES.md` + CONVENTIONS.md verankern,
      AGENTS.md-Verweis
- [ ] Georg: #1414-Kommentar auf hadley/r4ds posten (Entwurf liegt auf #6)
- [ ] JG3 Phase 0: L0003 abnehmen → LR Meisterschaft → L0004 (Diskrete
      Verteilungen mit d/p/q/r) bauen; danach L0005–0015 fortlaufend
- [ ] Einstiegstest 4AHWIT (2026-09-07, GRG-PMM-T): nach Korrektur
      KM7-Plan adaptieren
- [ ] Issue #1: Kommentar beim Commit (Stundenvolumen geklärt;
      Fachzuordnung offen)

## Blockers
- Phase 3 wartet auf Georgs Review der Abdeckungsmatrix (Phase 2).
- Phase 6 (DE-Übersetzung) wartet auf Hadley/O'Reilly-Freigabe;
  vorher max. 1 privates Musterkapitel (ND).

## Notes
- R 4.5 / Ubuntu 26.04, tidyverse 2.0.0, Rscript: /usr/bin/Rscript.
- 1 Doppelstunde/Woche pro Klasse → ~15 DS/Semester/KM.
- Drei Artefakte pro UE: Lern-Lektion (selbststudium/lessons/00NN),
  Praesentation+HA (4AHWIT/NN-slug/), reveal.js via CDN.
- NN-slug/ wird zu YYYY-MM-DD_slug/ umbenannt, wenn Unterrichtsdaten feststehen.

## Next Session Suggestion
Wenn Georg die Matrix abgenommen hat: Phase 3 starten —
`docs/stil-leitfaden.md` schreiben, dann UE 1 Retrofit (Buch-Reihenfolge,
R4DS-Stimme, Lektüre-Box). Sonst: JG3-L0003-Abnahme wie bisher.
