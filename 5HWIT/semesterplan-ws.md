# Semesterplan 5HWIT — Wintersemester

Prozessmanagement (PMM) — Maturafach WIT
KM 9a (RIS BGBl. II Nr. 262/2015, Anlage 1.28, Abschnitt 5)

**Zeitmodell:** 13 echte UE (1 DS/Woche) + 2 reservierte DS
(2× Leistungsfeststellung/Admin). Offiziell 18 Schulwochen — Ausfälle
durch Feiertage/Krankheit sind einkalkuliert.
**Werkzeug:** R / RStudio · **KM-Steckbrief:** `kompetenzmodule/km9a.md` ·
**Ressourcen-Anker:** `docs/lehrplan/ressourcen-matrix.md`

> **Vorwissen:** KM7 (Tests, ANOVA) und KM8 (SPC, Prozessfähigkeit) aus der
> 4. Klasse werden vorausgesetzt — DoE baut direkt auf ANOVA/`lm()` auf.
> **Hinweis:** Weibull-/Lebensdauer-Statistik gehört zu **KM9b**
> (Sommersemester) und wurde hier bewusst entfernt.

---

## UE 1–6: Faktorielle Versuchsplanung (DoE)

| UE | Thema | Lektüre-Anker | R |
|----|-------|---------------|---|
| 1 | **DOE-Einführung** — Faktoren, Stufen, Antwortvariable, Randomisierung; warum nicht OFAT | NIST Kap. 5 | `FrF2`, `rsm` (Überblick) |
| 2 | **Vollfaktoriell 2^k I** — 2²/2³, Haupteffekte, Effekttabelle | NIST Kap. 5 | `lm`, `interaction.plot` |
| 3 | **Vollfaktoriell II** — Wechselwirkungen, signifikante Effekte | NIST Kap. 5 | `DanielPlot`, `halfnormal` |
| 4 | **Vollfaktoriell Praxis** — Modellreduktion, Zentrumspunkte, Krümmung (Pure Error vs. Lack of Fit) | NIST Kap. 5 | `FrF2` (Zentrumspunkte) |
| 5 | **Teilfaktoriell** — Confounding, Design-Generatoren, Auflösung III/IV/V | NIST Kap. 5 | `FrF2`, `alias` |
| 6 | **Blöcke & Screening** — Blockfaktoren, Split-Plot-Idee, Plackett-Burman | NIST Kap. 5 | `pb` |

## UE 7: Workshop I

| UE | Thema | Lektüre-Anker | R |
|----|-------|---------------|---|
| 7 | **Geführtes Experiment** — kompletter Zyklus (planen → durchführen → auswerten) inkl. D-optimalem Design für unregelmäßige Versuchsräume | NIST Kap. 5 | `AlgDesign::optFederov` |

## UE 8–10: Response Surface Methodology

| UE | Thema | Lektüre-Anker | R |
|----|-------|---------------|---|
| 8 | **RSM I** — CCD & Box-Behnken, quadratische Modelle | NIST Kap. 4+5 | `rsm`, `ccd` |
| 9 | **RSM II** — Optimierung, Kontur-/3D-Plots, steepest ascent | NIST Kap. 4+5 | `rsm`, `steepest` |
| 10 | **Mehrzieloptimierung & Robust Design** — Desirability, Taguchi S/N | NIST Kap. 5 | Desirability-Workflow |

## UE 11–13: Workshop II, Facility Management & Abschluss

| UE | Thema | Lektüre-Anker | R |
|----|-------|---------------|---|
| 11 | **Workshop II** — eigenes RSM-Experiment: planen, durchführen, auswerten, berichten | — | alle |
| 12 | **Facility Management kompakt** — DIN EN 15221, Betriebsführung, Instandhaltungsstrategien (RCM), Arbeitssicherheit (ASchG) | **Eigenmaterial** | — |
| 13 | **Fallstudie & Semesterabschluss** — DoE-Optimierung eines Praxisprozesses | — | alle |

## Reservierte DS (keine Lehr-UE)

| DS | Inhalt |
|----|--------|
| R1 | **Leistungsfeststellung 1** (DoE-Schwerpunkt, nach UE 6–7) |
| R2 | **Leistungsfeststellung 2 / Semester-Admin** (nach UE 13) |

---

**Schwerpunkte:** 11 UE Statistik/R (DoE+RSM) · 1 UE Facility Mgmt · 1 UE Fallstudie
**Eigenmaterial-Bedarf (aus Matrix):** Facility Management (UE 12) komplett;
deutschsprachige DoE-Begleittexte (NIST ist Referenz, keine Lernlektüre).

(Umgeschrieben 2026-07-23: 13 echte UE + 2 Reserve; Weibull/RCM-
Statistik-Teile nach KM9b verschoben; D-optimal in Workshop I integriert;
Ressourcen-Anker aus `ressourcen-matrix.md`. Zuvor: 15 UE mit
vorweggenommener Weibull-UE.)
