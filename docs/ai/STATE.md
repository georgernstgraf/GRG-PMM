# Project State

Current status as of 2026-10-19.

## Current Focus
**Fragestellungen-Statistik (#36):** Neues Langprojekt
`Projekte/fragestellungen-statistik/` — aus KM7/KM9a abgeleitete
Fragestellungen mit kuratiertem Datenmaterial (Statistik Austria OGD,
Eurostat, Rdatasets/agridat). Erster Lauf committed (2026-10-19,
`c426fca`): 9 KM7- + 8 KM9a-Fragestellungen, 9 kuratierte CSVs mit
Metadaten, Rdatasets-Katalog als Suchwerkzeug; Rückverlinkung in
Ressourcen-Matrix und Semesterplänen. Erweiterung (2026-10-19,
`e168d49`): Themenfiles `klima-klimawandel.md` (GISTEMP-Trend,
GeoSphere-Stationen) und `corona-impfmythen.md` (Übersterblichkeit,
Base-Rate-Fehlschluss, Simpson-Paradox) + 3 weitere kuratierte CSVs
(tempanomalien-global, wochensterbefaelle-oesterreich,
covid-impfquote-vs-todesrate) — 12 CSVs gesamt. Dritte Erweiterung
(2026-10-19, `851578a`): Themenfile `datensaetze-im-widerspruch.md`
(statistische Praktiken-Checkliste, 4 Konflikt-Paare) + 3 CSVs
(tempanomalien-zwei-quellen, covid-at-gemeldet-vs-uebersterblichkeit,
arbeitslosigkeit-at-ilo) — 15 kuratierte CSVs gesamt.

**Lernplattform (#27):** GitHub Pages liefert nur noch `index.html`, `assets/`
und `unterricht/` (`.github/workflows/pages.yml`, umgestellt von legacy
Branch-Deploy); Kohorten (`4ahwit-*`, `5ahwit`), `selbststudium/` und
`lehrplan/` sind raus. Der Navigator `index.html` listet jetzt alle
`unterricht/`-Lessons (SA + KM5–KM7) und keine Kohorten-/Lehrplan-Links mehr.

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
- [x] 2026-10-19 — Projekt `fragestellungen-statistik` erster Lauf (#36, Commit
      `c426fca`): KM7-Map (9 Fragestellungen) + KM9a-Map (8) nach festem Format
      (Frage → Quelle → R-Weg → Aufgabenskizze → UE-Anker → Status); 9
      kuratierte CSVs (Eurostat nrg_pc_204 tidy, Verurteilungsstatistik-OGD
      tidy, AER cps1985/gss7402/houseprices, agridat cochran.factorial/
      chinloy.fractionalfactorial/cochran.latin/cox.stripsplit) je mit
      Metadaten-File, alle per `Rscript` einlesgeprüft; Rdatasets-Katalog
      (3.648 Einträge) in `daten/_index/`; alle externen Links per curl
      verifiziert (200). Ehrlichkeits-Regeln: Observationsdaten ≠
      Versuchsdaten → DoE via agridat, Annahmestichproben/RSM/FM-Instandhaltung
      als 🏭 Eigenmaterial markiert. Rückverlinkung: Ressourcen-Matrix,
      jg4/jg5-Semesterpläne, Root-README. Details: DECISIONS/PITFALLS.
- [x] 2026-10-19 — WÜ-Set für alle drei Klassen gebaut (GRG-PMM-T #5, Commit
      `a224ee0`): 4AHWIT-x 20.10. (Setup, SA-00, R-Basics, ggplot, Git, Block E
      R/R-GUI/RStudio — Live-Stoff vom 13.10.), 5AHWIT 21.10. (Setup, VS Code/
      Workspace, GitHub-Workflow, R-On-Ramp, Chi-Quadrat KM7-02), 4AHWIT-y
      23.10. (Setup, R-Grundlagen, Kennzahlen/Verteilungen, Binomialverteilung
      mit R, sd/var/n−1). Je 35 MC à 4 P + 3 FT à 15 P = 152 P; alle Zahlen per
      `Rscript` gegen `assets/betriebsdaten.csv`/`palmerpenguins` verifiziert.
      Kein Notenschlüssel in den Solutions (Lehrer-Wunsch: nur Punktezahl).
      Vorläufer WÜ 13.10. nie gehalten → GRG-PMM-T #4 geschlossen.
- [x] #34 CLOSED 2026-10-19 — Kohorten-READMEs: kanonische Aufgabenlisten auf
      „neueste oben, keine Lead-in-Zeile" umgestellt (x/y/5ahwit), Commit
      `0ee09e9`; Regel im `homework`-Skill verankert (opencode-helpers #113,
      Commit `7633210`, Issue geschlossen).
- [x] 2026-10-19 — Missing-Pull im GRG-PMM-Klon nachgeholt: `bc91c78` („aufg.",
      Lehrperson-Commit vom 16.10. aus der y-Stunde) war lokal nachzuziehen;
      darin dokumentiert: y arbeitet an KM5-01 (Binomial), Aufgabe „ALLE
      R-Sachen" ins persönliche Repo.
- [x] #33 CLOSED 2026-10-14 — Datenquellen-Sammlung für den Statistikunterricht
      gestartet: neues Top-Level-Verzeichnis `Projekte/datenquellen-statistikunterricht/`
      (`README.md` + erste Quellen-Datei `quellen/femizid-taeter-nationalitaet.md`)
      — Recherche zu „Femizid & Täter-Nationalität": Parlamentsanfragen PA 18374/J
      (PKS 2019–2023, disaggregiert Bundesland × Geschlecht × Alter × Nationalität)
      und PA 453/J (2024), Statistik-Austria-Prävalenzstudie 2021 (inkl. .ods-OGD),
      AÖF-Jahreslisten 2019–2025, BMJ-Studie/Koordinierungsstelle/Eurostat/UNODC;
      alle 24 Links per curl verifiziert (200); Methodik-Kapitel (Nennerproblem,
      kleine n, Simpson, Operationalisierung) als Unterrichtsanschlüsse.
      Root-README-Aufbau-Tabelle um `Projekte/` erweitert. Commit `2c59448`.
- [x] #32 CLOSED 2026-10-13 — Lesson `KM7-05` (Rscript & Kommandozeile): neue
      Prepared Lesson unter `unterricht/KM7-05-rscript-und-kommandozeile/` —
      Lektion = Präsentation, 7 Quizfragen (Rotation 2/0/3/1/2/0/3),
      7 Schritte (Console vs. Terminal, Rscript, frische Session, `-e`,
      `commandArgs()`, Exit-Code, Shebang), Callout „Exit-Code ≠ korrektes
      Ergebnis"; Navigator + 6 Glossar-Begriffe nachgezogen, Code per
      `Rscript` verifiziert. Bewusst kein Fenster-Recap (steht in KM7-04).
- [x] 2026-10-12 — Homework-Discovery PMM (PMMx/PMMy/PMM): README-Retrofit
      `## Aufgaben` (erste Sektion) in `4ahwit-x/` (2 Einträge: HÜ-Kontrolle
      22.9., SA-01 Selbststudium 6.10. → Index-Link auf
      `unterricht/SA-01-datenvisualisierung-ggplot/`), `4ahwit-y/` (4 Einträge:
      18.9. Repo-Anlage, 25.9. Betriebsdaten, 2.10. sd/var+n−1, 9.10.
      OpenCode-Prompt) und `5ahwit/` (2 Einträge: Setup-HÜ 23.9. — Evidenz
      `wiederholungswuensche.md`, KM7-02 Chi-Quadrat 30.9.). Neue
      `Aufgabe.md` in `4ahwit-y/20206-10-09_opencode/` (PROMPT.md/ANSWER.md);
      legacy `hausaufgabe.md` in `5ahwit/2026-09-30-chi-quadrat-test/`
      vollständig belassen. Generierte Aufgabe-Dateien bewusst
      **uncommitted** zur Review.
- [x] #30 CLOSED 2026-10-06 — Folien-Layout: `assets/slides.css` gibt den
      reveal.js-Folien einen schmalen, zentrierten Satzspiegel
      (`--pmm-slide-measure: 1000px`, Grundschrift 32px) wie die
      `lesson.html`-Seiten; alle 11 Präsentationen + Kohorten-Kopie headless
      gegen die 800px-Canvas-Höhe geprüft (max. 778px, keine Kürzung).
- [x] #29 CLOSED 2026-10-06 — Lesson `KM7-04` (RStudio, Projektordner, R-Skripte): neue
      Prepared Lesson (kohortenagnostisch) unter
      `unterricht/KM7-04-rstudio-projekt-und-skript/` — Lektion =
      Präsentation, 5 Quizfragen, Lektüre R4DS Kap. 2 + 6; Navigator-
      Eintrag + Glossar-Begriffe nachgezogen, Code per `Rscript` verifiziert.
- [x] #28 CLOSED 2026-10-06 — Lernplattform-Link (GitHub Pages) ganz oben ins
      `README.md` (SWP/WMC-Stil); Konvention repo-übergreifend in
      `CONVENTIONS.md` festgehalten.
- [x] #27 CLOSED 2026-10-05 — GitHub Pages als Lernplattform: neuer
      `pages.yml` (rsync von `index.html assets unterricht`, legacy
      Branch-Deploy abgelöst), `index.html` auf alle `unterricht/`-Lessons
      umgebaut (SA + KM5–KM7), keine Kohorten-/Lehrplan-Links; README/AGENTS/
      CONVENTIONS nachgezogen
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
- [ ] **Wissensüberprüfung 4AHWIT-x am 2026-10-13** (GRG-PMM-T #4): Exam + Lösungen committed; nach Prüfung reviewen/schließen.
- [ ] **SA-01–SA-03 inhaltlich auf 90 min vertiefen** (Teil der Überarbeitung).
- [ ] **Einstiegstest 4HWIT** korrigieren → Bonus-UE bzw. UE 4–5 anpassen.
- [ ] **Einstiegstest 5HWIT**: DOE-Block + Umwelt-Vorwissen auswerten.
- [ ] **R/RStudio auf Schul-Laptops der 5AHWIT bestätigen.**
- [ ] JG3 Phase 0: L04 Abschnitt 3 (Poisson) durcharbeiten, dann L04 ✅; danach L05+.

## Notes
- 2026-10-12: Ordnername `4ahwit-y/20206-10-09_opencode/` enthält einen
  Datumstippfehler (`20206` statt `2026`) — bewusst **nicht** umbenannt
  (README-Verlauf + Aufgabe.md verweisen darauf); Pitfall siehe PITFALLS.md.
  `5ahwit/README.md` Sektion `## Hausaufgaben` verweist auf eine
  `hausaufgaben/`-Ablage, die (noch) nicht existiert — Klärung offen.
- R 4.5.x mit `tidyverse`, `palmerpenguins`; Verifikation per `Rscript`
  (Arbeitsverzeichnis = Repo-Root). Betriebsdaten `assets/betriebsdaten.csv`
  (nur M3 hat Ausschuss: 4 von 40 bei ±0,15 mm — M1/M2 sauber; KM5-02s
  „6 von 40" ist ein Szenario, nicht die CSV).
- Nutzung: `./serve.sh` → `http://localhost:8000/`; **kein `file://`** (Firefox).
- Web-Assets: ein Top-Level `assets/`; Bootstrap + Badge generisch (CONVENTIONS).

## Next Session Suggestion
JG3: L04 Abschnitt 3 (Poisson) teachen; SA-01–SA-03 auf 90 min vertiefen;
JG3-Semesterplan-Lektionen (05–15) bauen.
