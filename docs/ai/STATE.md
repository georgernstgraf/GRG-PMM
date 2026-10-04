# Project State

Current status as of 2026-10-02.

## Current Focus
**lehrplan Fach-/Zweig-Ebene (#21):** Das `lehrplan/`-Root trägt die
Fach-Ebene (`METADATA.md`, `RIS/`, `kompetenzmodule/`, `ressourcen-matrix.md`,
`r4ds-abdeckung.md` — formunabhängig); die Zweig-Ebene `lehrplan/pmm-hwit/`
bündelt Extrakt (`LEHRPLAN.md`), Rechtsstand (`RIS.md`), Klassen-Extrakte und
die Semesterpläne (`jg{3,4,5}-semesterplan-{ws,ss}.md`). Die Unterrichtsebene
führt nur noch flache Einheiten (`KM5-01`, `SA-00…SA-03`); der Ordner
`unterricht/HWIT-PMM/` ist entfallen. Die JG3-Selbststudiums-Map wurde als
`jg3-semesterplan-ws/ss.md` rückgepflegt. Der `lehrplan`-Skill wurde in
opencode-helpers (#92) entsprechend umgebaut (Fach-Ebene vs. Zweig-Ebene,
unterricht ohne Zweig-Fach-Ordner).

## Completed (this cycle)
- [x] #24 Quiz-Feedback reparieren: `assets/quiz.js` + `assets/theme.js` mit
      `readyState`-Guard (Loader injiziert die Assets asynchron nach
      `DOMContentLoaded`); `CONVENTIONS.md`-Drift (`.erklaerung`/`.hinweis`
      → `data-grund`/`.feedback`) behoben. Verifiziert per headless Chrome;
      Schwester-Fix in GRG-WMC (#6).
- [x] #21 lehrplan-Umbau: Fach-Ebene (Root) vs. Zweig-Ebene (`pmm-hwit/`);
      `unterricht/HWIT-PMM/` entfernt, Semesterpläne nach `lehrplan/pmm-hwit/`,
      JG3-Semesterpläne angelegt, Pfad-Referenzen + Doku (AGENTS/README/GLOSSAR/
      METADATA/docs/ai) gefixt; #19-Flachlage und #20-Planablage → HISTORY.
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
- [ ] **SA-01–SA-03 inhaltlich auf 90 min vertiefen** (Teil der Überarbeitung).
- [ ] **Einstiegstest 4HWIT** korrigieren → Bonus-UE bzw. UE 4–5 anpassen.
- [ ] **Einstiegstest 5HWIT**: DOE-Block + Umwelt-Vorwissen auswerten.
- [ ] **R/RStudio auf Schul-Laptops der 5AHWIT bestätigen.**
- [ ] JG3 Phase 0: L04 durcharbeiten (teach-Session), danach L05+.

## Notes
- R 4.5.x mit `tidyverse`, `palmerpenguins`; Verifikation per `Rscript`
  (Arbeitsverzeichnis = Repo-Root). Betriebsdaten `assets/betriebsdaten.csv`.
- Nutzung: `./serve.sh` → `http://localhost:8000/`; **kein `file://`** (Firefox).
- Web-Assets: ein Top-Level `assets/`; Bootstrap + Badge generisch (CONVENTIONS).

## Next Session Suggestion
SA-01–SA-03 auf 90 min vertiefen; JG3-Semesterplan-Lektionen (05–15)
bauen; nächste Lektion on demand (z. B. UE 5 Konfidenzintervalle).
