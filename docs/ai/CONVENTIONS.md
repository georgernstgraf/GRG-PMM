# Conventions

Coding patterns, naming rules, and style agreements for this project.
Follow these without question. Do not deviate unless explicitly told.

## Naming
- Class lesson folders: `YYYY-MM-DD_thema/` (lowercase, hyphens for multi-word names)
- Legal PDFs: `YYYY-MM-DD_BGBl-II-NNN_Anlage-X.XX_…pdf`
- Readable, descriptive names; no abbreviations unless domain-standard

## Language
- Teaching materials: German
- Code comments: German
- Commit messages: German
- AGENTS.md and technical docs: English
- `docs/ai/` knowledge files: English

## Git
- Every commit must reference a GitHub issue number (e.g., `Thema: Beschreibung (#1)`)
- Use the `issue-workflow` skill for all commits
- No commit of temporary files, IDE directories, or binary artifacts
- Push only the current branch

## Repo Structure
- Legal documents: `lehrplan/RIS/` (RIS law-text PDFs only, ISO-date prefix)
- Knowledge persistence: `docs/ai/`
- Reference materials: `Unterlagen/`
- Class extracts: `lehrplan/4HWIT/`, `lehrplan/5HWIT/`
- KM-Steckbriefe (didaktisch): `lehrplan/kompetenzmodule/`
- Each class folder may have its own `README.md`
- UE material style: `docs/stil-leitfaden.md` (R4DS-Stimme, #6)

## Date Format
- All dates in filenames: ISO 8601 (`YYYY-MM-DD`)

## Quizzes & Prüfungsfragen (Answers gut mischen)
Answers in every quiz or exam MUST be well-shuffled. Never leave a predictable
pattern a student could exploit. Specifically:

- **Vary the correct-option position.** The correct letter (A/B/C/D) must cycle
  through all positions across consecutive questions — never cluster on one
  letter (the classic bug: "D is always wrong" or "C is always right").
- **Vary the number of correct answers** in multiple-correct questions (1–4
  correct, not always exactly 3). Include at least a few 1-correct, 2-correct,
  and 4-correct (all correct) questions across a longer exam.
- **Shuffle option order per question**, not just the distractor list. Place
  the single wrong option at different positions (A, B, C, D) across questions.
- **Verify after generation.** For generated exam files, run a consistency
  check (e.g. Python) that the correct-answer positions are distributed across
  A/B/C/D and the correct-count varies — before committing.

Applies to: `knowledge-exam` outputs (Multiple-Correct, `*_solutions.md`) AND
teach-skill lesson quizzes (`quiz.js`, single-correct) in `selbststudium/`.

## Glossar & UE-Verweise (#6)

- `GLOSSAR.md` (Root) ist die zentrale Abkürzungs-/Begriffsdatei. Neue
  Begriffe bei erster Verwendung dort eintragen (passende Domänen-Tabelle,
  3 Spalten: Begriff | Bedeutung | Kurzerklärung mit Kontext).
- **UE-Verweise immer vollqualifiziert:** `UE n (KMx, Klasse WS/SS)` —
  UE-Nummern sind nur innerhalb eines Semesterplans eindeutig
  (UE 5 in KM7 ≠ UE 5 in KM9a). Einträge ohne konkrete UE (noch nicht
  geplante Semester) nennen nur das KM (`KM8`, `KM9b`).
- Gilt repo-weit: Glossar, Semesterpläne, KM-Steckbriefe, Knowledge-Files.

## Open-Source-Lehrmaterial & Lizenzen (#6)

- **"Link, don't copy".** Lektüre wird immer per URL/Kapitelangabe zugewiesen,
  nie in eigene Dateien kopiert.
- **R4DS 2e = CC BY-NC-ND 3.0.** Eigene Materialien müssen Original-Text auf
  Deutsch sein: die Didaktik (Frage → Ziel → Aufbau → Übung → Fehler →
  Ausblick) wird übernommen, der Buch-Wortlaut nie übersetzt oder adaptiert.
- Verifizierte Lizenzen des Material-Kanons: palmerpenguins CC0 1.0 ·
  ModernDive CC BY-NC-SA 4.0 · Navarro LSR CC BY-SA 4.0 · NIST e-Handbook
  US-Gov (Zitat mit Quellenangabe). Kanon + Abdeckung:
  `lehrplan/r4ds-abdeckung.md`.
- Bei jeder UE, die auf Buchkapitel aufbaut: Lektüre-Box mit
  Kapitel-Verlinkung (englisch) am Folienanfang bzw. Lektionsanfang.

## Kohorten-Ablagen am Repo-Root (#13)
- Klein geschriebene Klassenordner am Repo-Root = Kohorten-Ablagen
  (`5ahwit/`, `4ahwit-x/`, `4ahwit-y/`); GROSSBUCHSTABEN unter `lehrplan/`
  = Lehrplan-Extrakte. Nie mischen.
- Kohorten-Teilungen großer Klassen: Suffix `-x`/`-y`.
- Kohorten-Dirs dürfen nur kohorten-spezifisches Material halten;
  gemeinsames Material bleibt unter `unterricht/` (vorbereitete Einheiten)
  bzw. `unterricht/HWIT-PMM/` (Semesterpläne).
- **Master/Kopien-Modell (#14):** `unterricht/` hält die Master-Einheiten
  (`praesentation.html` + `hausaufgabe.md` + `lesson.html`) — Kohorten-
  Abweichungen werden als **Kopien im Kohortenordner** gepflegt (z. B.
  `hausaufgaben/`), Master-Dateien werden nie direkt angefasst.
- Teach-Workspace-Layout: 4ahwit-x/y halten die Workspace-Dateien am
  Ordner-Root (MISSION, RESOURCES, NOTES); 5ahwit nutzt das SWP-Muster
  (nach `GRG-SWP/3ahwii/teach/`): alles unter `teach/`
  (`MISSION.md`, `RESOURCES.md`, `NOTES.md`, `reference/`,
  `learning-records/`) plus Klassenhub-README mit UE-Tabelle.
- **Lektionsablage (2026-09-28, #20):** vorbereitete (undatierte) Einheiten
  liegen **flach** unter `unterricht/` als `<PREFIX>-<NN>-<slug>/`
  (`KM<#>` = Kompetenzmodul, `SA` = schulautonom; `<NN>` läuft pro KM) mit
  `praesentation.html` + `hausaufgabe.md` + `lesson.html`. Semesterpläne
  bleiben in `unterricht/HWIT-PMM/`; die Kohorten-`prepared-lessons/` wurden
  aufgelöst. Terminierte/abgehaltene Lektionen liegen im Datums-Ordner
  `<klasse>/YYYY-MM-DD__thema/lesson.html` plus Tages-README (Aufgabe als
  erster eigener `## Aufgabe`-Abschnitt, Pflicht).
- Lektionen sind self-contained HTML ohne CDN-Abhängigkeiten (Offline-fähig
  auf Schul-Laptops); Quiz-Antworten mit gleicher Wortzahl.
- Quiz-Richtige-Position rotiert (CONVENTIONS Answer-Shuffling gilt auch
  für Kohorten-Lektionen, nicht nur selbststudium/).
- Hell/Dunkel-Umschalter über das gemeinsame `assets/theme.js` (alle
  Klassen-Lektionen). Kohorten-spezifische Aufhol-/Recap-Lektionen dürfen
  direkt in der Zielkohorte entstehen (im README kennzeichnen).

## Shared Assets & HTML-Bootstrap (#19, 2026-09-27)
- **Genau ein** Top-Level-Ordner `assets/` im Repo. Keine eigenen
  `assets/`-Ordner in Kohorten/Workspaces mehr; CSS, JS und Datensätze
  (`betriebsdaten.csv`) liegen dort.
- Jede HTML-Seite trägt im `<head>` die **generische Inline-Bootstrap**, die
  die Ahnen-Verzeichnisse abläuft und `assets/loader.js` findet. Der Loader
  leitet den Root aus seiner eigenen URL ab (kein Repo-Name im Code) und
  injiziert `data-css`/`data-js` sowie `site.js` + `github-pages-link.js`.
- Jede Seite trägt den Badge „Auf GitHub Pages ansehen" (fixiert,
  `no-print`); die Basis-URL steht einmalig in `assets/site.js`.
- **Nicht-Asset-Links bleiben relativ** und dürfen nicht über `<base>` oder
  root-absolute Pfade geführt werden.
- Nutzung ausschließlich über den **Live-Server** (`./serve.sh`) oder
  GitHub Pages — **kein `file://`** (Firefox blockiert `file://`-Subressourcen
  aus Eltern-/Geschwisterverzeichnissen; siehe PITFALLS).
- Quiz-Markup ist vereinheitlicht: `<div class="quiz" data-loesung="N">` mit
  `input[type=radio]`, `.feedback`, `.erklaerung` (richtig) und optional
  `.hinweis` (falsch) — ein `assets/quiz.js` für Klassen und Selbststudium.
