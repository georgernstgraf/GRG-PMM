# Handoff

## Open Tasks

### 5AHWIT: R-Installation auf Schul-Laptops bestätigen (#14-Fortsatz)
**Priority:** high (vor der nächsten 5AHWIT-DS)
**Context:** Setup-Log (2026-09-09) nennt nur git/VS Code — R/RStudio
nicht bestätigt (Gap in `5ahwit/teach/RESOURCES.md`). Lektionen 01–03
setzen R voraus.
**Action:** In der DS klären (oder Anleitung
`selbststudium/reference/r-setup-linux.html` als HÜ-Anhang mitgeben).

### Einstiegstest 4HWIT — nach Korrektur KM7-Plan adaptieren
**Priority:** medium (fällig nach der Prüfung)
**Context:** Einstiegstests überarbeitet (GRG-PMM-T #3, commit cbafecd,
2026-08-21): 4HWIT 50/200, 5HWIT 60/240 mit Block 6 Umweltmanagement.
Auswertung 4AHWIT liegt in `4ahwit-y/2026-09-11__einstiegstest/`
(KM5-Blöcke gut verankert; Lücken Block 3+5).
**Action:** Mit dem `knowledge-assessment`-Skill korrigieren; bei
KM6-Lücken Bonus-UE aktivieren. Für 5HWIT: Umwelt-Vorwissen (Block 6)
auswerten und gegen die On-Ramp-Beobachtungen abgleichen (LR 0001,
`5ahwit/teach/learning-records/`).

### 4ahit-x auf SWP-Teach-Muster harmonisieren
**Priority:** low
**Context:** x nutzt das Legacy-Layout (Workspace-Dateien am Ordner-Root,
kein reference/, keine Hub-UE-Tabelle, kein Theme-Toggle); Neu-Lektionen
ab L04 liegen in y bereits in Datums-Ordnern (CONVENTIONS).
**Action:** Eigenes Issue, wenn Georg es will.

### Phase 4 (#6): Stil verankern + Selbststudium-Synchronisation
**Priority:** low
**Context:** `docs/stil-leitfaden.md` steht; UE 1–3 geretrofit.
Selbststudium-Lektionen 0001/0002 + `km7-verlauf.html` referenzieren die
alte UE-Struktur — bewusst unangetastet (LR 0005).
**Action:** Stil in `selbststudium/NOTES.md` verankern; km7-verlauf.html
umbauen oder archivieren; AGENTS.md-Stil-Verweis ergänzen.

### JG3-Lern-Tracks (Phase 0) fortsetzen
**Priority:** high
**Context:** Georg lernt JG3-Vorwissen (KM5+KM6) selbst — Statistik-
Anfänger (LR 0001). Track 1 L0003 abgeschlossen (LR 0007); L0004
gebaut+committet (e732369, #5).
**Action:** L0004 durcharbeiten (teach-Session; Binomial/Hypergeometrisch/
Poisson), mit LR dokumentieren; danach L0005 bauen, L0005–0015 fortlaufend.

## Blocked / Waiting
- **Phase 6 (#6):** ❌ ABGEBROCHEN. O'Reilly hat Verlagsdeal mit deutschem
  Verlag (Hadley, 2026-07-22) — keine Community-Übersetzung möglich.
  Thread freundlich geschlossen (Georg, 2026-07-23).
- ~~`tidyverse`-Meta-Paket~~ → ERLEDIGT (2026-09-16): r-cran-tidyverse via
  apt als Binärpaket installiert; kein Compiler nötig (PITFALLS).
