# Semesterplan 5AHWIT — Wintersemester

Prozessmanagement (PMM) — Maturafach WIT  
KM 9a (RIS BGBl. II Nr. 262/2015, Anlage 1.28, Abschnitt 5)

**Zeitmodell:** 30 Doppelstunden (4 h/Woche)  
**Schwerpunkte:** Industrielle Versuchsmethodik / DOE (23 E.) · Facility Management (5 E.) · Projekt (2 E.)  
**Werkzeug:** R / RStudio

---

## Block A: DOE-Grundlagen (1–8)

| # | Thema | Halbzeit 1 (Vortrag) | Halbzeit 2 (R-Übung) | HÜ |
|---|-------|---------------------|---------------------|-----|
| 1 | **DOE-Einführung** | Faktoren, Stufen, Antwortvariable, Randomisierung, Replikation | Warum DOE? Historisches Beispiel (Fisher) | Fragestellung formulieren |
| 2 | **R-Pakete für DOE** | `DoE.base`, `FrF2`, `rsm`, `AlgDesign` | Pakete installieren, erste Pläne generieren | Paket-Cheatsheet |
| 3 | **Vollfaktorielle 2^k-Pläne I** | 2² und 2³, Haupteffekte, `lm()` | 2³-Plan in R: `lm()`, `summary()` | Effekte interpretieren |
| 4 | **Vollfaktorielle 2^k-Pläne II** | Wechselwirkungen, Interaction Plots | `interaction.plot()`, Effektdiagramme | Pareto-Chart der Effekte |
| 5 | **Effektschätzung & ANOVA** | `DanielPlot()`, `halfnormal()`, Effekttabelle | Effekte visualisieren und testen | Effekttabelle |
| 6 | **Vollfaktorielle 2^k: Praxis** | 2⁴-Plan auswerten, Modellreduktion | Nicht-signifikante Effekte entfernen | Modellvergleich |
| 7 | **Zentrumspunkte & Krümmung** | Pure Error, Lack of Fit, Krümmungstest | Zentrumspunkt-Design in R | Krümmungstest |
| 8 | **Übung Vollfaktoriell** | Komplettes 2⁴-Experiment durchführen | Eigenes Experiment in R | Vollständige Auswertung |

## Block B: Teilfaktorielle & Erweiterte Pläne (9–16)

| # | Thema | Halbzeit 1 (Vortrag) | Halbzeit 2 (R-Übung) | HÜ |
|---|-------|---------------------|---------------------|-----|
| 9 | **Teilfaktorielle Pläne: Confounding** | 2^(k-p), Auflösung, Design Generators | `FrF2()` für 2^(4-1) | Alias-Struktur |
| 10 | **Resolution III/IV/V** | Auflösungsbegriff, `alias()`, Klassifizierung | `FrF2(resolution=4)` | Auflösungsvergleich |
| 11 | **Blockbildung** | Blockfaktoren, Confounding mit Blöcken | `conf.set()` in `FrF2` | Block-Design |
| 12 | **Split-Plot-Designs** | Hard-to-change Factors, REML | Split-Plot in R mit `lme4::lmer()` | Split-Plot-Auswertung |
| 13 | **Plackett-Burman** | Screening-Designs für viele Faktoren | `pb()` — 12er-PB-Design | Screening-Bericht |
| 14 | **D-optimale Designs** | Unregelmäßige Versuchsräume, Optimalitätskriterien | `AlgDesign::optFederov()` | D-optimales Design |
| 15 | **Übung Teilfaktoriell** | Screening-Experiment komplett | 2^(7-3)-Plan auswerten | Bericht |
| 16 | **DOE-Workshop I** | Problemstellung → Plan → R → Auswertung | Geleitetes Experiment | — |

## Block C: Response Surface & Optimierung (17–23)

| # | Thema | Halbzeit 1 (Vortrag) | Halbzeit 2 (R-Übung) | HÜ |
|---|-------|---------------------|---------------------|-----|
| 17 | **Response Surface I: CCD** | Central Composite Design, `ccd()`, `rsm()` | CCD planen und auswerten | RSM-Modell |
| 18 | **Response Surface II: BBD** | Box-Behnken-Design, CCD vs. BBD | BBD in R, Vergleich der Designs | Design-Vergleich |
| 19 | **RSM-Modellierung** | Quadratisches Modell, Kontur-/3D-Plots | `contour()`, `persp()` auf RSM | 3D-Oberfläche |
| 20 | **Optimierung: Einzelziel** | Steepest Ascent, Maximum finden | `steepest()` in `rsm` | Optimum validieren |
| 21 | **Mehrzieloptimierung** | Desirability-Funktion, Trade-offs | `desirability()` mit `rsm` | Pareto-Front |
| 22 | **Robust Design (Taguchi)** | Noise Factors, S/N-Ratio, Inner/Outer Array | Taguchi-Design in `qualityTools` | S/N-Analyse |
| 23 | **DOE-Workshop II** | Eigenes RSM-Experiment | Planen, durchführen, auswerten | Abschlussbericht |

## Block D: Facility Management (24–28)

| # | Thema | Halbzeit 1 (Vortrag) | Halbzeit 2 (R-Übung) | HÜ |
|---|-------|---------------------|---------------------|-----|
| 24 | **FM-Grundlagen** | DIN EN 15221, FM-Modell, Prozesse, Kennzahlen | Gebäudedaten analysieren | FM-Bestandsaufnahme |
| 25 | **Technische Betriebsführung I** | Gebäudetechnik (TGA), Betriebsführung | Betriebskosten in R auswerten | Kostenanalyse |
| 26 | **Technische Betriebsführung II** | Instandhaltungsstrategien, Wartungspläne | Wartungsplan in R visualisieren (`ganttrify`) | Instandhaltungsplan |
| 27 | **RCM & Zuverlässigkeit** | Weibull-Modell, Ausfallanalyse, `survival` | `survreg()`, `flexsurvreg()` | Ausfallanalyse |
| 28 | **Arbeitssicherheit** | ASchG, Evaluierung, Kennzahlen | Unfallstatistik in R auswerten | Sicherheitskennzahlen |

## Block E: Integration & Abschluss (29–30)

| # | Thema |
|---|-------|
| 29 | **Fallstudie**: DOE-Optimierung eines FM-Prozesses (z.B. Energieverbrauch) |
| 30 | **Semesterabschluss & Leistungsfeststellung** |

---

**23 Statistik/R · 5 Facility · 2 Projekt**
