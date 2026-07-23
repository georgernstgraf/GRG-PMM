# PMM-Lehrplan ↔ freie Ressourcen — Matrix

**Zweck:** Themen-zentrierte Zuordnung jedes Lehrplan-Lehrstoffs (JG1–JG5,
KM3–KM9b) zu verfügbaren freien Ressourcen. Leere Zellen (`—`) zeigen,
wo Eigenmaterial erstellt werden muss.

Erstellt: 2026-07-23 · Issue: [#6](https://github.com/georgernstgraf/GRG-PMM/issues/6) · basiert auf
`docs/lehrplan/pmm-lehrplan-text.md` (Lehrplan-Extrakt) und
`docs/lehrplan/r4ds-abdeckung.md` (Lizenzprüfungen, Begründung der
Ressourcen-Wahl).

## Legende

- `—` = keine Abdeckung durch diese Ressource (Eigenmaterial nötig)
- `Kap. X` = Kapitelangabe; `(teilw.)` = teilweise Abdeckung
- R-Umsetzung: R-Pakete/Funktionen, die das Thema implementieren

## Ressourcen im Überblick

| Ressource | Lizenz | Nutzung |
|---|---|---|
| **R4DS 2e** (r4ds.hadley.nz) | CC BY-NC-ND 3.0 US | Lesen/Verlinken; kein Kopieren/Übersetzen |
| **Navarro LSR** (learningstatisticswithr.com) | CC BY-SA 4.0 | Adaptieren mit Namensnennung |
| **ModernDive** (moderndive.com/v2) | CC BY-NC-SA 4.0 | Adaptieren mit Namensnennung, nicht-kommerziell |
| **NIST e-Handbook** (itl.nist.gov/div898/handbook) | US-Gov (gemeinfrei) | Frei nutzbar, Quellenangabe empfohlen |
| **R-Paket-Vignetten** (CRAN) | GPL-Familie | Lesen/Verlinken |

---

## Matrix

### JG1 (1. Klasse, Sem. 1–2, kein KM) — kein R-Bezug · nicht von Georg unterrichtet

| Key | R4DS 2e | Navarro LSR | ModernDive | NIST e-Handbook | R-Umsetzung |
|---|---|---|---|---|---|
| `JG1-prozessgrundlagen` · Prozessgrundlagen, Qualitätsbegriffe, Prozessdarstellung, KVP | — | — | — | — | — |

### KM3 (2. Klasse, 3. Sem., WS) — kein R-Bezug · nicht von Georg unterrichtet

| Key | R4DS 2e | Navarro LSR | ModernDive | NIST e-Handbook | R-Umsetzung |
|---|---|---|---|---|---|
| `KM3-prozessmanagement` · Prozessbeschreibung, Prozesslandkarte, Prozessketten | — | — | — | — | — |
| `KM3-managementsysteme` · Regelwerke, Lean, TQM, Normenwesen | — | — | — | — | — |

### KM4 (2. Klasse, 4. Sem., SS) — kein R-Bezug · nicht von Georg unterrichtet

| Key | R4DS 2e | Navarro LSR | ModernDive | NIST e-Handbook | R-Umsetzung |
|---|---|---|---|---|---|
| `KM4-kennzahlen` · Leistungsfähigkeit von Prozessen, Kennzahlensysteme | — | — | — | — | — |
| `KM4-risiko` · Risikoevaluierung, Maßnahmenpläne, Abweichungsmanagement | — | — | — | — | — |

### KM5 (3. Klasse, 5. Sem., WS) — Statistische Methoden · nicht von Georg unterrichtet (Vorwissen für KM7!)

| Key | R4DS 2e | Navarro LSR | ModernDive | NIST e-Handbook | R-Umsetzung |
|---|---|---|---|---|---|
| `KM5-verteilungen` · Statistische Grundlagen der QS; Verteilungen (diskret/stetig), Normalverteilung | — | Kap. 9–10 | Kap. 7 (teilw.) | Kap. 1 (EDA) | `d/p/q/r`-Familie; `dbinom`, `pnorm`, `rpois`, … |
| `KM5-schaetzer` · Parameter statistischer Verteilungen und ihre Schätzwerte | — | Kap. 10 | Kap. 7 (Sampling, CLT) | — | `mean`, `sd`; `infer` (Resampling) |

### KM6 (3. Klasse, 6. Sem., SS) — Statistische Methoden · nicht von Georg unterrichtet (Vorwissen für KM7!)

| Key | R4DS 2e | Navarro LSR | ModernDive | NIST e-Handbook | R-Umsetzung |
|---|---|---|---|---|---|
| `KM6-konfidenz` · Zufallsstreu- und Vertrauensbereiche | — | Kap. 10 | Kap. 8 (Bootstrap & CI) | — | `infer` |
| `KM6-darstellung` · Auswertung und Darstellung von Prüfergebnissen | **Kap. 11, 28–29** | — | Kap. 2–5 (teilw.) | Kap. 1 (EDA) | `ggplot2`; Quarto |
| `KM6-lebensdauer` · Lebensdauerverteilungen | — | — | — | Kap. 8 (Assessing Product Reliability) | `fitdistrplus` (Weibull-Fit); `survival` |

### KM7 (4HWIT, 7. Sem., WS) — Statistische Methoden + Umweltmanagement · **von Georg unterrichtet**

| Key | R4DS 2e | Navarro LSR | ModernDive | NIST e-Handbook | R-Umsetzung |
|---|---|---|---|---|---|
| `KM7-tests` · Statistische Tests (t, χ², ANOVA) | — | Kap. 11–14, 16 | Kap. 9 + Anh. B (t-Tests mit `infer`) | Kap. 7 (Product and Process Comparisons) | `t.test`, `chisq.test`, `aov`; `infer` |
| `KM7-annahme` · Annahmestichprobenprüfung (ISO 2859/3951) | — | — | — | Kap. 6.2 (Acceptance Sampling) | `AcceptanceSampling` |
| `KM7-umweltpruefung` · Grundlagen betriebliche Umweltprüfung | — | — | — | — | — |
| `KM7-stofffluss-oekobilanz` · Stoffflussanalyse und Ökobilanzen | — | — | — | — | `networkD3` (Sankey) |
| `KM7-umwelt-anforderungen` · Anforderungen an Umwelt-, Ressourcen- und Abfallmanagement | — | — | — | — | — |

### KM8 (4HWIT, 8. Sem., SS) — Statistische Methoden + Umweltmanagement · **von Georg unterrichtet**

| Key | R4DS 2e | Navarro LSR | ModernDive | NIST e-Handbook | R-Umsetzung |
|---|---|---|---|---|---|
| `KM8-spc` · Statistische Prozesslenkung (Regelkarten) | — | — | — | Kap. 6.1 + 6.3 (Control Charts) | `qcc` |
| `KM8-faehigkeit` · Prozessfähigkeit (Cp, Cpk); Messmittelfähigkeit (Gage R&R) | — | — | — | Kap. 3 + 6.1 (Process Characterization); Kap. 2 (MSA) | `qcc` (Capability-Analyse) |
| `KM8-umweltrecht` · Umweltrecht | — | — | — | — | — |
| `KM8-umweltmethoden` · Werkzeuge und Methoden des Umweltmanagements | — | — | — | — | — |

### KM9a (5HWIT, 9. Sem., WS) — Statistische Methoden + Facility Management · **von Georg unterrichtet**

| Key | R4DS 2e | Navarro LSR | ModernDive | NIST e-Handbook | R-Umsetzung |
|---|---|---|---|---|---|
| `KM9a-doe` · Planung industrieller Versuchsmethoden (voll-/teilfaktoriell) | — | Kap. 16 (ANOVA-Konzeptbrücke) | — | Kap. 5 (Process Improvement: DOE) | `FrF2` |
| `KM9a-rsm` · Response Surface Methodology | — | — | — | Kap. 4 + 5 (Process Modeling, RSM) | `rsm` |
| `KM9a-betriebsfuehrung` · Technische Betriebsführung, Instandhaltungsstrategien, Arbeitssicherheit | — | — | — | — | — |

### KM9b (5HWIT, 10. Sem., SS) — Statistische Methoden + Energiemanagement · **von Georg unterrichtet**

| Key | R4DS 2e | Navarro LSR | ModernDive | NIST e-Handbook | R-Umsetzung |
|---|---|---|---|---|---|
| `KM9b-zuverlaessigkeit` · Zuverlässigkeit von Systemen (Weibull, R(t), Ausfallrate) | — | — | — | Kap. 8 (Assessing Product Reliability) | `fitdistrplus` (Weibull); `survival` |
| `KM9b-energiemanagement` · Energiemanagement, Energiebilanzen | — | — | — | — | `networkD3` (Sankey) optional |

---

## Eigenbedarf-Übersicht

### Von Georg unterrichtet (KM7–KM9b) — Material-Backlog

**Vollständiger Eigenbedarf** (alle Ressourcen `—` — Folien, Übungen,
Lesetexte komplett selbst erstellen):

| Key | Bereich |
|---|---|
| `KM7-annahme` (ISO 2859/3951-Spezifika) | Norm-Tabellen, OC-Kurven, AQL/LTPD |
| `KM7-umweltpruefung` | Umweltprüfung Grundlagen |
| `KM7-umwelt-anforderungen` | Umwelt-/Ressourcen-/Abfallmanagement |
| `KM8-umweltrecht` | Umweltrecht |
| `KM8-umweltmethoden` | Werkzeuge/Methoden Umweltmanagement |
| `KM9a-betriebsfuehrung` | Betriebsführung, Instandhaltung |

**Teilweiser Eigenbedarf** (R-Implementierung als Anker, aber kein
eigenständiges Kapitel in den freien Büchern):

| Key | R-Umsetzung | Lücke |
|---|---|---|
| `KM7-stofffluss-oekobilanz` | `networkD3` (Sankey) | kein Buch zu Stofffluss-/Ökobilanz-Methodik |
| `KM9b-energiemanagement` | `networkD3` (Sankey) optional | kein Buch zu Energiemanagement in R |

### Nicht von Georg unterrichtet (JG1–KM6) — nur der Vollständigkeit halber

Diese Themen haben ebenfalls keine freie Ressourcen-Abdeckung, werden
aber von Kolleg:innen unterrichtet — **kein Material-Backlog für Georg**
(KM5/KM6 relevant nur für Einstiegstest-Kompensation und Georgs Selbststudium):

| Key | Bereich |
|---|---|
| `JG1-prozessgrundlagen` | Prozessgrundlagen, Qualitätsbegriffe |
| `KM3-prozessmanagement` | Prozessbeschreibung, -landkarte, -ketten |
| `KM3-managementsysteme` | Lean, TQM, Normenwesen |
| `KM4-kennzahlen` | Kennzahlensysteme, Prozessleistung |
| `KM4-risiko` | Risikoevaluierung, Maßnahmenpläne |

---

## Verweise

- **Lizenzprüfungen und Begründung der Ressourcen-Wahl:**
  `docs/lehrplan/r4ds-abdeckung.md`
- **Lehrplan-Volltext (PMM-Auszug):**
  `docs/lehrplan/pmm-lehrplan-text.md`
- **Ressourcen für Georgs Selbststudium:**
  `selbststudium/RESOURCES.md`

Stand: 2026-07-23
