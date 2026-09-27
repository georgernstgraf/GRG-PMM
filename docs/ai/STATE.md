# Project State

Current status as of 2026-09-27.

## Current Focus
**Struktur-Refactor (#19):** Ein zentraler `assets/`-Ordner am Repo-Root mit
generischem Loader (`assets/loader.js`) + Inline-Bootstrap auf allen 24
HTML-Seiten; `assets/site.js` + `github-pages-link.js` liefern den Badge
„Auf GitHub Pages ansehen". `lessons/` → `prepared-lessons/` repo-weit;
`lehrplan/pmm-hwit/` → flach nach `lehrplan/`. Quiz-Markup vereinheitlicht
(Klassen-Radio-Widget; Selbststudium konvertiert), Hell/Dunkel-Toggle in
allen Klassen-Lektionen. Nutzung jetzt über Live-Server (`serve.sh`) bzw.
GitHub Pages (`index.html`, `.nojekyll`).

## Completed (this cycle)
- [x] **Zentraler `assets/`-Ordner** (aus 5 verstreuten zusammengeführt):
      `lesson.css`, `style.css`, `slides.css`, `theme.js`, `quiz.js`,
      `betriebsdaten.csv` + neu `loader.js`, `site.js`, `github-pages-link.js`.
- [x] **Generische Inline-Bootstrap** auf allen 24 HTML-Seiten (Repo-Name
      nirgends im Mechanismus); alle relativen HTML-Ziele auflösbar.
- [x] **`prepared-lessons/`** in x, y, `5ahwit/teach/`, selbststudium.
- [x] **`lehrplan/` flach** (Zweig-Ebene entfernt); `RIS.md`-Links, METADATA,
      Klassen-READMEs, kompetenzmodule angepasst.
- [x] **Quiz vereinheitlicht** (Klassen-Widget kanonisch, `.erklaerung` +
      `.hinweis`); Selbststudium-Lektionen konvertiert.
- [x] **Badge + Pages** (`index.html`, `.nojekyll`, `serve.sh`).
- [x] **Drift-Fix:** jg3-/km7-verlauf, Selbststudium-Nav, GLOSSAR,
      kompetenzmodule, Semesterplan-Pfade.
- [x] `km7-verlauf.html` erhalten, aktualisiert, aus `MISSION.md`/`NOTES.md`
      verlinkt (Teach-Skill findet den Anschluss).

## Pending
- [ ] **Skills (opencode-helpers):** `teach` + `create-lesson` auf
      `prepared-lessons/`, ein `assets/`, Bootstrap+Badge-Regel umstellen
      (eigenes Issue/Commit dort).
- [ ] **Einstiegstest 4HWIT** korrigieren → Bonus-UE bzw. UE 4–5 anpassen
- [ ] **Einstiegstest 5HWIT**: DOE-Block + Umwelt-Vorwissen auswerten
- [ ] **R/RStudio auf Schul-Laptops der 5AHWIT bestätigen**
- [ ] JG3 Phase 0: L0004 durcharbeiten (teach-Session), danach L0005+
- [ ] GitHub Pages in den Repo-Settings aktivieren (Deploy from branch `main` / root)

## Notes
- R 4.5.2 mit `tidyverse` und `palmerpenguins`; Verifikation per `Rscript`
  (Arbeitsverzeichnis = Repo-Root). Betriebsdaten jetzt `assets/betriebsdaten.csv`.
- Nutzung: `./serve.sh` → `http://localhost:8000/`; **kein `file://`** (Firefox).
- Web-Assets: ein Top-Level `assets/`; Bootstrap + Badge generisch (CONVENTIONS).
- Stil: `docs/stil-leitfaden.md`; Kohorten-/Teach-Layout: CONVENTIONS.

## Next Session Suggestion
opencode-helpers-Skills angleichen (eigenes Issue), dann y-DS-Rückblick und
nächste Lektion on demand (z. B. UE 5 Konfidenzintervalle).
