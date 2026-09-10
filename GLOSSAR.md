# Glossar — Abkürzungen & Fachbegriffe

Zentrales Nachschlagewerk für alle Abkürzungen und Fachbegriffe, die in
diesem Repository verwendet werden. Gruppiert nach Domäne, innerhalb der
Tabellen alphabetisch.

**Konventionen:** Deutsche Erklärung, englischer Original-Begriff in
Klammern wo relevant. Spalte 3 gibt Kontext: wo der Begriff im Repo bzw.
Unterricht vorkommt. **UE-Verweise immer vollqualifiziert** als
`UE n (KMx, Klasse WS/SS)` — UE-Nummern sind nur innerhalb eines
Semesterplans eindeutig (UE 5 in KM7 ≠ UE 5 in KM9a). Einträge ohne
konkrete UE (noch nicht geplante Semester) nennen nur das KM.
Semesterpläne: `4HWIT/semesterplan-ws.md`, `5HWIT/semesterplan-ws.md`.

---

## ⚠ Kollisionen & Mehrdeutigkeiten

Diese Begriffe haben **zwei Bedeutungen** — Kontext entscheidet:

| Begriff | Bedeutung 1 | Bedeutung 2 | Auflösung |
|---|---|---|---|
| **KM** | Kompetenzmodul (Lehrplan-Einheit, KM3–KM9b) | Kaplan-Meier (Schätzer, Überlebenszeitanalyse) | Kaplan-Meier nur im Zuverlässigkeits-Kontext (KM9b); sonst immer Kompetenzmodul |
| **R** | Programmiersprache R | Zuverlässigkeitsfunktion R(t) | R(t) nur im Zuverlässigkeits-Kontext (KM9b) |
| **CI** | Confidence Interval (Konfidenzintervall) | Continuous Integration (Software) | In diesem Repo **immer** Konfidenzintervall |
| **LR** | Learning Record (Lernprotokoll, `selbststudium/learning-records/`) | Likelihood Ratio (Statistik) | In diesem Repo **immer** Learning Record |
| **SS** | Sommersemester | — | Gegenstück: WS = Wintersemester |
| **DS** | Doppelstunde (2 Schulstunden) | Data Science | In Semesterplänen **immer** Doppelstunde |

---

## 1. Schule & Lehrplan

| Begriff | Bedeutung | Kurzerklärung & Kontext |
|---|---|---|
| ASchG | ArbeitnehmerInnenschutzgesetz | Österr. Arbeitssicherheitsgesetz; UE 12 (KM9a, 5HWIT WS) |
| BGBl. | Bundesgesetzblatt | Verlautbarungsorgan; Lehrplan = BGBl. II Nr. 262/2015 |
| BLVG | Bundeslehrer-Lehrverpflichtungsgesetz | Ermächtigungsgrundlage des Lehrplans (§ 7) |
| BMBF | Bundesministerium für Bildung und Frauen | Einbringende Stelle des Lehrplans (2015) |
| Doppelstunde | 2 Schulstunden am Stück | Grundeinheit der Planung: 1 DS/Woche pro Klasse |
| ELI | European Legislation Identifier | Eindeutige URI für Rechtsdokumente; RIS-Verweise in `lehrplan/METADATA.md` |
| GER | Gemeinsamer Europäischer Referenzrahmen (Sprachen) | Zielniveaus: B1+ Ende JG4, B2 Ende JG5 — englische R4DS-Lektüre bedient das |
| HTL | Höhere Technische Lehranstalt | Schulform; hier: HTL Spengergasse, Wien |
| HÜ | Hausübung | Beurteilungsdrittel (PLF / HÜ / Mitarbeit), siehe Root-README |
| JG | Jahrgang | JG1–JG5 = 1.–5. Klasse; Statistik beginnt in JG3 (KM5)! |
| KM | Kompetenzmodul | Semesterweise Lehrplaneinheit (KM3–KM9b) — ⚠ Kollision, s.o. |
| KVP | Kontinuierlicher Verbesserungsprozess | Prozessmanagement-Grundprinzip (JG1) |
| LF | Leistungsfeststellung | Prüfungstermine; reservierte DS im Semesterplan |
| PLF | Praxis-Leistungs-Feststellung | Große praktische Prüfung; 1/3 der Note |
| PMM | Prozessmanagement | Fachname im Lehrplan (Anlage 1.28, Abschnitt 5); Maturafach der WIT |
| PMN | Projektmanagement und Netzwerktechnik | **Schulischer** Name an der Spengergasse — steht nicht im Lehrplan! |
| RIS | Rechtsinformationssystem des Bundes | Quelle der Lehrplan-PDFs (ris.bka.gv.at) |
| SchOG | Schulorganisationsgesetz | Ermächtigungsgrundlage (§§ 6, 68a, 72) |
| Stundentafel | — | Wochenstunden je Fach/Jahrgang; schulautonom anpassbar (IV. Abschnitt) |
| UE | Unterrichtseinheit | Eine Doppelstunde; Semester = 13 echte UE + 2 reservierte DS |
| WIT | Wirtschaftsingenieurwesen – Technisches Management | Abteilung an der HTL Spengergasse |
| WS / SS | Wintersemester / Sommersemester | Semester 7+9 = WS (4HWIT/5HWIT), 8+10 = SS |

## 2. Statistik & Qualitätssicherung

| Begriff | Bedeutung | Kurzerklärung & Kontext |
|---|---|---|
| ANOVA | Analysis of Variance (Varianzanalyse) | Mittelwertvergleich von ≥3 Gruppen; UE 8 (KM7, 4HWIT WS), Konzeptbrücke zu DoE |
| AQL | Acceptable Quality Limit | Schlechtester noch akzeptabler Qualitätszustand; Kerngröße ISO 2859, UE 9–10 (KM7, 4HWIT WS) |
| ARL | Average Run Length | Mittlere Anzahl Punkte bis zum Regelkarten-Alarm; KM8 |
| Badewannenkurve | Bathtub curve | Ausfallrate über der Lebensdauer: Früh-/Zufalls-/Verschleißphase; KM9b |
| Bootstrap | Resampling mit Zurücklegen | Simulationsweg zu Konfidenzintervallen; ModernDive Kap. 8, UE 5 (KM7, 4HWIT WS) |
| CI | Confidence Interval (Konfidenzintervall) | ⚠ Kollision, s.o.; UE 5 (KM7, 4HWIT WS) |
| CLT | Central Limit Theorem (Zentraler Grenzwertsatz) | Stichprobenmittel → approx. normal für großes n; UE 5 (KM7, 4HWIT WS) |
| Cp / Cpk | Process Capability (Prozessfähigkeitsindizes) | Toleranzbreite vs. Streuung (Cpk zusätzlich lagebezogen); KM8 |
| CUSUM | Cumulative Sum (Regelkarte) | Sensitiv für kleine, anhaltende Shifts; KM8 |
| EDA | Exploratory Data Analysis | Explorative Datenanalyse; R4DS Kap. 10, UE 3 (KM7, 4HWIT WS) |
| EWMA | Exponentially Weighted Moving Average (Karte) | Regelkarte mit „Gedächtnis"; KM8 |
| FWER | Family-Wise Error Rate | α-Inflation bei multiplen Tests; Korrektur: Bonferroni-Holm |
| H0 / H1 | Null- / Alternativhypothese | Grundgerüst jedes Tests; UE 6 (KM7, 4HWIT WS) |
| I-MR | Individuals & Moving Range (Karte) | Regelkarte für Einzelmesswerte; KM8 |
| KPI | Key Performance Indicator | Kennzahl; KM4 (Kennzahlensysteme) |
| LTPD | Lot Tolerance Percent Defective | Schlechtes Qualitätsniveau, das fast immer zurückgewiesen werden soll; UE 9 (KM7, 4HWIT WS) |
| MSA | Measurement System Analysis (Messsystemanalyse) | Prüfmittelfähigkeit, Gage R&R; KM8, NIST Kap. 2 |
| MTBF / MTTF / MTTR | Mean Time Between Failures / To Failure / To Repair | Zuverlässigkeits- und Instandhaltungskennzahlen; KM9b, UE 12 (KM9a, 5HWIT WS) |
| OC-Kurve | Operating Characteristic | Annahmewahrscheinlichkeit in Abhängigkeit vom Qualitätsniveau; UE 9 (KM7, 4HWIT WS) |
| p-Wert | — | Wahrscheinlichkeit für Daten, die unter H0 mindestens so extrem sind — **nicht** die Wahrscheinlichkeit, dass H0 gilt!; UE 6 (KM7, 4HWIT WS) |
| QS | Qualitätssicherung | Anwendungsdomäne des Fachs |
| RBD | Reliability Block Diagram | Systemzuverlässigkeit: Serie/Parallel/k-aus-n; KM9b |
| Shewhart | Walter A. Shewhart | Erfinder der Regelkarte (1930er); KM8 |
| SPC | Statistical Process Control (Statistische Prozesslenkung) | Prozessüberwachung mit Regelkarten; KM8-Kern |
| T²-Karte | Hotelling's T² | Multivariate Regelkarte; KM8 |
| Weibull | Weibull-Verteilung | Zentrale Lebensdauerverteilung; KM9b, NIST Kap. 8 |

## 3. Versuchsplanung (DoE/RSM)

| Begriff | Bedeutung | Kurzerklärung & Kontext |
|---|---|---|
| 2^k | Vollfaktorieller Plan, k Faktoren à 2 Stufen | Alle Kombinationen; UE 2–4 (KM9a, 5HWIT WS) |
| 2^(k−p) | Teilfaktorieller Plan | Bruchteil der Kombinationen, Preis: Confounding; UE 5 (KM9a, 5HWIT WS) |
| Alias / Confounding | Vermengung | Effekte nicht einzeln identifizierbar; Auflösung III/IV/V sagt, wie schlimm; UE 5 (KM9a, 5HWIT WS) |
| BBD | Box-Behnken Design | RSM-Design ohne extreme Eckpunkte; UE 8 (KM9a, 5HWIT WS) |
| Block | — | Homogene Teilmenge der Versuche; schirmt bekannte Störgröße ab; UE 6 (KM9a, 5HWIT WS) |
| CCD | Central Composite Design | Standard-RSM-Design (Faktorial + Sternpunkte + Zentrum); UE 8 (KM9a, 5HWIT WS) |
| Desirability | Zielufunktion | Mehrzieloptimierung über Wünschbarkeit 0–1; UE 10 (KM9a, 5HWIT WS) |
| DoE | Design of Experiments (Versuchsplanung) | Gezieltes Erzeugen von Daten statt Analysieren vorhandener; KM9a-Kern |
| Faktor / Stufe | Factor / Level | Eingangsgröße und deren gewählte Ausprägung im Versuch; UE 1 (KM9a, 5HWIT WS) |
| OFAT | One Factor At a Time | Naives Vorgehen (einen Faktor nach dem anderen) — versagt bei Wechselwirkungen; UE 1 (KM9a, 5HWIT WS) |
| Randomisierung | Randomization | Zufällige Versuchsreihenfolge; schützt vor versteckten Störgrößen; UE 1 (KM9a, 5HWIT WS) |
| Replikation | Replication | Echte Wiederholung eines Versuchspunkts (nicht: wiederholt messen!); UE 1 (KM9a, 5HWIT WS) |
| RSM | Response Surface Methodology | Quadratische Modelle + Optimumsuche; UE 8–10 (KM9a, 5HWIT WS) |
| S/N | Signal-to-Noise Ratio | Taguchi-Robustheitsmaß; UE 10 (KM9a, 5HWIT WS) |
| Taguchi | Genichi Taguchi | Robust Design: Prozess unempfindlich gegen Rauschen machen; UE 10 (KM9a, 5HWIT WS) |
| Zentrumspunkt | Center point | Versuch in der Faktorraum-Mitte; deckt Krümmung auf; UE 4 (KM9a, 5HWIT WS) |

## 4. Umwelt, Facility & Normen

| Begriff | Bedeutung | Kurzerklärung & Kontext |
|---|---|---|
| AWG | Abfallwirtschaftsgesetz 2002 | Österr. Abfallrecht; KM8 |
| DIN EN 15221 | Facility-Management-Normfamilie | Begriffe und Strukturen des FM; UE 12 (KM9a, 5HWIT WS) |
| EMAS | Eco-Management and Audit Scheme | EU-Umweltmanagement- und Audit-System; KM8 |
| EnPI | Energy Performance Indicator | Energiekennzahl; KM9b |
| IMS | Integriertes Managementsystem | Gemeinsame Struktur für Qualität+Umwelt+… (High Level Structure); KM8 |
| ISO 2859 | Annahmeprüfung, attributiv | AQL-basierte Stichprobenpläne; UE 10 (KM7, 4HWIT WS) |
| ISO 3951 | Annahmeprüfung, variabel | k-Methode auf Messwerten; UE 11 (KM7, 4HWIT WS) |
| ISO 9001 | Qualitätsmanagementsystem | Basisnorm QM; KM8 |
| ISO 14001 | Umweltmanagementsystem | KM8 |
| ISO 14051 | Materialflusskostenrechnung | Norm zu MFCA; KM8 |
| ISO 22514 | Prozessfähigkeit | Norm für Fähigkeitsberechnung/-berichte; KM8 |
| ISO 50001 | Energiemanagementsystem | KM9b |
| LCA | Life Cycle Assessment (Ökobilanz) | Lebenszyklus-Bilanz eines Produkts; UE 12 (KM7, 4HWIT WS) |
| MFCA | Material Flow Cost Accounting | Materialflusskostenrechnung; KM8 |
| ÖNORM | Österreichische Norm | Nationale Normung; ISO-Spezifika brauchen Eigenmaterial (kein freier Text) |
| Sankey(-Diagramm) | — | Flussdiagramm mit mengenproportionalen Pfeilen; `networkD3`; UE 12 (KM7, 4HWIT WS) |
| Stoffflussanalyse | Material Flow Analysis | Bilanzierung von Materialströmen; UE 12 (KM7, 4HWIT WS) |
| TQM | Total Quality Management | Managementphilosophie; KM3 |
| UVP-G | Umweltverträglichkeitsprüfungsgesetz | Österr. Umweltrecht; KM8 |
| WRG | Wasserrechtsgesetz 1959 | Österr. Wasserrecht; KM8 |

## 5. R & Data Science

| Begriff | Bedeutung | Kurzerklärung & Kontext |
|---|---|---|
| CDN | Content Delivery Network | reveal.js-Folien laden Bibliotheken via CDN — keine lokale Installation nötig |
| CRAN | Comprehensive R Archive Network | Offizielles Paket-Repository für R |
| d/p/q/r | density / probability / quantile / random | R-Funktionsfamilien für Verteilungen (`dnorm`, `pnorm`, `qnorm`, `rnorm`, …); UE 4 (KM7, 4HWIT WS) |
| data frame | — | Tabellarische Datenstruktur in R (Zeilen = Beobachtungen, Spalten = Variablen) |
| DSL | Domain-Specific Language | Interne Mini-Sprachen in R (Formel-Interface `y ~ x`, ggplot2, dplyr) — via NSE umgesetzt |
| ggplot2 | — | Visualisierungspaket nach Grammar of Graphics; UE 1 (KM7, 4HWIT WS) |
| Grammar of Graphics | — | Schichten-Logik hinter ggplot2: Daten + `aes` + `geom` + stats/scales/facets |
| ISLR | An Introduction to Statistical Learning (Buch) | Weiterführende Lektüre (statlearning.com), frei verfügbar |
| LSR | Learning Statistics with R (Navarro) | Freie Statistik-Lektüre; Anker für Verteilungen/Tests (Kap. 9–16) |
| ML | Machine Learning | Bewusst **out of scope** (siehe `selbststudium/MISSION.md`) |
| NSE | Non-Standard Evaluation | Auswertungstrick hinter dplyr & Co. (Ausdrücke werden im Daten-Kontext evaluiert) |
| Pipe | `%>%` bzw. `\|>` | Verkettet Operationen lesbar von links nach rechts; UE 2 (KM7, 4HWIT WS) |
| R4DS | R for Data Science (Wickham, Çetinkaya-Rundel, Grolemund; 2e) | Hauptlektüre der Toolchain; r4ds.hadley.nz; UE 1–3 (KM7, 4HWIT WS) |
| RStudio | — | IDE für R (Posit) |
| tibble | — | Moderner data frame im tidyverse |
| tidyverse | — | Paketsammlung (ggplot2, dplyr, readr, tidyr, …); UE 1–3 (KM7, 4HWIT WS) |
| Whole Game | — | R4DS-Didaktik: erst das ganze Spiel erleben (Visualisierung!), dann Details; unser UE-1–3-Prinzip (KM7, 4HWIT WS) |

## 6. Lizenzen

| Begriff | Bedeutung | Kurzerklärung & Kontext |
|---|---|---|
| CC0 | Creative Commons Zero | Public-Domain-ähnlich; palmerpenguins-Datensatz |
| CC BY-NC-ND | CC Namensnennung–NichtKommerziell–KeineBearbeitung | **R4DS-Lizenz!** Lesen/Verlinken ok, Übersetzen/Adaptieren verboten → „link, don't copy" |
| CC BY-NC-SA | CC …–Weitergabe unter gleichen Bedingungen | ModernDive |
| CC BY-SA | CC Namensnennung–ShareAlike | Navarro LSR (kommerziell erlaubt) |
| GPL | GNU General Public License | Lizenzfamilie der R-Pakete; lesen/verlinken/zitieren ok |
| link, don't copy | — | Grundregel (#6): Lektüre per URL/Kapitel zuweisen, nie Text übernehmen |
| US-Gov | US Government Work | Gemeinfrei in den USA; NIST e-Handbook — zitieren mit Quellenangabe |

## 7. Projekt-Konventionen

| Begriff | Bedeutung | Kurzerklärung & Kontext |
|---|---|---|
| Einstiegstest | — | Test zu Schuljahresbeginn (Repo GRG-PMM-T, 2026-09-07); prüft KM5/KM6-Vorwissen; reservierte DS R1 (KM7, 4HWIT WS) |
| GRG-PMM | — | Dieses Repository (Unterrichtsmaterial, öffentlich) |
| GRG-PMM-T | — | Test-Repository (privat) mit Prüfungsangaben |
| JG3-Track | — | Georgs Selbststudium-Pfad durch KM5/KM6; `selbststudium/reference/jg3-verlauf.html` |
| L0003 … | — | Lektions-Nummern im Selbststudium (`selbststudium/lessons/`) |
| Lern-Lektion | — | Interaktive HTML-Lektion für Georg (teach skill), Artefakt 1 von 3 pro UE |
| LR | Learning Record | Lernprotokoll nach jeder Selbststudium-Einheit — ⚠ Kollision, s.o. |
| Matrix-Key | — | Slug je Lehrplan-Thema in `lehrplan/pmm-hwit/ressourcen-matrix.md` (z.B. `KM7-tests`) |
| Meisterschaft | — | Lernziel-Status im teach skill (LR mit voller Punktzahl) |
| NN-slug | — | Ordner-Schema vor Datumsfixierung (z.B. `01-datenvisualisierung-ggplot/`) → wird `YYYY-MM-DD_slug/` |
| YYYY-MM-DD | ISO 8601 | Datumsformat für alle Unterrichtsordner und datierten Dokumente |

---

*Erstellt 2026-07-23 · Issue #6 · Pflege: neue Abkürzungen bei erster
Verwendung hier eintragen; UE-Verweise immer vollqualifiziert
(`UE n (KMx, Klasse WS/SS)`).*
