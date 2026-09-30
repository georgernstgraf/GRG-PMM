# 5AHWIT

## 2026-09-23__git/vscode/Rstudio Installation

Klassenordner der **5AHWIT** für das Fach **PMM** (Prozessmanagement,
HTL Spengergasse, WIT), Schuljahr 2026/27. Kleingeschrieben = Kohorten-Ablage:
hier liegt kohorten-spezifisches Material. Die **Master-Dateien** liegen in
[`../unterricht/`](../unterricht/) (vorbereitete Einheiten) und
[`../lehrplan/pmm-hwit/`](../lehrplan/pmm-hwit/) (Semesterpläne) und werden hier nur
**kopiert und adaptiert** — nie direkt verändert.

## Semesterplan

- **Wintersemester 2026/27:** [`../lehrplan/pmm-hwit/jg5-semesterplan-ws.md`](../lehrplan/pmm-hwit/jg5-semesterplan-ws.md)
  (KM9a: DoE/RSM) — generische Fassung.
- **On-Ramp:** Die Klasse startet mit drei R-Basics-Lektionen
  ([`../unterricht/SA-01…SA-03`](../unterricht/)), bevor UE 1 DoE beginnt. Begründung:
  [`teach/MISSION.md`](teach/MISSION.md).

## Unterrichtseinheiten

| Datum | UE | Thema | Material |
|-------|----|-------|----------|
| 2026-09-09 | — | Setup: git, VS Code, Repo-Klon | — |
| 2026-09-16 | 1 | **R-On-Ramp:** Daten visualisieren (ggplot) | [Lektion SA-01](../unterricht/SA-01-datenvisualisierung-ggplot/lesson.html) |

## Teach-Workspace

[`teach/`](teach/) — Lessons, Glossar, Cheatsheet, Learning-Records
(Struktur analog `GRG-SWP/3ahwii/teach/`).

### Lessons-Übersicht (Bestellzettel für On-demand)

| Nr. | Ziel-UE | Thema | Quelle | Typ | Quiz | Status |
| ----- | --------- | ------- | -------- | ----- | ------ | -------- |
| SA-01 | UE 1 (R-On-Ramp, 5AHWIT WS) | Datenvisualisierung mit ggplot | schulautonom, R4DS Kap. 1 | Erstkontakt | C | live (DS 2026-09-16) |
| SA-02 | UE 2 (R-On-Ramp, 5AHWIT WS) | Daten transformieren mit dplyr | schulautonom, R4DS Kap. 3 | Erstkontakt | B | bereit |
| SA-03 | UE 3 (R-On-Ramp, 5AHWIT WS) | Daten einlesen & deskriptive Statistik | schulautonom, R4DS Kap. 7+10 | Erstkontakt | A | bereit |
| KM7-01 | vor UE 1 (DoE) | Mittelwertsvergleich: z-Test & t-Test | KM7, Navarro Kap. 13 | Wiederholung 4K | B·A·C (3 Fr.) | bereit |
| KM5-02 | vor UE 1 (DoE) | Binomialverteilung & Annahmeschwelle | KM5, Navarro Kap. 9 | Wiederholung 4K | A·B (2 Fr.) | bereit |
| KM7-02 | vor UE 1 (DoE) | Der Chi-Quadrat-Test | KM7, Navarro Kap. 12 | Wiederholung 4K | A·C·B (3 Fr.) | bereit |
| KM6-01 | vor UE 1 (DoE) | Boxplot & Wahl der richtigen Grafik | KM6, R4DS Kap. 1 | Wiederholung 4K | B·A·B (3 Fr.) | bereit |
| KM7-03 | vor UE 1 (DoE) | Teststärke & Stichprobenumfang | KM7, Navarro Kap. 13+16 | Wiederholung 4K | A·C·B (3 Fr.) | bereit |

Nächste freie Nr.: **SA-04** · nächste Quiz-Richtige: **D**
(Verteilung über die 14 neuen Fragen: A×5 · B×6 · C×3 — bewusst keine
D, damit SA-04 mit D starten kann.)

**Reihenfolge der Wiederholungs-Lessons:** KM7-01 → KM5-02 → KM7-02 →
KM6-01 → KM7-03. Begründung: Die Binomialverteilung ist die Grundlage für
den Anpassungstest in KM7-02, der Boxplot kommt vor der Teststärke, und
KM7-03 ist die direkte Brücke zur Versuchsplanung in UE 1. Alle fünf
arbeiten mit `assets/betriebsdaten.csv`.

Übernahme in die Klasse: Ordner nach
`<klasse>/YYYY-MM-DD__thema/` anlegen, `lesson.html` + `praesentation.html`
+ `hausaufgabe.md` aus `unterricht/<PREFIX>-<NN>-<slug>/` kopieren,
`README.md` aus `unterricht/<PREFIX>-<NN>-<slug>.md` übernehmen..

## Hausaufgaben

[`hausaufgaben/`](hausaufgaben/) — Kohorten-Kopien der Master-HAs aus
`unterricht/SA-0N-*/hausaufgabe.md`; Abweichungen nur hier.

## Log SJ 2026/27

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
