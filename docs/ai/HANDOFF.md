# Handoff

## Open Tasks

### opencode-helpers: Skill-Änderungen committen (Fortsatz #19/#20)
**Priority:** high (eigenes Repo, eigener Commit)
**Context:** Im Zuge von GRG-PMM #20 wurden in `opencode-helpers`
`skills/create-lesson/SKILL.md` und `skills/lehrplan/SKILL.md` angepasst
(flache `unterricht/`-Ablage, `KM<#>`/`SA`-Präfix, `<NN>` pro KM, Quiz ohne
Obergrenze, Lesson = 90 min). Die Dateien sind hardlinkt nach
`~/.opencode/skills` und `~/.config/opencode/skills`.
**Action:** In `~/repos/georgernstgraf/opencode-helpers` committen (Issue dort);
`teach/SKILL.md` prüfen (`./prepared-lessons/` bleibt für das Selbststudium
korrekt); `tests/test_skill_links.py` grün.

### SA-01–SA-03 inhaltlich auf 90 min vertiefen (#20-Fortsatz)
**Priority:** medium
**Context:** Die R-Toolchain-Lektionen wurden bei der Migration überführt und
formell angepasst (Kicker/Links/Aufgabe), ihr Umfang ist aber noch keine
Doppelstunde.
**Action:** Bei nächster Gelegenheit mit `create-lesson` vertiefen (mehr
Aufbauschritte/Übungen), Quizfragen ergänzen.

### 5AHWIT: R-Installation auf Schul-Laptops bestätigen (#14-Fortsatz)
**Priority:** high (vor der nächsten 5AHWIT-DS)
**Context:** Setup-Log (2026-09-09) nennt nur git/VS Code — R/RStudio
nicht bestätigt. Die On-Ramp-Lektionen (`unterricht/SA-01…SA-03`) setzen R voraus.
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
- **GRG-PMM #20:** kanonische `unterricht/`-Struktur — flache Einheiten
  `SA-00…SA-03` (R-Toolchain, schulautonom), Semesterpläne in
  `unterricht/HWIT-PMM/`, Kohorten-`prepared-lessons/` aufgelöst (x/y/5ahwit),
  Lesson-HTMLs in die Einheiten überführt, neue `KM5-01`-Lektion
  (Binomial/Pascalsches Dreieck), Skills (lehrplan + create-lesson) und Doku
  angeglichen. Details: STATE.md / DECISIONS.md.
- #19 Struktur-Refactor: `prepared-lessons/`, zentrales `assets/`, Loader +
  Badge, lehrplan flach, Quiz vereinheitlicht, Toggle überall, Drift-Fix,
  `km7-verlauf.html` aktualisiert.
- **GitHub Pages aktiviert** (Branch `main` / root), live unter
  https://georgernstgraf.github.io/GRG-PMM/.

## Blocked / Waiting
- **Phase 6 (#6):** ❌ ABGEBROCHEN (O'Reilly-Verlagsdeal mit deutschem
  Verlag; keine Community-Übersetzung). Thread geschlossen (2026-07-23).
- ~~`tidyverse`-Meta-Paket~~ → ERLEDIGT (2026-09-16).
