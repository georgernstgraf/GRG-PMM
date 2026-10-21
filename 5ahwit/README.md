# 5AHWIT

# Tests

- 13.1.2027 (Umfang: Wintersemester 2026/27)
- 20.1.2027 (Ersatztermin)

## Aufgaben vom ...
- 2026-10-21_themen:
  in `Projekte/fragestellungen-statistik` (insbesondere km9a.md) sind mögliche statistische Fragestellungen,
  die wir statistisch beantworten werden. Schaue Dich darin um!
  1) Erstelle in Deinem Repo einen Ordner (zb 2026-10-16_hü) und lege darin ein README.md an mit folgenden Inhalten:
  2) Drei Themengebiete, welche Dich interessieren
  3) zu jedem dieser "interessanten" Themen: Welche FRAGE wollen wir an die Daten stellen?
- 2026-10-14_chi-quadrat-test
- 2026-09-23: Setup-HÜ — PMM-Repo auf GitHub anlegen (public, mit README) + Wiederholungswünsche der 4. Klasse im Repo-README festhalten → [2026-09-23__setup_fertig/](./2026-09-23__setup_fertig/)

## 2026-10-14_chi_quadrat_schulübung

## 2026-09-23__git/vscode/Rstudio Installation

Klassenordner der **5AHWIT** für das Fach **PMM** (Prozessmanagement,
HTL Spengergasse, WIT), Schuljahr 2026/27. Kleingeschrieben = Kohorten-Ablage:
hier liegt kohorten-spezifisches Material. Die **Master-Dateien** liegen in
[`../unterricht/`](../unterricht/) (vorbereitete Einheiten) und
[`../lehrplan/pmm-hwit/`](../lehrplan/pmm-hwit/) (Semesterpläne) und werden hier nur
**kopiert und adaptiert** — nie direkt verändert.

### 2026-09-23 — Wiederholungswünsche ausgewertet, fünf Lessons vorbereitet

Die Setup-HÜ (Setup-Ordner oben) verlangte, im eigenen PMM-Repo
festzuhalten, welche Inhalte der 4. Klasse wiederholt werden sollen.
Auswertung aller 18 abgegebenen Repos:
[`wiederholungswuensche.md`](wiederholungswuensche.md).

**Befund:** 6 von 18 Repos nennen ein Thema. Chi-Test 4×, t-Test 3× (2×
ausdrücklich „nicht verstanden"), Boxplot/Grafikwahl 2×, Z-Test, Binomial-
verteilung und Teststärke je 1×. Kein Wunsch betrifft DoE/RSM — also genau
den Stoff, der UE 1 eröffnet. Das deckt sich mit der in
[LR 0001](teach/learning-records/0001-vorwissen-onramp.md) offenen Lücke:
KM7 (Tests, ANOVA) und `lm()`-Lesekompetenz sind Voraussetzung für UE 1.

**Daraus:** Fünf Prepared Lessons in `unterricht/` (siehe Tabelle oben),
alle mit `assets/betriebsdaten.csv` verifiziert. Didaktische Reihenfolge
KM7-01 → KM5-02 → KM7-02 → KM6-01 → KM7-03, alle vor UE 1. Wenn nicht alle
fünf zeitlich passen: **KM7-01 und KM7-03 zuerst** — sie decken die
tatsächliche Lücke ab und KM7-03 ist die Vorübung zur Versuchsplanung.

**Datenschutz-Hinweis notiert:** Drei READMEs enthalten committete
Schul-E-Mail-Adressen in `git config`-Zeilen. Für die nächste HÜ
präzisieren: `git config` gehört ins Terminal, nicht ins README.

### 2026-09-16 — R-On-Ramp gestartet (UE 1)

Teach-Workspace im SWP-Muster aufgesetzt (Lessons 01–03, Glossar,
Cheatsheet). In der DS: Lektion 01 (ggplot) live, Lektion 02 (dplyr) als
Nachbereitung; Lektion 03 (Daten einlesen & deskriptiv, Betriebsdaten)
als Vorbereitung auf die nächste DS. HÜ: Lektion 01 durcharbeiten +
Hausaufgabe UE 1. Abweichung vom Semesterplan dokumentiert
([learning-record 0001](teach/learning-records/0001-vorwissen-onramp.md)).

### 2026-09-09

- git installiert
- vscode installiert
- GRG-PMM geklont
