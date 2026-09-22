# Semesterplan 5HWIT — Wintersemester

Prozessmanagement (PMM) — Maturafach WIT
KM 9a (RIS BGBl. II Nr. 262/2015, Anlage 1.28, Abschnitt 5)

**Zeitmodell:** 13 echte UE (1 DS/Woche) + 2 reservierte DS
(2× Leistungsfeststellung/Admin). Offiziell 18 Schulwochen — Ausfälle
durch Feiertage/Krankheit sind einkalkuliert.
**Werkzeug:** R / RStudio · **KM-Steckbrief:** `kompetenzmodule/km9a.md` ·
**Ressourcen-Anker:** `lehrplan/pmm-hwit/ressourcen-matrix.md`
**Arbeitsteilung:** Strang-Trennung — Georg = Statistik-Strang mit R,
Kollege = Management-Strang (FM, Praxisrahmen, Berichte); Details siehe
Abschnitt „Arbeitsteilung" am Ende.

> **Vorwissen:** KM7 (Tests, ANOVA) und KM8 (SPC, Prozessfähigkeit) aus der
> 4. Klasse werden vorausgesetzt — DoE baut direkt auf ANOVA/`lm()` auf.
> **Hinweis:** Weibull-/Lebensdauer-Statistik gehört zu **KM9b**
> (Sommersemester) und wurde hier bewusst entfernt.

---

## UE 1–6: Faktorielle Versuchsplanung (DoE)

| UE | Thema | Lektüre-Anker | R | Wer |
|----|-------|---------------|---|-----|
| 1 | **DOE-Einführung** — Faktoren, Stufen, Antwortvariable, Randomisierung; warum nicht OFAT | NIST Kap. 5 | `FrF2`, `rsm` (Überblick) | Beide (Kollege: Motivation/Praxisbeispiele, Georg: Formalismus) |
| 2 | **Vollfaktoriell 2^k I** — 2²/2³, Haupteffekte, Effekttabelle | NIST Kap. 5 | `lm`, `interaction.plot` | Georg |
| 3 | **Vollfaktoriell II** — Wechselwirkungen, signifikante Effekte | NIST Kap. 5 | `DanielPlot`, `halfnormal` | Georg |
| 4 | **Vollfaktoriell Praxis** — Modellreduktion, Zentrumspunkte, Krümmung (Pure Error vs. Lack of Fit) | NIST Kap. 5 | `FrF2` (Zentrumspunkte) | Georg |
| 5 | **Teilfaktoriell** — Confounding, Design-Generatoren, Auflösung III/IV/V | NIST Kap. 5 | `FrF2`, `alias` | Georg |
| 6 | **Blöcke & Screening** — Blockfaktoren, Split-Plot-Idee, Plackett-Burman | NIST Kap. 5 | `pb` | Georg |

## UE 7: Workshop I

| UE | Thema | Lektüre-Anker | R | Wer |
|----|-------|---------------|---|-----|
| 7 | **Geführtes Experiment** — kompletter Zyklus (planen → durchführen → auswerten) inkl. D-optimalem Design für unregelmäßige Versuchsräume | NIST Kap. 5 | `AlgDesign::optFederov` | Beide (Kollege: Organisation/Durchführung, Georg: Auswertung) |

## UE 8–10: Response Surface Methodology

| UE | Thema | Lektüre-Anker | R | Wer |
|----|-------|---------------|---|-----|
| 8 | **RSM I** — CCD & Box-Behnken, quadratische Modelle | NIST Kap. 4+5 | `rsm`, `ccd` | Georg |
| 9 | **RSM II** — Optimierung, Kontur-/3D-Plots, steepest ascent | NIST Kap. 4+5 | `rsm`, `steepest` | Georg |
| 10 | **Mehrzieloptimierung & Robust Design** — Desirability, Taguchi S/N | NIST Kap. 5 | Desirability-Workflow | Georg |

## UE 11–13: Workshop II, Facility Management & Abschluss

| UE | Thema | Lektüre-Anker | R | Wer |
|----|-------|---------------|---|-----|
| 11 | **Workshop II** — eigenes RSM-Experiment: planen, durchführen, auswerten, berichten | — | alle | Beide (Georg: fachlich/R, Kollege: Bericht/Präsentation) |
| 12 | **Facility Management kompakt** — DIN EN 15221, Betriebsführung, Instandhaltungsstrategien (RCM), Arbeitssicherheit (ASchG) | **Eigenmaterial** | — | Kollege |
| 13 | **Fallstudie & Semesterabschluss** — DoE-Optimierung eines Praxisprozesses | — | alle | Beide (Kollege: Praxisrahmen, Georg: Auswertung) |

## Reservierte DS (keine Lehr-UE)

| DS | Inhalt | Wer |
|----|--------|-----|
| R1 | **Leistungsfeststellung 1** (DoE-Schwerpunkt, nach UE 6–7) | Beide (Aufgaben/Korrektur je Strang) |
| R2 | **Leistungsfeststellung 2 / Semester-Admin** (nach UE 13) | Beide |

---

**Schwerpunkte:** 11 UE Statistik/R (DoE+RSM) · 1 UE Facility Mgmt · 1 UE Fallstudie
**Eigenmaterial-Bedarf (aus Matrix):** Facility Management (UE 12, Kollege) komplett;
deutschsprachige DoE-Begleittexte (NIST ist Referenz, keine Lernlektüre).

---

## Arbeitsteilung Georg ↔ Kollege (Strang-Trennung)

**Georg (Statistik-Strang):** UE 2–6, UE 8–10 fachlich und mit R;
in den geteilten UE (1, 7, 11, 13) jeweils der Statistik-/R-Anteil;
R-Anteil von R1/R2. R-Code wird ausschließlich von Georg erklärt und
beurteilt — der Kollege bewertet in UE 11 nur Berichts-/Präsentationsqualität.

**Kollege (Management-Strang):** UE 12 (FM komplett, Eigenmaterial);
in den geteilten UE jeweils Praxisrahmen, Organisation und Durchführung;
dazu HÜ-Korrektur der FM-Anteile und R1-Organisation. UE 1 ist sein
niedrigschwelliger Einstieg (OFAT-Motivation, Praxisbeispiele ohne Statistik).

**WS-Bilanz:** ca. 10 UE Georg vs. 2–3 UE Kollege — unausweichlich, weil
KM9a fast nur Statistik enthält. Ausgleich im Sommersemester (Kollege:
4 UE Energiemanagement + Projektbetreuung, siehe `jg5-semesterplan-ss.md`).
Option: FM-Block (UE 12) mit Instandhaltungsplan-Projekt auf 2 UE ausbauen.

**Schnittstellen:**
- **Matura:** PMM ist Maturafach — gemeinsamer Fragenpool (je 50 % pro
  Strang), abgestimmt vor R2.
- **R-Voraussetzung:** DoE baut auf ANOVA/`lm()` aus KM7 auf (Georgs
  Bereich) — kein Übergabeproblem.
- **FM-Eigenmaterial:** UE 12 hat keinen Lektüre-Anker (Matrix: voller
  Eigenbedarf) — Kollege braucht Vorlaufzeit im WS.

(Umgeschrieben 2026-07-23: 13 echte UE + 2 Reserve; Weibull/RCM-
Statistik-Teile nach KM9b verschoben; D-optimal in Workshop I integriert;
Ressourcen-Anker aus `ressourcen-matrix.md`. Zuvor: 15 UE mit
vorweggenommener Weibull-UE.)
