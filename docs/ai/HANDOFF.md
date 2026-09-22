# Handoff

## Open Tasks

### 5AHWIT: R-Installation auf Schul-Laptops bestätigen (#14-Fortsatz)
**Priority:** high (vor der nächsten 5AHWIT-DS)
**Context:** Setup-Log (2026-09-09) nennt nur git/VS Code — R/RStudio
nicht bestätigt (Gap in `5ahwit/teach/RESOURCES.md`). L0002/L0003 als
HÜ setzen R voraus.
**Action:** In der DS klären (oder Anleitung
`selbststudium/reference/r-setup-linux.html` als HÜ-Anhang mitgeben).

### Lektion 0003 für 4ahit-x bauen (#13-Fortsatz)
**Priority:** medium
**Context:** Der Betriebsdaten-Gap ist geschlossen:
`unterricht/HWIT-PMM/assets/betriebsdaten.csv` existiert (verifiziert,
 Kennzahlen in STATE). Die 5ahwit-Lektion
`5ahwit/teach/lessons/0003-daten-einlesen-deskriptiv.html` ist die
Vorlage; die x-Version braucht Pfade/Verweise auf die x-Layout-Konvention
(HA-Link auf `../../unterricht/HWIT-PMM/03-…/hausaufgabe.md`).
**Action:** Adaptieren, R-Code identisch verifiziert (gleiche Daten),
Quiz-Richtige bleibt A.

### Kohorte y: Lektionen spiegeln oder referenzieren
**Priority:** medium
**Context:** `4ahit-y/` hat nur README. Installationstag 2026-09-18
ist erledigt (winget-Setup + GitHub-Repo „PMM", im y-README
protokolliert). Offen: Mirror der Lektionen,
Symlink oder reiner Link auf Kohorte x. Wirtschaftlich: Referenzieren
(spiegeln = Doppel-Pflege).
**Action:** Mit Georg entscheiden (Bevorzugung: Link auf
`4ahit-x/lessons/…` im y-README), dann README ergänzen.

### 4ahit-x auf SWP-Teach-Muster harmonisieren
**Priority:** low
**Context:** x nutzt das Legacy-Layout (Workspace-Dateien am Ordner-
Root, kein reference/, keine Hub-UE-Tabelle); 5ahwit zeigt das
SWP-Muster (CONVENTIONS). Harmonisierung = git mv nach `4ahit-x/teach/`,
Links anpassen, README zum Klassenhub ausbauen.
**Action:** Eigenes Issue, wenn Georg es will.

### Einstiegstest 4HWIT — nach Korrektur KM7-Plan adaptieren
**Priority:** medium (fällig nach der Prüfung)
**Context:** Einstiegstests überarbeitet und committet (GRG-PMM-T #3,
commit cbafecd, 2026-08-21): 4HWIT 50/200, 5HWIT 60/240 mit Block 6
Umweltmanagement. Termine lt. Stundenplan, noch offen (2026-09-07).
**Action:** Nach der Prüfung mit dem `knowledge-assessment`-Skill
korrigieren; bei KM5/KM6-Lücken Bonus-UE aktivieren. Für 5HWIT:
Umwelt-Vorwissen auswerten (Block 6) und Ergebnis gegen die
On-Ramp-Beobachtungen abgleichen (LR 0001, `5ahwit/teach/learning-records/`).

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
