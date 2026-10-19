# Handoff

## Open Tasks

### Lektionsserie Datenaufbereitung: SA-05–SA-07 (#37)
**Priority:** medium (Reihe läuft nach Bedarf, eine Lesson pro Sitzung)
**Context:** SA-04 gebaut (`7f70261`). Offen: **SA-05** JSON & APIs
(`jsonlite`, Eurostat/OGD live, echte API-Rohantworten als Übungsmaterial —
Kopien liegen in `/tmp/opencode/`, ggf. frisch ziehen), **SA-06**
Aufbereitung `unlist()` & Konvertieren (JSON-STAT → tidy, Technik aus
`daten/_build/build_data.R` als Lernstoff), **SA-07** Postgres
(`DBI`/`RPostgres`, echter Schul-Server laut Lehrer-Angabe). Format:
neues Lesson-Layout (`lesson.html` = Präsentation, `aufgabe.md`,
Vorlage, optionaler `daten/`-Ordner, 🎓 Rohmaterial bleibt roh).
Materialbasis: echte (raue) Projektdaten.

### Fragestellungen-Statistik (#36) — Weiterführung nach erstem Lauf
**Priority:** low (Langprojekt, kein Termin)
**Context:** Erster Lauf (KM7+KM9a) ist committed (`c426fca`); Themen
Klima/Klimaerwärmung und Impfungen/Corona-Mythen sind ergänzt
(`e168d49`: klima-klimawandel.md, corona-impfmythen.md + 3 CSVs, 12
kuratierte CSVs gesamt). Offen: Eigenmaterial-Blöcke
(Annahmestichproben ISO-Tabellen/Simulation, RSM-sequenziell,
FM-Instandhaltung), AÖF-Femizid-Listen digitalisieren (bewusst als
Schüler-Aufgabe konzipiert), Eurostat-CSVs vor Unterricht frisch ziehen
(`lastTimePeriod=3`-Filter veraltet), altersstratifizierte AT-Impfdaten
(F-C3) bei Aufgaben-Bau kuratieren, GeoSphere-Stations-CSV (F-K3) bei
Aufgaben-Bau ziehen, AMS-Zeitreihe (nationale Quote, F-W3) bzw.
PKS-Anzeigen-Reihe (F-W4) aus PDFs kuratieren, KM8/KM9b bei der
SS-2027-Planung ergänzen.
Konvention: `Projekte/fragestellungen-statistik/README.md`.

### WÜ-Korrekturen nach 20./21./23.10. (GRG-PMM-T #5)
**Priority:** high (Prüfungen laufen diese Woche)
**Context:** Drei WÜ gebaut und committed (GRG-PMM-T `a224ee0`): 4AHWIT-x
2026-10-20 (Setup, SA-00, R-Basics, ggplot, Git, Block E R/R-GUI/RStudio),
5AHWIT 2026-10-21 (Setup, VS Code/Workspace, GitHub-Workflow, R-On-Ramp,
Chi-Quadrat), 4AHWIT-y 2026-10-23 (Setup, R-Grundlagen, Kennzahlen/Verteilungen,
Binomialverteilung mit R, sd/var/n−1). Je 35 MC + 3 FT = 152 P, kein
Notenschlüssel. GRG-PMM-T #4 (WÜ 13.10., nie gehalten) geschlossen.
**Action:** Nach den Terminen per `knowledge-assessment` korrigieren, dann
GRG-PMM-T #5 schließen.

### 5AHWIT: DS-Stoff 7.10. + 14.10. nur in Erinnerung, nicht im Repo
**Priority:** medium
**Context:** Bei der Stoff-Recherche für die 5AHWIT-WÜ fehlt der Beleg für
die DS 7.10. und 14.10. — im Repo steht nur die Überschrift
`2026-10-14_chi_quadrat_schulübung`. Lehrer-Angabe mündlich: dort lief
Chi-Vertiefung/Setup; konkretes Thema für 7.10. nie genannt.
**Action:** Verlauf in `5ahwit/README.md` nachziehen (Tagesordner oder
README-Absatz), sonst bleibt jede spätere Recherche (Prüfungen, WÜ) für
diese Termine lückenhaft.

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
- **GRG-PMM #32:** neue Prepared Lesson `KM7-05` „Rscript und die
  Kommandozeile" (Terminal, frische Session, `commandArgs()`, Exit-Code,
  Shebang; Callout „Exit-Code ≠ korrektes Ergebnis"); Navigator + Glossar
  nachgezogen; Code per `Rscript` verifiziert. Kein Fenster-Recap — das
  bleibt in KM7-04. Commit `9a37080`.
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
