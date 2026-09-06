# Handoff

## Open Tasks

### Issue #6: Phase 3 — Stil-Leitfaden + Retrofit UE 1–2
**Priority:** high
**Context:** Semesterpläne Sem 7+9 korrekt (13 UE + 2 Reserve,
R4DS-Buchreihenfolge). `lehrplan/kompetenzmodule/` steht. UE-Ordner
liegen jetzt unter `lehrplan/4HWIT/`. Unterrichts-Skill ist durch
(#8): Migration, Extrakte, Novellen-Check erledigt.
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

### 30-MB-PDF ohne Konventionsname (klein)
**Priority:** low
**Context:** Commit `ab7259c` („ACP") legte
`Unterlagen/Skriptum_Grundlagen der Statistik und Stochastik_2026.pdf`
(30 MB) ohne ISO-Datumspräfix ab.
**Action:** Bei Gelegenheit umbenennen auf
`2026_Skriptum-grundlagen-statistik-stochastik.pdf` oder in `lehrplan/`
mit `YYYY-MM-DD_`-Präfix verschieben — oder in Unterlagen belassen und
AGENTS.md-Konvention dort bewusst ausnehmen.

## Blocked / Waiting
- **Phase 6 (#6):** ❌ **ABGEBROCHEN.** O'Reilly hat Verlagsdeal mit
  deutschem Verlag (Hadley, 2026-07-22), daher keine Community-Übersetzung
  möglich. Englisch bleibt Pflichtlektüre. Thread freundlich geschlossen
  (Georg, 2026-07-23).
