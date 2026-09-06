# Handoff

## Open Tasks

### Unterrichts-Skill Task C, Stufe 3: jahrgangsspezifische Extrakte (#8)
**Priority:** high
**Context:** Migration auf `lehrplan/`-Konvention abgeschlossen (#8).
Komplett-Extrakt `lehrplan/pmm-lehrplan-text.md` existiert (alle 5
Jahrgänge). Klassen-Zuordnung steht in `lehrplan/METADATA.md`
(IV. → KM7+KM8 → 4HWIT; V. → KM9 → 5HWIT).
**Action:** `lehrplan/4HWIT/4HWIT.lehrplan.md` (nur IV. Jahrgang,
KM7+KM8) und `lehrplan/5HWIT/5HWIT.lehrplan.md` (nur V. Jahrgang, KM9)
aus dem Komplett-Extrakt erstellen — Header mit Klassenname ↔ Jahrgang ↔
KM-Mapping, Rechtsgrundlage, Extraktionsdatum. Manuelle Annotationen im
Quellfile nicht verlieren.

### Unterrichts-Skill Task B: RIS-Novellen-Check
**Priority:** medium
**Context:** Noch nie dokumentiert durchgeführt. Änderungshistorie in
METADATA.md endet bei 2021 (BGBl. II Nr. 74/2017, Anlage 1.28
unverändert). Gesetzesnummer der konsolidierten Fassung: 20009288.
**Action:** Konsolidierte Fassung von ris.bka.gv.at holen, Novellen der
letzten 12 Monate gegen Änderungshistorie prüfen, Ergebnis mit
Fassungsdatum dokumentieren.

### Issue #6: Phase 3 — Stil-Leitfaden + Retrofit UE 1–2
**Priority:** high
**Context:** Semesterpläne Sem 7+9 korrekt (13 UE + 2 Reserve,
R4DS-Buchreihenfolge). `lehrplan/kompetenzmodule/` steht. UE-Ordner
liegen jetzt unter `lehrplan/4HWIT/`.
**Action:** `docs/stil-leitfaden.md` schreiben, dann Retrofit
`lehrplan/4HWIT/01-…`, `02-…` auf Buch-Reihenfolge (ggplot zuerst).
Danach Phase 4 (NOTES.md/CONVENTIONS.md/AGENTS.md).

### JG3-Lern-Tracks (Phase 0) fortsetzen
**Priority:** high
**Context:** Georg lernt das JG3-Vorwissen (KM5+KM6) selbst, bevor er KM7
unterrichtet — er ist Statistik-Anfänger (LR 0001). Track 1 L0003
(Zufallsvariablen) **abgeschlossen** (LR 0007).
**Action:** L0004 (Diskrete Verteilungen: Binomial/Hypergeometrisch/
Poisson mit `dbinom`/`pbinom`/`qbinom`/`rbinom`, `dhyper`, `dpois`)
bauen — eine Lektion pro Session. Danach L0005–0015 fortlaufend.

### Einstiegstest 4HWIT — nach Korrektur KM7-Plan adaptieren
**Priority:** medium (fällig nach 2026-09-07)
**Context:** Einstiegstests überarbeitet und committet (GRG-PMM-T #3,
commit cbafecd, 2026-08-21): 4HWIT 50/200 verify-konform, 5HWIT 60/240
mit Block 6 Umweltmanagement. Prüfungstermine 2026-09-07 (4HWIT) und
2026-09-08 (5HWIT).
**Action:** Nach der Prüfung mit dem `knowledge-assessment`-Skill
korrigieren; bei KM5/KM6-Lücken Bonus-UE im Semesterplan aktivieren.
Für 5HWIT: Umwelt-Vorwissen auswerten (Block 6) und ggf. UE 12 anpassen.

## Blocked / Waiting
- **Phase 6 (#6):** ❌ **ABGEBROCHEN.** O'Reilly hat Verlagsdeal mit
  deutschem Verlag (Hadley, 2026-07-22), daher keine Community-Übersetzung
  möglich. Englisch bleibt Pflichtlektüre. Thread freundlich geschlossen
  (Georg, 2026-07-23).
