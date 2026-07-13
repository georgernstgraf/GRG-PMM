# Semesterplan 5AHWIT — Wintersemester

Prozessmanagement (PMM) — Maturafach WIT  
KM 9a (RIS BGBl. II Nr. 262/2015, Anlage 1.28, Abschnitt 5)

**Zeitmodell:** 15 Doppelstunden (1 DS/Woche)  
**Schwerpunkte:** Industrielle Versuchsmethodik / DOE (8 UE) · Response Surface & Optimierung (4 UE) · Facility Management (2 UE) · Abschluss (1 UE)  
**Werkzeug:** R / RStudio

---

## UE 1–4: Vollfaktorielle Versuchsplanung

| UE | Thema | Bemerkung |
|----|-------|-----------|
| 1 | **DOE-Einführung & R-Pakete** | Faktoren, Stufen, Antwortvariable, Randomisierung; `DoE.base`, `FrF2`, `rsm` |
| 2 | **Vollfaktorielle 2^k I: 2² & 2³** | Haupteffekte, `lm()`, Effekttabelle; `interaction.plot()` |
| 3 | **Vollfaktorielle 2^k II: Wechselwirkungen & Effektschätzung** | `DanielPlot()`, `halfnormal()`, Pareto-Chart; Wechselwirkungen interpretieren |
| 4 | **Vollfaktoriell Praxis & Krümmung** | Modellreduktion, Zentrumspunkte, Pure Error vs. Lack of Fit; komplettes 2⁴-Experiment |

## UE 5–8: Teilfaktorielle & fortgeschrittene Pläne

| UE | Thema |
|----|-------|
| 5 | **Teilfaktorielle Pläne: Confounding & Auflösung** | 2^(k-p), Design Generators, `FrF2()`, Resolution III/IV/V, `alias()` |
| 6 | **Blockbildung, Split-Plot, Plackett-Burman** | Blockfaktoren (`conf.set()`), Hard-to-change-factors (`lme4::lmer()`), Screening (`pb()`) |
| 7 | **D-optimale Designs & DOE-Workshop I** | Unregelmäßige Versuchsräume, `AlgDesign::optFederov()`; geführtes Experiment |
| 8 | **Response Surface I: CCD & BBD** | Central Composite Design (`ccd()`), Box-Behnken, Einführung in `rsm()` |

## UE 9–12: RSM & Optimierung

| UE | Thema |
|----|-------|
| 9 | **Response Surface II: Modellierung & Optimierung** | Quadratische Modelle, Kontur-/3D-Plots; `steepest()`, Maximum finden |
| 10 | **Mehrzieloptimierung & Robust Design** | Desirability-Funktion, Pareto-Front; Taguchi S/N-Ratio, Inner/Outer Array |
| 11 | **DOE-Workshop II** | Eigenes RSM-Experiment: planen, durchführen, auswerten — Abschlussbericht |
| 12 | **Facility Management: Grundlagen & Betriebsführung** | DIN EN 15221, FM-Modell, TGA, Betriebskosten in R; Instandhaltungsstrategien |

## UE 13–15: Zuverlässigkeit, Sicherheit & Abschluss

| UE | Thema |
|----|-------|
| 13 | **RCM & Arbeitssicherheit** | Weibull-Modell, Ausfallanalyse (`survival`/`flexsurvreg`); ASchG, Evaluierung, Sicherheitskennzahlen |
| 14 | **Fallstudie**: DOE-Optimierung eines FM-Prozesses (z. B. Energieverbrauch minimieren) |
| 15 | **Semesterabschluss & Leistungsfeststellung** |

---

**Schwerpunkte:** 12 UE Statistik/R · 2 UE Facility · 1 UE Abschluss

(Überarbeitet 2026-07 — korrigiert auf 15 Doppelstunden, 1 DS/Woche, zuvor fälschlich „30 Doppelstunden (4 h/Woche)" angenommen.)
