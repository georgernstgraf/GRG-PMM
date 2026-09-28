# Project State

Current status as of 2026-09-28.

## Current Focus
**Kanonische `unterricht/`-Struktur (#20):** Vorbereitete Einheiten liegen
**flach** unter `unterricht/` als `<PREFIX>-<NN>-<slug>/` (`KM<#>` =
Kompetenzmodul, `SA` = schulautonom; `<NN>` läuft pro KM) mit
`praesentation.html` + `hausaufgabe.md` + `lesson.html`; Semesterpläne bleiben
in `unterricht/HWIT-PMM/`. Kohorten-`prepared-lessons/` (x/y/5ahwit) aufgelöst
— Kohorten halten nur datierte Ordner `YYYY-MM-DD__thema/`. Neue
Wiederholungs-Lektion `KM5-01` (Binomialkoeffizient/Pascalsches Dreieck).
Skills (lehrplan + create-lesson) und Doku angeglichen: Lesson = **immer
90 min**, Quiz **ohne harte Obergrenze**.

## Completed (this cycle)
- [x] Units `unterricht/HWIT-PMM/{00…03}` → `unterricht/{SA-00…SA-03}`
      (verschoben + umbenannt; Präfix = zuständiges „Fach").
- [x] Lesson-HTMLs 01–03 in die Einheiten (`SA-0X/lesson.html`) überführt;
      Kicker (`Lektion SA-XX`), Links und „Aufgabe"-Abschnitt angepasst.
- [x] Kohorten-`prepared-lessons/` (x/y/5ahwit) gelöscht; alle Verweise
      repo-weit umgebogen (index, READMEs, Semesterplan, km7-verlauf, y-Datums-Lektion).
- [x] Neue Lektion `unterricht/KM5-01-binomialkoeffizient-pascalsches-dreieck/`
      (R-Werte und Quiz-Rotation D·C·B·A·D per `Rscript` verifiziert).
- [x] Skills (lehrplan + create-lesson; eine hardlinkte Datei in
      `opencode-helpers/skills/`) auf neue Ablage, KM-/SA-Präfix,
      Quiz ohne Grenze, 90-min-Pflicht umgestellt.
- [x] Doku: `AGENTS.md`, Root-`README.md`, `docs/ai/ARCHITECTURE.md`/
      `CONVENTIONS.md`/`DECISIONS.md`, `GLOSSAR.md`.
- [x] Struktur-Refactor (#19): zentraler `assets/`, generischer Loader +
      Badge, `prepared-lessons/`, Live-Server/GitHub Pages.

## Pending
- [ ] **Skills (opencode-helpers):** Änderungen im eigenen Repo committen
      (eigenes Issue/Commit dort); `teach`-Skill auf `./prepared-lessons/` prüfen.
- [ ] **SA-01–SA-03 inhaltlich auf 90 min vertiefen** (Teil der Überarbeitung).
- [ ] **Einstiegstest 4HWIT** korrigieren → Bonus-UE bzw. UE 4–5 anpassen.
- [ ] **Einstiegstest 5HWIT**: DOE-Block + Umwelt-Vorwissen auswerten.
- [ ] **R/RStudio auf Schul-Laptops der 5AHWIT bestätigen.**
- [ ] JG3 Phase 0: L0004 durcharbeiten (teach-Session), danach L0005+.

## Notes
- R 4.5.x mit `tidyverse`, `palmerpenguins`; Verifikation per `Rscript`
  (Arbeitsverzeichnis = Repo-Root). Betriebsdaten `assets/betriebsdaten.csv`.
- Nutzung: `./serve.sh` → `http://localhost:8000/`; **kein `file://`** (Firefox).
- Web-Assets: ein Top-Level `assets/`; Bootstrap + Badge generisch (CONVENTIONS).

## Next Session Suggestion
opencode-helpers-Skills committen; SA-01–SA-03 auf 90 min vertiefen; nächste
Lektion on demand (z. B. UE 5 Konfidenzintervalle).
