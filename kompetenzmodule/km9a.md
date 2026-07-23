# KM9a — Industrielle Versuchsmethoden (DoE/RSM)

**Klasse/Semester:** 5HWIT, 9. Semester (Wintersemester)
**Wochenstunden (Lehrplan):** 4(2) · **Zeitmodell:** 1 DS/Woche → 13 echte UE + 2 reservierte DS (2× LF/Admin)
**Bereiche:** Statistische Methoden + Facility Management
**Konkreter Semesterplan:** `5HWIT/semesterplan-ws.md`

## Worum geht es?

Bisher (KM7/KM8) wurden Daten analysiert, die „einfach da" waren.
Jetzt lernen die Schüler:innen, Daten **gezielt zu erzeugen**: Design of
Experiments (DoE) ist die systematische Planung von Versuchen, um mit
minimalem Aufwand maximale Information über Faktoren und ihre
Wechselwirkungen zu gewinnen.

Der Bogen: **Vollfaktorielle 2^k-Pläne** (alle Kombinationen, wenige
Faktoren) → **teilfaktorielle Pläne** (Screening vieler Faktoren,
Confounding als Preis) → **Response Surface Methodology** (quadratische
Modelle, Optimum suchen). Zwei Workshops verankern den kompletten
Zyklus Planen → Durchführen → Auswerten → Berichten. Abgerundet mit
einem kompakten Block **Facility Management** (Lehrplan-Bereich 2).

## Wofür braucht man das in der Praxis?

- **Prozessoptimierung:** Welche Faktoren (Temperatur, Druck, Zeit…)
  beeinflussen die Qualität — und in welcher Kombination liegt das
  Optimum? DoE beantwortet das mit Dutzenden statt Tausenden Versuchen.
- **Entwicklung/Screening:** Bei 7+ potenziellen Faktoren trennen
  teilfaktorielle Pläne die Spreu vom Weizen.
- **Robustes Design (Taguchi):** Prozesse so einstellen, dass sie gegen
  Störgrößen unempfindlich sind.
- **Instandhaltung:** RCM-Logik — vom reaktiven Reparieren zur
  strategischen Instandhaltung.

## Inhalte

### Wissen (Fakten & Begriffe)
- Faktor, Stufe, Antwortvariable, Replikation, Randomisierung, Blockbildung
- Haupteffekt, Wechselwirkung, Confounding (Aliasing), Auflösung III/IV/V
- 2^k-Designs, 2^(k-p)-Designs, Design-Generatoren, Zentrumspunkte,
  Pure Error vs. Lack of Fit
- Plackett-Burman, D-optimale Designs
- CCD (Central Composite), Box-Behnken, quadratisches Modell, steepest ascent
- Desirability-Funktion, Pareto-Front; Taguchi S/N-Ratio, Inner/Outer Array
- Facility Management: DIN EN 15221, FM-Modell, technische Betriebsführung,
  Instandhaltungsstrategien (inkl. RCM-Grundidee), Arbeitssicherheit (ASchG)

### Verstehen (Zusammenhänge)
- Warum OFAT („one factor at a time") systematisch versagt (Wechselwirkungen!)
- Warum Randomisierung gegen unbekannte Störgrößen schützt
- Was Auflösung über die Interpretierbarkeit eines Screening-Designs verrät
- Wie man von „signifikantem Effekt" zu „optimaler Einstellung" kommt
  (erst faktorielle Struktur, dann Krümmung mit Zentrumspunkten, dann RSM)
- Weshalb Versuchsplanung *vor* der Datenerhebung der Hebel ist, nicht danach

### Können (mit R umsetzen)
- Vollfaktorielle Pläne aufsetzen und auswerten: `lm`, Effekttabellen,
  `interaction.plot`, `DanielPlot`, `halfnormal`
- Teilfaktorielle Pläne generieren und Aliasing prüfen: `FrF2`, `alias`
- Screening mit `pb` (Plackett-Burman); D-optimal mit
  `AlgDesign::optFederov`
- RSM-Modelle schätzen und visualisieren: `rsm`, `ccd`, Kontur-/3D-Plots,
  `steepest`
- Ein reales Experiment end-to-end durchführen (Workshops: planen,
  durchführen, auswerten, berichten)
- Betriebskosten/Bilanzkennzahlen in R auswerten

## Ressourcen

Matrix-Keys (Details: `docs/lehrplan/ressourcen-matrix.md`):
`KM9a-doe` · `KM9a-rsm` · `KM9a-betriebsfuehrung`

| Strang | Lektüre | R-Umsetzung |
|---|---|---|
| DoE (voll-/teilfaktoriell) | NIST Kap. 5 + Navarro 16 (ANOVA-Brücke) | `FrF2`, `AlgDesign` |
| RSM | NIST Kap. 4+5 | `rsm` |
| Facility Management | **Eigenmaterial** | — |

**Eigenbedarf (Prio):** Facility Management komplett · deutschsprachige
DoE-Begleittexte im R4DS-Stil (NIST ist Referenz, keine Lernlektüre).
