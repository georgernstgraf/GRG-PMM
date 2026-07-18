# Handoff

## Open Tasks

### Issue #6: R4DS als Hauptmaterial — Phase 2+3 (wartet auf Georg)
**Priority:** high
**Context:** Phase 1 committed (`fd81240`): Abdeckungsmatrix
`docs/lehrplan/r4ds-abdeckung.md` (KM5–KM9b ↔ R4DS ↔ Komplemente,
Lizenzen verifiziert) + RESOURCES.md-Update. Kern: R4DS = Toolchain
(UE 1–3), 0 % Industrie-Statistik → Navarro/ModernDive/NIST füllen die
Lücke. Issue #6 enthält die Phasen-Checkliste; Kommentar-Entwurf für
hadley/r4ds#1414 liegt als Kommentar auf #6.
**Action:** Sobald Georg die Matrix abgenommen hat: Phase 3 —
`docs/stil-leitfaden.md` (R4DS-Stimme auf Deutsch: Einstiegsfrage →
Ziel-Artefakt → inkrementeller Aufbau → „Jetzt du!"-Übungen → typische
Fehler → Zusammenfassung/Ausblick; Lektüre-Box mit Kapitel-Link) +
Retrofit UE 1–2 an Buch-Reihenfolge (ggplot vor Syntax) + Semesterplan
UE 1–3 anpassen. Danach Phase 4 (NOTES.md/CONVENTIONS.md/AGENTS.md).

### JG3-Lern-Tracks (Phase 0) fortsetzen
**Priority:** high
**Context:** Georg lernt das JG3-Vorwissen (KM5+KM6) selbst, bevor er KM7
unterrichtet — er ist Statistik-Anfänger (LR 0001). 3 Tracks × 13 Lektionen
in `selbststudium/reference/jg3-verlauf.html`. Setup steht (MISSION Phase 0,
LR 0006, Glossar-JG3-Begriffe). Track 1 L0003 (Zufallsvariablen) ist erstellt
und wird gerade durchgearbeitet. Hinweis aus #6-Recherche: die JG3-Tracks
decken sich fast 1:1 mit dem Komplement-Kanon (Verteilungen ≙ Navarro
Kap. 9–10, Schätzen & Inferenz ≙ ModernDive Kap. 7–8, Lebensdauer ≙
NIST Kap. 8) — Lektüre-Zuweisungen in neuen Lektionen daran ausrichten.
**Action:** L0003 abnehmen (Quizzes). Wenn sitzt: LR für Meisterschaft schreiben,
dann L0004 (Diskrete Verteilungen: Binomial/Hypergeom/Poisson mit `dbinom`/
`pbinom`/`rbinom`) bauen — eine Lektion pro Session. Danach L0005–0015
fortlaufend. KM7-Ausbau pausiert bis JG3 sitzt.

### Einstiegstest 4AHWIT — nach Korrektur KM7-Plan adaptieren
**Priority:** medium (fällig nach 2026-09-07)
**Context:** Entry test liegt im Test-Repo
[georgernstgraf/GRG-PMM-T](https://github.com/georgernstgraf/GRG-PMM-T)
(commit `55bade9`, dort Issue #1). Prüfungstermin 2026-09-07.
**Action:** Nach der Prüfung mit dem `knowledge-assessment`-Skill aus dem
GRG-PMM-T-Arbeitsverzeichnis korrigieren; bei KM5/KM6-Lücken KM7-Plan
kompensieren (mit #6-Matrix abstimmen).

## Blocked / Waiting
- **Phase 6 (#6):** DE-Community-Übersetzung — Kommentar ist seit
  2026-07-18 auf hadley/r4ds#1414 gepostet
  (comment-5012984740, Account georgernstgraf; Entwurf-Text auch als
  Kommentar auf #6 archiviert). Warten auf Hadley (O'Reilly-Freigabe DE)
  bzw. petzi53. Nach 2–3 Wochen ohne Antwort: höfliches Follow-up im
  selben Thread. Vor Freigabe: max. 1 privates Musterkapitel
  (ND — keine Veröffentlichung).
