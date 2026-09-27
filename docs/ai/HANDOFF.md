# Handoff

## Open Tasks

### Skills (opencode-helpers) auf neue Struktur angleichen (#19)
**Priority:** high (eigenes Repo, eigener Commit)
**Context:** GRG-PMM nutzt jetzt `prepared-lessons/`, ein zentrales
`assets/` und den generischen Inline-Bootstrap/Badge. Die Skills sagen noch
`lessons/` und `./assets/`.
**Action:** In `~/repos/georgernstgraf/opencode-helpers`:
- `teach/SKILL.md`: `./lessons/` → `./prepared-lessons/`; Assets → repo-root
  `assets/`; jede erzeugte HTML bindet Bootstrap + Badge.
- `create-lesson/SKILL.md`: `prepared-lessons/` (vorbereitet/undatiert) vs.
  Datums-Ordner; Assets/Bootstrap/Badge verbindlich; Legacy-Klausel ersetzen.
- `tests/test_skill_links.py` grün; trunk-based committen (Issue dort).

### 5AHWIT: R-Installation auf Schul-Laptops bestätigen (#14-Fortsatz)
**Priority:** high (vor der nächsten 5AHWIT-DS)
**Context:** Setup-Log (2026-09-09) nennt nur git/VS Code — R/RStudio
nicht bestätigt. Lektionen 01–03 setzen R voraus.
**Action:** In der DS klären (oder `selbststudium/reference/r-setup-linux.html`
als HÜ-Anhang mitgeben).

### Einstiegstest 4HWIT — nach Korrektur KM7-Plan adaptieren
**Priority:** medium
**Context:** 4HWIT 50/200, 5HWIT 60/240 mit Block 6 Umweltmanagement.
Auswertung 4AHWIT liegt in `4ahwit-y/2026-09-11__einstiegstest/`.
**Action:** Mit dem `knowledge-assessment`-Skill korrigieren; bei
KM6-Lücken Bonus-UE aktivieren.

### JG3-Lern-Tracks (Phase 0) fortsetzen
**Priority:** high
**Context:** Georg lernt JG3-Vorwissen (KM5+KM6) selbst. Track 1 L0003
abgeschlossen; L0004 gebaut+committet. KM7-Anschluss: `reference/km7-verlauf.html`.
**Action:** L0004 durcharbeiten (teach-Session; Binomial/Hypergeometrisch/
Poisson), mit LR dokumentieren; danach L0005 bauen.

## Erledigt (dieser Zyklus)
- #19 Struktur-Refactor: `prepared-lessons/`, zentrales `assets/`, Loader +
  Badge, lehrplan flach, Quiz vereinheitlicht, Toggle überall, Drift-Fix,
  `km7-verlauf.html` aktualisiert. Details: STATE.md.
- **GitHub Pages aktiviert** (`gh api` → Branch `main` / root), live unter
  https://georgernstgraf.github.io/GRG-PMM/ (curl 200 für `/`,
  `/assets/loader.js`, Lektion).
- ~~4ahit-x auf SWP-Teach-Muster harmonisieren~~ → verworfen: x/y-Struktur
  ist bewusst kohorten-lokal (Nutzer-Entscheidung 2026-09-27); nur
  `prepared-lessons/` + zentrale Assets wurden angeglichen.
- ~~Phase 4 (#6): Stil in `selbststudium/NOTES.md` verankern; km7-verlauf
  umbauen~~ → erledigt (NOTES-Stil-Abschnitt, km7-verlauf aktualisiert).

## Blocked / Waiting
- **Phase 6 (#6):** ❌ ABGEBROCHEN (O'Reilly-Verlagsdeal mit deutschem
  Verlag; keine Community-Übersetzung). Thread geschlossen (2026-07-23).
- ~~`tidyverse`-Meta-Paket~~ → ERLEDIGT (2026-09-16).
