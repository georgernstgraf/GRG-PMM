# Project State

Current status as of 2026-09-10.

## Current Focus
**lehrplan-Skill-Konformität vollständig (#10, #11, #12):** Retrofit
(pmm-hwit + unterricht/HWIT-PMM), Infrastruktur (RIS.md, Einheiten-Rolle,
5ahwit-Doku) und die komplette Erläuterungs-Ebene sind abgeschlossen —
der Skill ist in diesem Repo vollständig ausgeführt.

## Completed (this cycle)
- [x] **Layout-Retrofit (#10, a140b1c):** Zweig-Ordner `lehrplan/pmm-hwit/`
      angelegt; Unterrichts-Ebene nach `unterricht/HWIT-PMM/` getrennt
- [x] **Infrastruktur (#11, 3bdb8de):** `pmm-hwit/RIS.md` (Rechtsstand
      262/2015 idF 250/2021, Abschnitt 5 unverändert, Re-Check Sommer 2027);
      DECISIONS: Semesterpläne decken Einheiten-Rolle ab; METADATA:
      Einheiten-Vermerk, Root-Klassenordner `5ahwit/`, RIS.md-Inventar
- [x] **Erläuterungs-Ebene (#12, 9353925):** `lehrplan-annotator`-Subagent
      (glm-5.3 non-flash, globaler Agent aus opencode-helpers #70) hat alle
      drei Extrakte annotiert — 1068 Insertions, 0 Deletions (Gesetzestext
      byte-identisch); LEHRPLAN.md 19/19 Bullet-Erläuterungen + 7 Überblicke
      + 15 Lehrstoff-Erläuterungen; 4HWIT (11) und 5HWIT (10) spiegeln den
      Komplett-Extrakt wortidentisch
- [x] **lehrplan-Skill erweitert (opencode-helpers #71, 3bb3138):**
      Root-Klassenordner-Konvention (klein = Kohorten-Ablage am Repo-Root)
      dokumentiert + Konformitäts-Check-Punkt ergänzt

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
- **Erläuterungs-Ebene (seit #12):** Annotationen werden vom globalen
  `lehrplan-annotator`-Subagent geschrieben (opencode-helpers `agents/`,
  Symlink `~/.config/opencode/agents`); Review-Praxis: Diff muss 0
  Deletions im Gesetzestext zeigen; Klassen-Extrakte spiegeln
  LEHRPLAN.md wortidentisch.
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
