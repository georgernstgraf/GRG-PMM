# Project State

Current status as of 2026-09-07.

## Current Focus
**Phase 3 (#6) umgesetzt:** Stil-Leitfaden geschrieben, UE 1–3 auf
R4DS-Buchreihenfolge geretrofit (ggplot zuerst). Das 4HWIT-Wintermaterial
ist vollständig in der neuen Struktur.

## Completed (this cycle)
- [x] **Unterrichts-Skill durchgearbeitet (#8)**: `lehrplan/`-Migration,
      Extrakte 4HWIT/5HWIT, Novellen-Check (keine Novellen in den letzten
      12 Monaten; 250/2021 betrifft PMM nicht), METADATA-Korrektur
- [x] **docs/ai aufgeräumt (#9)**: Termine entstaled, JG3-Stand korrigiert
- [x] **Phase 3 (#6):** `docs/stil-leitfaden.md` (6 Bausteine + Lektüre-Box
      + Code-Stil + HA-Format + Self-Check); R4DS-Kapitel-URLs verifiziert
      (EDA.html mit Großschreibung!)
- [x] **UE-Retrofit:** Ordner umgebaut (git mv) —
      `01-datenvisualisierung-ggplot` (neu), `02-daten-transformieren-dplyr`
      (aus Alt-UE2), `03-daten-einlesen-deskriptiv` (Alt-UE2-Rest); alle
      drei Decks + HAs im R4DS-Stimm-Muster neu geschrieben
- [x] **Zahlen verifiziert:** penguins-Gruppenkennzahlen per R gerechnet
      (palmerpenguins installiert); Torgersen/Dream-Werte in UE-2-Tabelle
      korrigiert (3688/455, 3706/445)
- [x] **Semesterplan aktualisiert:** UE-Tabelle mit Ordner-Spalte, Retroft-
      Hinweis entfernt, R1-Termin „diese Woche", Pfadfixes

## Pending
- [ ] **Phase 4 (#6):** Stil in `selbststudium/NOTES.md` verankern;
      km7-verlauf.html (noch 15-UE-Struktur) umbauen oder archivieren;
      AGENTS.md-Verweis auf Stil-Leitfaden
- [ ] **JG3 Phase 0: L0004 durcharbeiten** (teach-Session; gebaut/committet
      e732369); danach L0005 bauen und L0005–0015 fortlaufend
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
- R 4.5 / Ubuntu 26.04, tidyverse 2.0.0, **palmerpenguins neu installiert**;
  Rscript: /usr/bin/Rscript.
- Zeitmodell: 18 Schulwochen offiziell → 13 echte UE + 2 reservierte DS.
- Klassen-Extrakte generisch (`lehrplan/pmm-hwit/4HWIT/`, `lehrplan/pmm-hwit/5HWIT/`); Semesterpläne unter `unterricht/HWIT-PMM/`.
- **Verify-Workflow für künftige Tests:** `verify_quiz.py` in
  `GRG-PMM-T/tools/` nach jeder Test-Generierung.
- Historische Pfad-Referenzen in `docs/ai/` (`docs/lehrplan/`) bewusst
  nicht ersetzt — Archiv-Charakter.
- Unterrichts-Skill-Erkenntnisse (NOR-Kopf, ELI/BgblAuth-Kette) sind in
  den globalen Skill persistiert (opencode-helpers, 5333f09).
- Selbststudium-Lektionen 0001/0002 + km7-verlauf.html referenzieren die
  alte UE-Struktur — historisch belassen, Phase 4 entscheidet Umbau/Archiv.

## Next Session Suggestion
Einstiegstest-Tag abwarten (diese Woche): danach mit dem
`knowledge-assessment`-Skill korrigieren und Semesterplan adaptieren.
Parallel: Phase 4 (#6) oder JG3-L0004 durcharbeiten.
