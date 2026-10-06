# Handoff

## Open Tasks

### Andere Repos auf die neue lehrplan-Ordnung ziehen (opencode-helpers #92)
**Priority:** medium
**Context:** Der `lehrplan`-Skill (opencode-helpers #92) verlangt jetzt
Fach-/Zweig-Ebene und keine `unterricht/<ZWEIG>-<FACH>/`-Ordner. Andere Repos
tragen noch das alte Layout: GRG-INFI (`unterricht/HWII-INFI/`,
`infi-hwii/kompetenzmodule/`), GRG-WMC (`unterricht/WMC/` — dokumentierte
Ausnahme für form-übergreifende Planung), GRG-SWP.
**Action:** Pro Repo als Befund melden, dann nach Rücksprache migrieren
(`kompetenzmodule/` ans `lehrplan/`-Root, Planung in `lehrplan/<fach>-<zweig>/`).

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
**Context:** Georg lernt JG3-Vorwissen (KM5+KM6) selbst. Track 1 L03 ✅,
L04 Binomial ✅ + Hypergeometrisch ✅ (LR 08/09); Poisson offen.
Didaktik-Präferenzen: kleine Häppchen, komplette Angabe bei jeder
Wiederholung, keine neuen Begriffe ungeklärt in Aufgaben, kein LaTeX im
Chat (teach-Skill).
**Action:** L04 Abschnitt 3 (Poisson) teachen — Einstieg über „Ereignisse
pro Einheit statt Stücke pro Los"; LR schreiben, `jg3-verlauf.html`
auf ✅; danach L05 bauen.

## Erledigt (dieser Zyklus)
- **GRG-PMM #29:** neue Prepared Lesson `KM7-04` „RStudio, Projektordner
  und R-Skripte" (kohortenagnostisch, Werkzeug-/Workflow-Grundlage zu KM7,
  verwandt mit SA-00); `index.html`-Navigator + Glossar nachgezogen;
  Code gegen `assets/betriebsdaten.csv` per `Rscript` verifiziert.
- **opencode-helpers #92:** lehrplan-Skill auf Fach-/Zweig-Ebene umgebaut —
  Fach-Ebene am Root (inkl. KM-keyed Ressourcen), Planung in
  `<fach>-<zweig>/`, `unterricht/` ohne Zweig-Fach-Ordner, WMC-Ausnahme
  erweitert, Restfall-Regel für Mehr-Fächer-Repos. Commits `0228710`,
  `adb16af`; Tests grün (70).
- **GRG-PMM #21:** `lehrplan/pmm-hwit/` (Extrakt, Klassen-Extrakte,
  Semesterpläne), Fach-Ebene am Root, `unterricht/HWIT-PMM/` entfernt,
  JG3-Semesterpläne (`jg3-semesterplan-ws/ss.md`) rückgepflegt.
- **GRG-PMM #20:** kanonische `unterricht/`-Struktur — flache Einheiten
  `SA-00…SA-03` (R-Toolchain, schulautonom), Semesterpläne in
  `lehrplan/pmm-hwit/`, Kohorten-`prepared-lessons/` aufgelöst (x/y/5ahwit),
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
