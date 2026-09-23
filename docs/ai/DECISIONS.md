# Decisions

Architectural and technical decisions made in this project.
Each entry documents WHAT was decided and WHY.

## 2026-09-23: Lesson-System — globaler create-lesson-Skill + zweistellige Nummern (#15)

- **Choice**: Klassen-Lektionen baut der neue globale Skill `create-lesson`
  (`~/.config/opencode/skills/`, konventionsbasiert nach Vorbild lehrplan):
  Bestellung `Thema + Ziel-UE [+ Quelle-KM]`, themenfokussierter Kicker
  (`Lektion NN · Thema` + Meta-Zeile `UE n · Klasse Semester [·
  Wiederholung aus KMx]`), zweistellige Dateien `NN-slug.html` pro
  Schuljahr pro Klasse. `teach`-Skill (global + projektlokal) schreibt
  Zweistelligkeit für Klassen-Material vor; Selbststudium-Bestand bleibt
  vierstellig (Grandfather-Klausel, Querverweise intakt). GRG-PMM-Instanz:
  9 Lessons umbenannt (01–03), Lessons-Tabellen in allen Klassen-READMEs
  (Bestellzettel: Nr./Ziel-UE/Quelle/Typ/Quiz/Status), UE-4+-Anker in
  RESOURCES, AGENTS.md §10.
- **Reason**: On-demand-Bestellungen („morgen brauche ich X") brauchen ein
  System statt Recherche: Quelle↔Ort-Trennung macht Wiederholungen aus
  früheren Jahrgängen bestellbar; Tabellen tragen Nummern- und
  Quiz-Rotations-Stand am Einsatzort. Generischer teach-Skill bleibt
  unverschmutzt (Abgrenzung als Referenz statt Kopie).
- **Tradeoff**: Projektlokaler teach-Pfad (`.opencode/skills/productivity/`)
  ist ein Symlink ins mattpocock/skills-Repo — die Klausel lebt dort als
  lokaler Commit (kein Push ins Upstream); dauerhafte Heimat sind die
  globale Kopie + create-lesson.

## 2026-09-22: 5. Klasse im Team-Teaching — Strang-Trennung mit statistikfernem Kollegen (#2)

- **Choice**: KM9 (V. Jahrgang, 4(2) Wochenstunden) wird per Strang-Trennung
  geteilt: Georg = kompletter Statistik-Strang mit R (WS: DoE/RSM UE 2–6,
  8–10; SS: Zuverlässigkeit UE 1–5), Kollege = Management-Strang (WS: FM
  UE 12; SS: Energiemanagement UE 6–9) plus Praxisrahmen/Berichte in den
  geteilten UE (WS: 1, 7, 11, 13; SS: 10, 11, 14, 15). Festgehalten in
  `unterricht/HWIT-PMM/jg5-semesterplan-{ws,ss}.md` (Wer-Spalte +
  Arbeitsteilung-Abschnitt). R-Code erklärt und beurteilt ausschließlich
  Georg; Matura-Fragenpool je 50 % pro Strang.
- **Reason**: Kollege hat mit Statistik wenig am Hut; DoE/RSM und
  Zuverlässigkeit sind nicht statistikfrei lehrbar. Reine Inhalts-Teilung
  geht im WS nicht 50/50 auf (11 UE Statistik vs. 1 UE FM) — Ausgleich
  über SS (Kollege: 4 UE Energie + Projekt) und organisatorische Anteile
  (HÜ-Korrektur FM, R1-Organisation). Einzige R-Stelle im Kollegen-Block:
  UE 7 (KM9b, SS) EnPI-Regression — Georg als Gast.
- **Tradeoff**: WS-Bilanz ca. 10:2–3 zugunsten Georg; FM/Energie-Stoff des
  Kollegen ist voller Eigenbedarf ohne Buch-Anker (Matrix) → Vorlaufzeit
  ab WS nötig.

## 2026-09-10: Semesterpläne decken die Einheiten-Rolle ab (#11)

- **Choice**: GRG-PMM führt keine separaten `jgN-einheiten.md`-Dateien. Die vier Semesterpläne (`unterricht/HWIT-PMM/jg4-/jg5-semesterplan-{ws,ss}.md`) übernehmen die Rolle der Lehrstoffverteilung („Einheiten"): UE-Tabellen nach thematischen Blöcken mit KM/Lernziel-Bezug, Lektüre-Ankern und reservierten DS.
- **Reason**: Der lehrplan-Skill sieht `jgN-einheiten.md` (Ist-Doku) und `jgN-semesterplan-{ws,ss}.md` (Plan) als getrennte Dateien vor. Für PMM ist die Trennung ohne Mehrwert: Die Ist-Doku-Pflege ist seit SJ 2025/26 in den Semesterplänen aufgegangen — eine separate Einheiten-Datei pro Jahrgang wäre eine drift-gefährdete Duplikat-Kopie derselben UE-Tabellen.
- **Consequence**: Der Konformitäts-Check meldet fehlende `jgN-einheiten.md` nicht als Befund (dokumentierte Nutzer-Entscheidung, in `lehrplan/METADATA.md` vermerkt). Der zukünftige Unterricht-Skill fasst die Semesterpläne als Einheiten-Quelle auf.

## 2026-09-07: Phase 3 umgesetzt — Stil-Leitfaden + UE 1–3 Retrofit (#6)
- **Choice**: `docs/stil-leitfaden.md` verbindlich (R4DS-Stimme auf Deutsch:
  Einstiegsfrage → Ziel-Artefakt → inkrementeller Aufbau → „Jetzt du!" →
  typische Fehler → Zusammenfassung/Ausblick + Lektüre-Box). UE 1–3
  umgebaut: `01-datenvisualisierung-ggplot` (neu), `02-daten-transformieren-dplyr`
  (aus Alt-UE 2), `03-daten-einlesen-deskriptiv` (Alt-UE 2-Rest). Alt-UE 1
  (Vektoren/Factor) ist absorbiert: Inspektion-Ritual in UE 1, Coercion/
  Factor-Falle in UE 3-HA (Vorhersage-Aufgaben).
- **Reason**: R4DS-Buchreihenfolge (ggplot zuerst, „Whole Game") war
  beschlossene Sache (2026-07-23), aber Bestands-UE folgten noch der alten
  Syntax-vor-Visualisierung-Reihenfolge. Leitfaden zuerst, dann Umschreiben
  — so ist die Didaktik-Messlatte konsistent dokumentiert, bevor Material
  entsteht.
- **Tradeoff**: Vektor-Detailwissen (Coercion, `list[[ ]]`, factor-Codes)
  rutscht tiefer — vertreten durch UE 3-HA + KM8-Anwendung (factor in
  Regelkarten-Daten). Lern-Lektionen 0001/0002 im Selbststudium bleiben auf
  den alten UE-Bezug (historisch).

## 2026-06-02: ISO 8601 Prefix for Legal Documents
- **Choice**: Legal PDFs are named `YYYY-MM-DD_BGBl-II-NNN_Anlage-…pdf`
- **Reason**: Enables chronological sorting and immediate identification of publication date; matches the `YYYY-MM-DD_thema/` convention used in class lesson folders.

## 2026-06-02: Separate Legal Framework Folder
- **Choice**: Legal documents live in `lehrplan/`, instructional materials in `Unterlagen/`
- **Reason**: Clear separation between binding legal texts and teacher-created content; follows GRG-WMC/GRG-INFI pattern of `docs/` for central documents.

## 2026-06-02: Download Anlage 1 (Allgemeiner Teil)
- **Choice**: The general part (Anlage 1) was downloaded from RIS alongside Anlage 1.28
- **Reason**: Anlage 1.28 references Anlage 1 repeatedly (general subjects, didactics, school autonomy rules). Both are required for a complete legal basis.

## 2026-06-02: Duplicate PDFs Consolidated
- **Choice**: The byte-identical RIS PDF was removed; only the school-named PDF (`2015-09-17_Lehrplan_TechnischesManagement.pdf`) is kept
- **Reason**: Both PDFs had identical content (383.232 bytes, CreationDate 17.09.2015). Keeping one avoids confusion and unnecessary duplication. The date prefix preserves chronological context.

## 2026-06-02: Date Prefix Consistent for All Legal PDFs
- **Choice**: School PDF uses `2015-09-17_` prefix to match the Anlage 1 PDF naming convention
- **Reason**: Enables chronological sorting and consistent naming across `lehrplan/`.

## 2026-06-02: School Website Stundentafel as Reference
- **Choice**: The Stundentafel published on spengergasse.at is documented in METADATA.md alongside the RIS version
- **Reason**: The school has exercised school-autonomous adaptations (shifted hours from Anlagen-/Prüftechnik to Umwelttechnologie). Both versions must be understood when planning lessons.

## 2026-06-02: Time Model for PMM Planning
- **Choice**: Lesson plans target 15 double-periods (Doppelstunden) per semester
- **Reason**: 18-20 theoretical double-periods minus admin/exam overhead yields ~15 net. All semester plans must accommodate this cadence.

## 2026-06-02: Language Policy
- **Choice**: German for teaching materials and commit messages; English for AGENTS.md and technical docs
- **Reason**: Matches the established conventions in GRG-WMC and GRG-INFI repositories.

## 2026-07: Semester Plans Corrected to 15 Double-Periods

- **Choice**: All four semester plans rewritten from 30→15 Doppelstunden each.
- **Reason**: The 2026-06-02 time-model decision correctly stated 15 DS/semester, but three of four plans erroneously listed 30 DS (4 h/Woche). KM9b was already correct. Corrected to match reality: 1 Doppelstunde/week per class.

## 2026-07: Self-Study Curriculum Compressed to 15 Teaching Units

- **Choice**: KM7 selbststudium lessons consolidated from 30→15 Unterrichtseinheiten (UE), each binding ~2 old topics; depth kept.
- **Reason**: Consistency between self-study learning and actual 15-Doppelstunden teaching budget. Each UE maps 1:1 to one Doppelstunde.

## 2026-07: Three Artifacts Per Teaching Unit

- **Choice**: Each UE produces (1) a Lern-Lektion for Georg (teach skill, Meisterschaft+Didaktik), (2) a Schueler-Praesentation (reveal.js via CDN), and (3) a Hausaufgabe (markdown).
- **Reason**: Georg learns and prepares-to-teach simultaneously. Students clone the repo and get slides+homework in-browser, always online (CDN for reveal.js).

## 2026-07: Prep-Numbered Folder Convention (NN-slug)

- **Choice**: Before teaching dates are fixed, class materials live in `NN-slug/` folders (e.g., `01-r-grundlagen-datenstrukturen/`). Renamed to `YYYY-MM-DD_slug/` when the actual teaching date is known.
- **Reason**: Curriculum preparation happens before semester scheduling. NN-slug preserves ordering and enables date assignment later without folder restructuring. Documented in AGENTS.md and 4AHWIT/README.md.

## 2026-07-13: Statistics Starts in JG3 (KM5), Not JG4

- **Finding**: The PMM curriculum has three distinct phases. JG1+JG2 (KM3+KM4) are purely process/quality management — no statistics, no R. **Statistics begins in JG3 (KM5+KM6)** with "Statistische Methoden" (probability distributions, parameters/estimators, confidence intervals, lifetime distributions). JG4+JG5 continue with tests, sampling, SPC, DoE, reliability.
- **Implication**: When Georg takes over 4AHWIT (JG4, KM7), the students should already have KM5+KM6 statistics from JG3. An entry test at the start of the school year is needed to assess what the previous teacher covered. If JG3 coverage is weak, KM7 must compensate.
- **Action**: PMM curriculum extracted to `lehrplan/pmm-lehrplan-text.md` for reference.

## 2026-07-13: PMM Curriculum Text Extracted to Markdown

- **Choice**: The PMM-relevant section (Abschnitt 5) of the legal curriculum PDF was extracted to `lehrplan/pmm-lehrplan-text.md`.
- **Reason**: The PDF is not machine-searchable in this workflow. A Markdown extract enables quick reference and grep across all 5 Jahrgänge without running pdftotext each time. Only the PMM section was extracted (not the full 33-page document) to keep it focused.

## 2026-07-18: R4DS as Main Material for the R Toolchain (#6)

- **Choice**: "R for Data Science" (2e) becomes the primary teaching material where the curriculum allows — concretely KM7 UE 1–3 (R toolchain) and KM6 "Prüfergebnisse darstellen" (Kap. 11, 28–29). Coverage analysis: `lehrplan/r4ds-abdeckung.md`.
- **Reason**: Georg values the book's tone and didactics; analysis shows R4DS covers ~100 % of the toolchain strand but 0 % of the industrial-statistics core. Gap is closed by Navarro LSR (CC BY-SA, KM5/KM7 tests), ModernDive (CC BY-NC-SA, KM6 inference), NIST e-Handbook (US-gov, KM8/KM9: SPC, capability, MSA, DoE, reliability, acceptance sampling), package vignettes, and own materials for ISO/OENORM specifics.
- **Tradeoff**: R4DS is CC BY-NC-ND 3.0 — own materials must be original German text adopting the didactic pattern only ("link, don't copy"); no translated passages.

## 2026-07-18: UE 1–3 Aligned to Book Order, English Reading Assigned (#6)

- **Choice**: UE 1–3 will be restructured along R4DS "whole game" order (visualization with ggplot2 before formal syntax/data structures). Students read the English original chapters (no German chapter bridges).
- **Reason**: Maximizes coherence with the assigned book; English reading serves the curriculum's Business-English target (B1+ end of JG4, B2 end of JG5).
- **Consequence**: Existing UE 1–2 (slides + homework) get a full retrofit in Phase 3 of issue #6; semester plan rows UE 1–3 will be updated; NN-slug folders may be renamed (no dates fixed yet).

## 2026-07-18: Optional Long-Term German Community Translation (Phase 6, #6)

- **Choice**: Pursue an LLM-assisted German translation of R4DS 2e with Georg as human reviewer, via the official community-translation channel: revive hadley/r4ds#1414 (German request, unanswered since 2023-04), wait for Hadley/O'Reilly permission (precedent: #955 Portuguese, ES/PT/VI listings), then translate chapter-wise in a public fork with automated QA (anchor/code diffs, quarto render) and per-chapter review PRs.
- **Reason**: Solves the ND constraint legitimately instead of circumventing it; machine support makes a solo-plus-reviewer effort feasible (~1 chapter per 1–2 weeks).
- **Tradeoff**: Permission latency/denial risk (Hadley never answered #1414); pre-permission work limited to one private sample chapter (private creation of an adaptation is not distribution). Not needed for Sept 2026 — students read English regardless.

## 2026-07-23: Phase 6 (DE-Community-Übersetzung) Abgebrochen (#6)

- **Auslöser:** Hadley antwortete auf [#1414](https://github.com/hadley/r4ds/issues/1414#issuecomment-5045752767): O'Reilly hat bereits einen Übersetzungsvertrag mit einem deutschen Verlag abgeschlossen → keine Community-Freigabe möglich.
- **Konsequenz:** Phase 6 von Issue #6 ist endgültig gestrichen. Thread am 23.07. freundlich geschlossen (Dank + Hinweis auf englisches Original).
- **Unverändert:** R4DS 2e bleibt Hauptmaterial (online englisch). Eigene deutsche Unterrichtsmaterialien (Originaltext, "link, don't copy") sind weiterhin erlaubt.
- **Zu beobachten:** Offizielle kommerzielle DE-Ausgabe von O'Reillys deutschem Verlag — falls sie erscheint, optionale Print-Ergänzung.

## 2026-08-21: Einstiegstest-Formate 4HWIT und 5HWIT überarbeitet (#3)

- **Choice:** 4HWIT bleibt bei 50 Fragen / 200 Punkten; 5HWIT wird auf 60 Fragen / 240 Punkte erweitert. Beide Tests haben jetzt 6 Blöcke (5HWIT) bzw. 5 Blöcke (4HWIT) und eine Mischung aus 0/1/2/3/4-korrekt-Fragen.
- **Reason:** Die Überprüfung gegen den Lehrplan (BGBl. II Nr. 262/2015, Anlage 1.28, Abschnitt 5) ergab: (a) 5HWIT-Test fehlte der komplette Bereich *Umweltmanagement* (KM7+KM8 laut Lehrplan verpflichtend), obwohl in den Hinweisen angekündigt — behoben durch Block 6 (F51–F60). (b) Beide Tests verletzten die CONVENTIONS-Regeln zum Answer-Shuffling (keine 0/1/2-korrekt-Fragen, Distraktor-Cluster, A-Cluster bei 4HWIT Q15–Q23).
- **Inhalt 4HWIT:** 50 Fragen, 5 Blöcke (Verteilungen, Parameter/Schätzwerte, Vertrauensbereiche, Prüfergebnisse, Lebensdauer). Ziel-Mix korrekte Anzahl: 4/4/8/20/14 (0/1/2/3/4). Distraktor bei 3-korrekt: 5/5/5/5.
- **Inhalt 5HWIT:** 60 Fragen, 6 Blöcke (R-Toolchain, Tests, Annahmeprüfung, SPC, Prozessfähigkeit, Umweltmanagement). Ziel-Mix: 5/5/10/24/16 (0/1/2/3/4). Distraktor bei 3-korrekt: 6/6/6/6.
- **Korrektur F44 (5HWIT):** Option C „Cpm ≤ Cpk" war inhaltlich falsch → korrigiert auf „Cpm ≤ Cp" (Gleichheit nur bei μ = T, da dann Cpm = Cpk = Cp).
- **Verify-Skript:** `verify_quiz.py` (in `/tmp/opencode/verify-quiz/`) prüft Konsistenz, Verteilung korrekte Anzahl, Distraktor-Position, Cluster-Länge. Vor jedem Commit laufen lassen (CONVENTIONS Z. 47–49).
- **Ablage:** `4ahwit/knowledge_4ahwit_2026-09-07.md` + `_solutions.md` und `5hwit/knowledge_5hwit_2026-09-08.md` + `_solutions.md` im GRG-PMM-T Repo.

## 2026-09-15: Kohorten-Ablagen 4ahwit-x/ und 4ahwit-y/ am Repo-Root (#13)

- **Choice**: Die 4AHWIT-Klasse wird wegen Klassengröße in zwei Kohorten
  geteilt; Ablagen sind `4ahwit-x/` und `4ahwit-y/` am Repo-Root
  (kleingeschrieben, konform mit der Root-Klassenordner-Konvention wie
  `5ahwit/`).
- **Reason**: Die 2(1)-Wochenstunden von KM7 laufen kohortenweise different;
  kohorten-spezifisches Unterrichtsmaterial braucht eigenen Ablageort.
- **Tradeoff**: Zwei Ordner statt einem = kleine Duplicierungsgefahr;
  README verweist deshalb auf das gemeinsame Material unter
  `unterricht/HWIT-PMM/` (nur Kohorten-spezifisches landet in den Dirs).
- **Umsetzung**: READMEs nach 5ahwit-Muster; METADATA.md Root-Klassenordner-
  Absatz erweitert; Kohorte x ist zugleich Teach-Workspace
  (MISSION/RESOURCES/NOTES/assets/lessons) für Lektionen im R4DS-Stil.

## 2026-09-22: Werkzeug-Überblicksfolie als Master + anonyme HÜ-Kontrolle (#13)

- **Choice**: Die Übersichtsfolie „Was kann R?" liegt als Master unter
  `unterricht/HWIT-PMM/00-was-kann-r/praesentation.html` (reveal.js via
  CDN + `assets/slides.css`, alle R-Code-Blöcke per Rscript verifiziert);
  Kohorten-READMEs verweisen nur darauf. Die HÜ-Kontrolle
  (`4ahwit-x/2026-09-22_hue-kontrolle.md`) ist eine anonyme Strichliste —
  keine Namen im Repo.
- **Reason**: Die Folie ist kohortenübergreifend wiederverwendbar (y hatte
  den Installationstag ohne Überblick); Master/Kopien-Modell und
  „link, don't copy" gelten auch hier. Namen in Kontrolllisten sind
  Datenschutz-Risiko ohne Nutzen — die Zählung reicht für die
  Nachhol-Planung (Partner-Prinzip).

## 2026-09-16: 5AHWIT R-On-Ramp vor DoE + Teach-Workspace im SWP-Muster (#14)

- **Choice**: Die 5AHWIT startet mit drei R-Basics-Lektionen (0001 ggplot,
  0002 dplyr, 0003 einlesen & deskriptiv), bevor UE 1 (DOE-Einführung,
  KM9a) beginnt. Teach-Workspace liegt unter `5ahwit/teach/` nach dem
  SWP-Muster (`GRG-SWP/3ahwii/teach/`): MISSION/NOTES/RESOURCES,
  `assets/`, `lessons/`, `reference/` (Glossar + Cheatsheet),
  `learning-records/` plus Klassenhub-README mit UE-Tabelle.
- **Reason**: Vorwissen unbestätigt (Einstiegstest 5HWIT offen,
  GRG-PMM-T #3); Setup-Log 2026-09-09 zeigt Frisch-Start (git, VS Code,
  Repo-Klon — kein R). Der jg5-semesterplan-ws setzt KM7/KM8-R-Vorwissen
  voraus. Das SWP-Muster wählte Georg explizit als Vorbild
  (reference/ + learning-records/ + Hub-UE-Tabelle gefallen ihm dort).
- **Master/Kopien-Modell**: `unterricht/HWIT-PMM/` hält die Master-
  Dateien (HA, Folien, Assets); Kohortenordner pflegen Kopien +
  Adaptionen (`5ahwit/hausaufgaben/`, `5ahwit/teach/lessons/`), Master
  bleibt unangetastet. Kohorte x funktioniert so weiter.
- **Daten-Strategie**: L0001/0002 behalten penguins (Konsistenz mit den
  Master-HAs, Code dort bereits verifiziert); L0003 nutzt erstmals
  Betriebsdaten — `unterricht/HWIT-PMM/assets/betriebsdaten.csv`
  (synthetisch, `set.seed(20260916)`, 120 Teile, 10 Chargen × 3
  Maschinen, Soll 10,00 mm ± 0,15, M3 als aus-mitte-laufende Maschine
  mit 6/116 Ausschuss). Das löst den Betriebsdaten-Gap aus #13 auch
  für Kohorte x.
- **Tradeoff**: On-Ramp verzögert den DoE-Start um ~1–2 DS; Quiz-Richtige
  rotieren C/B/A.
