# Semesterplan 4HWIT — Wintersemester

Prozessmanagement (PMM) — Maturafach WIT
KM 7 (RIS BGBl. II Nr. 262/2015, Anlage 1.28, Abschnitt 5)

**Zeitmodell:** 13 echte UE (1 DS/Woche) + 2 reservierte DS
(Einstiegstest, Leistungsfeststellung/Admin). Offiziell 18 Schulwochen —
Ausfälle durch Feiertage/Krankheit sind einkalkuliert; bei Glücksfall
Bonus-UE (siehe unten).
**Werkzeug:** R / RStudio · **Didaktik:** R4DS-„Whole Game" —
Visualisierung vor Syntax (UE 1–3 in Buch-Reihenfolge)
**KM-Steckbrief:** `kompetenzmodule/km7.md` · **Ressourcen-Anker:**
`docs/lehrplan/ressourcen-matrix.md`

> **Vorwissen aus JG3 (KM5+KM6):** Statistik beginnt laut Lehrplan in der
> 3. Klasse. Die Schüler:innen sollten Verteilungen, Parameter/Schätzwerte,
> Zufallsstreu-/Vertrauensbereiche und Lebensdauerverteilungen kennen.
> **Reservierte DS 1 = Einstiegstest** (Repo: GRG-PMM-T) — bei Lücken
> kompensiert UE 4–5 (und ggf. die Bonus-UE).

---

## UE 1–3: R-Toolchain (schulautonom, R4DS-Whole-Game)

| UE | Thema | Lektüre-Anker | R |
|----|-------|---------------|---|
| 1 | **Datenvisualisierung zuerst** — ggplot2-Grammatik, aes/geoms, penguins | R4DS Kap. 1–2 | `ggplot2` |
| 2 | **Daten transformieren & Workflow** — filter/select/mutate/summarise, Pipe | R4DS Kap. 3–6 | `dplyr` |
| 3 | **Daten einlesen & deskriptive Statistik** — CSV/Excel, EDA | R4DS Kap. 7, 10, 20 | `readr`/`readxl` |

> **Retrofit ausständig (Phase 3, #6):** Die Bestandsordner
> `01-r-grundlagen-datenstrukturen/` und `02-daten-einlesen-deskriptiv/`
> folgen noch der alten Reihenfolge (Syntax vor Visualisierung) und werden
> auf diese UE 1–3 umgebaut.

## UE 4–5: Verteilungen & Inferenz (KM5/KM6-Recap)

| UE | Thema | Lektüre-Anker | R |
|----|-------|---------------|---|
| 4 | **Wahrscheinlichkeit & Verteilungen** — diskret/stetig, Normal, d/p/q/r | Navarro Kap. 9–10 · NIST Kap. 1 | `dbinom`, `pnorm`, `qnorm` |
| 5 | **Schätzen & Konfidenzintervalle** — Sampling, CLT, Bootstrap-CI | ModernDive Kap. 7–8 | `infer` |

## UE 6–8: Statistische Tests

| UE | Thema | Lektüre-Anker | R |
|----|-------|---------------|---|
| 6 | **t-Tests** — ein-/zweistichprobig, gepaart; Effektstärke | Navarro Kap. 13 · ModernDive Kap. 9 · NIST Kap. 7 | `t.test`, `infer` |
| 7 | **χ²-Tests** — Anpassung & Unabhängigkeit | Navarro Kap. 12 | `chisq.test` |
| 8 | **ANOVA & nichtparametrische Tests** — Tukey, Wilcoxon, Kruskal-Wallis | Navarro Kap. 14+16 | `aov`, `wilcox.test` |

## UE 9–11: Annahmestichprobenprüfung

| UE | Thema | Lektüre-Anker | R |
|----|-------|---------------|---|
| 9 | **Grundlagen & OC-Kurven** — AQL/LTPD, Produzenten-/Konsumentenrisiko | NIST Kap. 6.2 | `AcceptanceSampling` |
| 10 | **Attributive Prüfung, ISO 2859** — einfach/doppelt, Switching | NIST Kap. 6.2 + **Eigenmaterial** (Norm-Tabellen) | `AcceptanceSampling` |
| 11 | **Variable Prüfung, ISO 3951** — k-Methode, Prüfplan erstellen | **Eigenmaterial** (Norm) | `AcceptanceSampling` |

## UE 12–13: Umweltmanagement & Abschluss

| UE | Thema | Lektüre-Anker | R |
|----|-------|---------------|---|
| 12 | **Umweltmanagement kompakt** — Umweltprüfung, Stofffluss, Ökobilanz | **Eigenmaterial** | `networkD3` (Sankey) |
| 13 | **Fallstudie & Semesterabschluss** — durchgängiges Beispiel: Daten → Test → Entscheidung | — | alle |

## Bonus-UE (optional, bei Ausfallfreiheit)

| UE | Thema | Anlass |
|----|-------|--------|
| +1 | **Verteilungs-Vertiefung / Prüfungsvorbereitung** — gemischte Übungen zu UE 4–8 | Einstiegstest zeigt KM5-Lücken *oder* Puffer bleibt |

## Reservierte DS (keine Lehr-UE)

| DS | Inhalt |
|----|--------|
| R1 | **Einstiegstest** (KM5/KM6-Vorwissen; Repo GRG-PMM-T, Termin 2026-09-07) |
| R2 | **Leistungsfeststellung / Semester-Admin** |

---

**Schwerpunkte:** 9 UE Statistik/R · 2 UE Annahmeprüfung+ · 1 UE Umwelt · 1 UE Fallstudie
**Eigenmaterial-Bedarf (aus Matrix):** ISO 2859/3951-Spezifika (UE 10–11),
Umweltmanagement (UE 12) — alle übrigen UE haben freie Lektüre-Anker.

(Umgeschrieben 2026-07-23: 13 echte UE + 2 Reserve; R4DS-Buchreihenfolge
für UE 1–3; Ressourcen-Anker aus `ressourcen-matrix.md`. Zuvor: 15 UE,
alte Toolchain-Reihenfolge.)
