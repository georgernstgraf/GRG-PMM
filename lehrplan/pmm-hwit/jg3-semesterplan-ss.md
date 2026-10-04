# Semesterplan JG3 (KM6) — Sommersemester

Prozessmanagement (PMM) — Maturafach WIT
Kompetenzmodul 6 (6. Semester) — RIS BGBl. II Nr. 262/2015, Anlage 1.28, Abschnitt 5

> **Kein Unterrichtsplan.** Georg unterrichtet den III. Jahrgang **nicht**.
> Dieser Plan dokumentiert die **Vorwissen-/Selbststudiums-Planung** (KM6),
> auf der die 4HWIT mit dem Einstiegstest aufsetzt. Lernpfad:
> `selbststudium/reference/jg3-verlauf.html`; Lern-Lektionen unter
> `selbststudium/prepared-lessons/` (zweistellige Nummerierung).

**Bezug:** `../kompetenzmodule/km6.md` · **Extrakt:** `LEHRPLAN.md` (Abschnitt III)
**Ressourcen-Anker:** `../ressourcen-matrix.md` (Keys `KM6-konfidenz`,
`KM6-darstellung`, `KM6-lebensdauer`)
**Lehrstoff KM6:** Zufallsstreu- und Vertrauensbereiche, Auswertung und
Darstellung von Prüfergebnissen, Lebensdauerverteilungen.

Track-Zuordnung: **Track 2** (Schätzen & Inferenz) wird aus dem WS fortgesetzt
(09–11 = Vertrauensbereiche); **Track 3** (Anwendung & Lebensdauer) liegt
komplett im SS.

## Track 2 (Fortsetzung) — Vertrauensbereiche (KM6)

| L | Thema | Lektüre-Anker | R |
|---|-------|---------------|---|
| 09 | Standardfehler & KI für μ bei bekanntem σ — SE=σ/√n, z=1,96, Breite | ModernDive Kap. 8 | `infer` |
| 10 | t-Verteilung & KI bei unbekanntem σ — df, dickere Ränder, Konvergenz | ModernDive Kap. 8 | `t.test`, `qt` |
| 11 | χ²-Verteilung & KI für σ² — Vorgriff Goodness-of-Fit | — | `qchisq` |

## Track 3 — Anwendung & Lebensdauer (KM6)

| L | Thema | Lektüre-Anker | R |
|---|-------|---------------|---|
| 12 | Prüfergebnisse darstellen — Histogramm, Boxplot, QQ-Plot, Streudiagramm | R4DS Kap. 11, 28–29 | `ggplot2`, Quarto |
| 13 | Kennzahlen & Ausreißer — IQR, 1,5·IQR-Regel, Schiefe/Wölbung | NIST Kap. 1 | `IQR`, `quantile` |
| 14 | Lebensdauer-Grundlagen — R(t), Ausfallrate λ(t), Badewannenkurve | NIST Kap. 8 | — |
| 15 | Weibull- & Exponentialverteilung als Lebensdauer — β/η, MTBF/MTTF, 63,2 % | NIST Kap. 8 | `fitdistrplus` |

## Lern-Lektionen

| L | Lektion |
|---|---------|
| 09–15 | — (noch zu bauen) |

Eine Lektion pro Session; nachgewiesenes Verständnis wird in einem Learning
Record festgehalten. **Fortschritts-Status** liegt ausschließlich in
`selbststudium/` — dieser Semesterplan trägt bewusst keinen.
