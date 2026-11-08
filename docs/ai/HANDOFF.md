# Handoff

## Open Tasks

### Erfundener YouTube-Link in Selbststudium-Lesson 02 (#47)
**Priority:** low
**Context:** `Unterlagen/check-links.sh --all` meldet als einzigen echten
404 `https://www.youtube.com/playlist?list=PL8+z9X2Mm7m9z2Mm8mD_8Qz3Q3J3J3J3`
in `selbststudium/prepared-lessons/02-daten-einlesen-deskriptiv.html:558`
(Primärquellen-Callout, „Statistik mit R — YouTube-Kurs"). Die ID ist
offensichtlich erfunden, nicht nur verschoben.
**Action:** Entweder durch einen real existierenden deutschsprachigen
R-/Statistik-Kurs ersetzen (Link vor dem Einbau per `check-links.sh` prüfen)
oder den Satz streichen — nicht auf Verdacht raten.

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
Toolchain für SA-07 steht seit 2026-10-29 (#38): `libpq-dev` installiert,
`DBI` 1.3.0 + `RPostgres` 1.4.10 in der User-Lib, `Postgres()`-Smoke-Test
grün. **Datenzugang geklärt (2026-10-29, `0487102`):** Server erreichbar,
read-only Account, Schema + fertige Joins in `Projekte/boku/joins.md`,
Erkundung per `Projekte/boku/psqlx` (sourcet `.env`). Für SA-07 noch zu
tun: Lesson inkl. `daten/`-Ordner bauen — der Join-Graph aus `joins.md`
ist der Lernstoff (siehe auch #37-Kommentar vom 2026-10-29).

### Fragestellungen-Statistik (#36) — Weiterführung nach erstem Lauf
**Priority:** low (Langprojekt, kein Termin)
**Context:** Erster Lauf (KM7+KM9a) ist committed (`c426fca`); Themen
Klima/Klimaerwärmung und Impfungen/Corona-Mythen sind ergänzt
(`e168d49`: klima-klimawandel.md, corona-impfmythen.md + 3 CSVs, 12
kuratierte CSVs gesamt). Vierte Erweiterung (`5587a60`, 2026-10-21):
`kuriose-quellen.md` (F-C1…F-C16) + 7 CSVs (22 gesamt);
`build_data4.R`. Offen: Eigenmaterial-Blöcke
(Annahmestichproben ISO-Tabellen/Simulation, RSM-sequenziell,
FM-Instandhaltung), AÖF-Femizid-Listen digitalisieren (bewusst als
Schüler-Aufgabe konzipiert), Eurostat-CSVs vor Unterricht frisch ziehen
(`lastTimePeriod=3`-Filter veraltet), altersstratifizierte AT-Impfdaten
(F-C3) bei Aufgaben-Bau kuratieren, GeoSphere-Stations-CSV (F-K3) bei
Aufgaben-Bau ziehen, AMS-Zeitreihe (nationale Quote, F-W3) bzw.
PKS-Anzeigen-Reihe (F-W4) aus PDFs kuratieren, Wien-`gogv`-Downloads
(Hunde, Radzählstellen) nach 503 wieder prüfen und ggf. kuratieren,
Ideen-Parkplatz aus `kuriose-quellen.md` ausformulieren, KM8/KM9b bei der
SS-2027-Planung ergänzen.
Konvention: `Projekte/fragestellungen-statistik/README.md`.

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
- **GRG-PMM-T #5 (2026-11-07):** Alle drei WÜ korrigiert — 4ahwit-x/2026-10-20
  (14), 5ahwit/2026-10-21 (17), 4ahwit-y/2026-10-23 (12): je Schüler
  grading.md + email.json, Aggregate CLASS.md/GRADINGS.md/EMAIL.json.
  Commits `4a44e37`, Noten-TSV `4a4546d`/`5b8d604` (#121). E-Mail-Payloads
  liegen bereit je Klassenordner — Versand ist Sache der Lehrperson.
  Issue geschlossen, Handoff-Eintrag entfernt.
- **#42 komplett (2026-11-07):** Quiz-Format 2.1 in allen 11 Quiz-Lessons; SA-00–03 geerntet (SA-00 Neubau 90 min, SA-01–03 vertieft), alle `praesentation.html` gelöscht, `assets/slides.css` entfernt, Navigator + Folien-Querverweise (KM7-04/05, SA-04-Footer, km7-verlauf, 4ahwit-x/README, 5ahwit-Kopie) auf lesson.html, 20 GLOSSAR-Einträge, Docs angepasst. Alle Folien-Behauptungen per Rscript geprüft, fünf falsche korrigiert (342 statt 344 Punkte, Ausreißer-Demo 10.0475, ggplot2 4.0.3 „group_by ohne summarise" = 1 Panel, dplyr-Fehlermeldung, 8 statt 11 Spalten). **Beobachtung:** SA-04-Quiz hat fast nur 1-richtig-Verteilung (18 Fragen, einmal 2) — falls je nachgebessert.
- **GRG-PMM #40 (Nachtrag):** Quiz-Format-2.0-Styling-Rework
  (`assets/lesson.css` + `assets/quiz.js`) committed und gepusht
  (`2e2fe73`, 2026-11-03) — war aus der #40-Session uncommitted liegen
  geblieben. Wiederholungsmaterial `5ahwit/2026-11-04_wh_chi2/`
  (basics.R + CSV) mitgenommen (`5b862ce`).
- **GRG-PMM #22 (Teil):** KM7-02-Erklärungen nachgeschärft (`4a5ae13`,
  2026-11-03): M3-Zellbeitrag aufgedröselt, „alle sechs Zellen"-Präzisierung,
  Merke-Callout „hier keimt die Warning" (Vorwärtsverweis auf Schritt 5),
  df-Abschnitt vertieft (Frei/Fest-Gitter + Kalibrierungssatz). Die Muster
  flossen verallgemeinert als Abschnitt „Schülerperspektive
  (Erklärungsempathie)" in den create-lesson-Skill (opencode-helpers #123,
  Commit `d93acb0`).
- **GRG-PMM #36:** Themenfile `kuriose-quellen.md` (16 Fragestellungen
  F-C1…F-C16 + Ideen-Parkplatz) und 7 kuratierte Alltagsdatensätze
  (Vornamen Top 100, Schokoladenduft-RCT, Schokoladenkuchen-DoE, Pizza,
  Billboard, Spotify, LEGO) mit Metadaten und `build_data4.R`; alle
  Links per `curl`, alle CSVs per `Rscript` geprüft. Commit `5587a60`.
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
