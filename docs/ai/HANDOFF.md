# Handoff

## Open Tasks

### Lektion 0003 + Betriebsdaten-Gap (#13-Fortsatz)
**Priority:** medium
**Context:** Kohorte x hat Lektionen 0001 (ggplot, UE 1) und 0002
(dplyr, UE 2) — R-Code verifiziert. UE 3 (Daten einlesen & deskriptiv)
braucht laut `4ahwit-x/RESOURCES.md` Betriebs-nahe Übungsdaten
(Messreihe, Charge, Maschine) — Gap noch offen.
**Action:** Eigenmaterial beschreiben/erzeugen (oder echte Schuldaten),
dann Lektion 0003 bauen; Quiz-Richtige-Position rotieren (0001: C,
0002: B → 0003: A oder D).

### Kohorte y: Lektionen spiegeln oder referenzieren
**Priority:** medium
**Context:** `4ahwit-y/` hat nur README. Offen: Mirror der Lektionen,
Symlink oder reiner Link auf Kohorte x. Wirtschaftlich: Referenzieren
(spiegeln = Doppel-Pflege).
**Action:** Mit Georg entscheiden (Bevorzugung: Link auf
`4ahwit-x/lessons/…` im y-README), dann README ergänzen.

### `tidyverse`-Meta-Paket installieren (sudo nötig)
**Priority:** low
**Context:** Komponenten (ggplot2 4.0.3, dplyr 1.2.1, readr, tidyr, …)
sind installiert; nur das Meta-Paket fehlt. `install.packages()` scheitert
an fehlenden `-dev`-Headern (curl/systemfonts/fs) — siehe PITFALLS.
**Action:** Entweder `sudo apt install r-cran-tidyverse` (Ubuntu-Paket,
kein Compiler nötig) oder Header-Install laut
`selbststudium/reference/r-setup-linux.html`, dann `install.packages()`.

### Einstiegstest 4HWIT — nach Korrektur KM7-Plan adaptieren
**Priority:** medium (fällig nach der Prüfung)
**Context:** Einstiegstests überarbeitet und committet (GRG-PMM-T #3,
commit cbafecd, 2026-08-21): 4HWIT 50/200, 5HWIT 60/240 mit Block 6
Umweltmanagement. Termine lt. Stundenplan, noch offen (2026-09-07).
**Action:** Nach der Prüfung mit dem `knowledge-assessment`-Skill
korrigieren; bei KM5/KM6-Lücken Bonus-UE aktivieren. Für 5HWIT:
Umwelt-Vorwissen auswerten (Block 6) und ggf. UE 12 anpassen.

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
