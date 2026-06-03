# Semesterplan 4AHWIT — Sommersemester

Prozessmanagement (PMM) — Maturafach WIT  
KM 8 (RIS BGBl. II Nr. 262/2015, Anlage 1.28, Abschnitt 5)

**Zeitmodell:** 30 Doppelstunden (4 h/Woche)  
**Schwerpunkte:** SPC / Prozessfähigkeit (20 E.) · Umweltrecht & Methoden (8 E.) · Fallstudie (2 E.)  
**Werkzeug:** R / RStudio

---

## Block A: Grundlagen SPC (1–6)

| # | Thema | Halbzeit 1 (Vortrag) | Halbzeit 2 (R-Übung) | HÜ |
|---|-------|---------------------|---------------------|-----|
| 1 | **SPC-Prinzipien & Shewhart** | Common Cause vs. Special Cause, `qcc()`-Paket | Erste x̄-R-Karte plotten | Regelkartentypen recherchieren |
| 2 | **x̄-R-Karte** | Berechnung, Kontrollgrenzen, Interpretation | `qcc()` auf Produktionsdaten, Grenzen anpassen | OC-Kurve für x̄-Karte |
| 3 | **x̄-s-Karte** | Unterschied zu x̄-R, Anwendung bei n > 10 | x̄-s im Vergleich zu x̄-R | Vergleich dokumentieren |
| 4 | **Einzelwert- & MR-Karte** | I-MR-Karte, gleitende Spannweite | Anwendung bei Einzelmessungen | I-MR aus realen Daten |
| 5 | **Attributive Karten I** | p-Karte, np-Karte — Fehleranteile | `qcc(type="p")`, `qcc(type="np")` | Fehleranteil überwachen |
| 6 | **Attributive Karten II** | c-Karte, u-Karte — Fehler pro Einheit | `qcc(type="c")`, `qcc(type="u")` | Attribut-Karten vergleichen |

## Block B: SPC Vertiefung (7–13)

| # | Thema | Halbzeit 1 (Vortrag) | Halbzeit 2 (R-Übung) | HÜ |
|---|-------|---------------------|---------------------|-----|
| 7 | **OC & ARL für Regelkarten** | Average Run Length, ATS | ARL für verschiedene Shift-Größen | ARL-Tabelle |
| 8 | **CUSUM & EWMA** | Empfindliche Karten für kleine Shifts | `qcc(type="cusum")`, `qcc(type="ewma")` | CUSUM vs. Shewhart |
| 9 | **Western-Electric & Nelson-Regeln** | Mustererkennung, Runs-Test | `runs.test()`, Zonen-Regeln in R | Musteranalyse-Protokoll |
| 10 | **Multivariate SPC** | Hotelling-T², Grundprinzip | `mqcc`-Paket: T²-Karte | PCA-Vorbereitung |
| 11 | **Short-Run-SPC** | Kurze Serien, standardisierte Karten | `qcc()` mit standardisierten Daten | Kurzserien-Szenario |
| 12 | **SPC für nicht-normalverteilte Daten** | Box-Cox-Transformation, nichtparametrische Karten | Transformation mit `MASS::boxcox()` | Vorher-nachher-Vergleich |
| 13 | **Automatisierte SPC-Dashboards** | RMarkdown, `flexdashboard` | Live-Dashboard für Regelkarten | Dashboard deployen |

## Block C: Prozessfähigkeit (14–20)

| # | Thema | Halbzeit 1 (Vortrag) | Halbzeit 2 (R-Übung) | HÜ |
|---|-------|---------------------|---------------------|-----|
| 14 | **Cp & Cpk** | Toleranz vs. Streuung, `SixSigma`-Paket | Cp und Cpk aus Produktionsdaten | Cpk-Bericht |
| 15 | **Pp & Ppk** | Gesamtstreuung vs. kurzfristige Streuung | Pp/Ppk berechnen, vs. Cp/Cpk | Unterschied erklären |
| 16 | **Maschinenfähigkeit Cm/Cmk** | Abgrenzung zur Prozessfähigkeit | Maschinenfähigkeitsanalyse | Cmk-Protokoll |
| 17 | **Nicht-normalverteilte Fähigkeit** | Quantil-Methode, Johnson-Transformation | Fähigkeit mit `fitdistrplus` | Verteilungsauswahl |
| 18 | **Cpm (Taguchi-Loss)** | Verlustfunktion, Zielwert-basierte Fähigkeit | Cpm berechnen und interpretieren | Taguchi vs. klassisch |
| 19 | **Messsystemanalyse (MSA)** | Gage R&R, Wiederholbarkeit, Reproduzierbarkeit | `SixSigma::ss.rr()` | MSA-Protokoll |
| 20 | **Fähigkeitsbericht nach Norm** | ISO 22514, vollständiger Bericht | Kompletter Fähigkeitsbericht in RMarkdown | Fähigkeitsbericht abgeben |

## Block D: Umweltmanagement (21–26)

| # | Thema | Halbzeit 1 (Vortrag) | Halbzeit 2 (R-Übung) | HÜ |
|---|-------|---------------------|---------------------|-----|
| 21 | **Umweltrecht I** | UVP-G, AWG 2002, Systematik | Rechtstext-Analyse: Anwendungsfall | Geltungsbereich skizzieren |
| 22 | **Umweltrecht II** | WRG 1959, Emissionsgrenzwerte, Compliance | Grenzwertüberwachung in R plotten | Compliance-Report |
| 23 | **ISO 14001: Kontext & Planung** | Umweltaspekte, bindende Verpflichtungen, Risiken | Aspektbewertung mit Signifikanzmatrix | Bewertungsmatrix |
| 24 | **ISO 14001: Umsetzung & Betrieb** | Umweltprogramm, Kennzahlen, Dokumentation | Kennzahlen-Dashboard in R | Umweltprogramm |
| 25 | **ISO 14001: Audit & Verbesserung** | Internes Audit, Management Review, Korrekturmaßnahmen | Audit-Checkliste in RMarkdown | Audit-Fragenkatalog |
| 26 | **Umweltkennzahlen & Reporting** | EnPI, EMAS, Nachhaltigkeitsbericht | Dashboard mit `flexdashboard` | Kennzahlenbericht |

## Block E: Integrierte Managementsysteme & Abschluss (27–30)

| # | Thema | Halbzeit 1 (Vortrag) | Halbzeit 2 (R-Übung) | HÜ |
|---|-------|---------------------|---------------------|-----|
| 27 | **IMS: ISO 9001 + 14001** | High Level Structure, Integration, PDCA | Gap-Analyse zwischen Systemen | Gap-Identifikation |
| 28 | **Materialflusskostenrechnung** | MFCA nach ISO 14051, Methode | MFCA in R rechnen | MFCA-Beispiel |
| 29 | **Fallstudie**: SPC + Prozessfähigkeit + ISO 14001-Audit (durchgängig) |
| 30 | **Semesterabschluss & Leistungsfeststellung** |

---

**20 Statistik/R · 8 Umwelt · 2 Projekt**
