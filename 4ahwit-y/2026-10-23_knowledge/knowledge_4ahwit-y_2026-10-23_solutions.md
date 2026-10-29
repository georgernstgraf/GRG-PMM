# Wissensüberprüfung PMM — R-Basics, Kennzahlen & Binomialverteilung
## LÖSUNGEN (Lehrerversion)

**Datum:** 2026-10-23
**Klasse:** 4AHWIT-y
**Punkte:** 185 (35 MC à 4 P + 3 Freitext à 15 P)

**Bewertung MC:** 1 Punkt pro korrekt behandelter Option (angekreuzt oder
freigelassen), 4 Punkte pro Frage. Eine mit `-` markierte und begründete Option
zählt wie eine korrekt behandelte (kein Abzug).

---

## Multiple-Choice-Fragen

| Nr. | Block | Richtige Optionen | Kernaussage |
|-----|-------|-------------------|-------------|
| 1 | A | **A, B, C** | Git, RStudio, R — Excel nicht |
| 2 | A | **A, B, D** | Engine / Oberfläche / Skript ohne RStudio |
| 3 | A | **A, B, C** | `Rscript` = frische Session, Terminal ≠ R-Konsole |
| 4 | A | **A, B** | Installation einmalig; `library()` ohne Anführungszeichen |
| 5 | A | **A, B** | 344×8; `summary()`; `head()` = erste Zeilen; `glimpse()` verändert nichts |
| 6 | A | **A, B** | `<-` = Zuweisung, nicht Vergleich; `c()` = Vector |
| 7 | A | **A, B, C** | CSV-Struktur |
| 8 | B | **A, B, C** | Median vs. Mittelwert, Ausreißerempfindlichkeit |
| 9 | B | **A, B, C** | Einheit von sd vs. var |
| 10 | B | **A, B, C** | IQR = Q3−Q1, mittlere 50 %, robust |
| 11 | B | **A, B, D** | `pnorm` = Fläche links; 15,87 % |
| 12 | B | **A, B** | Band 10,00 ± 0,05 → 68,27 % |
| 13 | B | **A, B, D** | 10,098 mm; `q` = Umkehrung |
| 14 | B | **A, B, C** | Verteilungsform, Normalannahme prüfen, Bins |
| 15 | B | **A, B** | Boxplot = Median/Q1/Q3/Ausreißer, QQ liniennah → normal |

**Verifikation:** `pnorm(9.95,10,0.05)` = 0,15866; Band = 0,68269;
`qnorm(0.975,10,0.05)` = 10,098; `pbinom(0,5,0.05)` = 0,7738;
`pbinom(0,5,0.05,lower.tail=FALSE)` = 0,2262; `qbinom(0.95,20,0.15)` = 6;
`dbinom(0,20,0.1)` = 0,1216; `sqrt(20·0,1·0,9)` = 1,3416;
`pbinom(2,20,0.1)` = 0,6769; `pbinom(3,20,0.1)` = 0,8670;
`pbinom(2,20,0.15)` = 0,4049; `dbinom(2,5,0.2)` = 0,2048 — alle per `Rscript`
geprüft (2026-10-19).

| Nr. | Block | Richtige Optionen | Kernaussage |
|-----|-------|-------------------|-------------|
| 16 | C | **A, B, C** | n über k zählt Anordnungen; liefert keine Wahrscheinlichkeit |
| 17 | C | **A, B, C** | drei Binomial-Voraussetzungen |
| 18 | C | **A, B, C** | p = 0,2; „Erfolg" = Ausschuss |
| 19 | C | **A, B, C** | `dbinom` = genau k; 0,2048 |
| 20 | C | **A, B, C** | Formelbausteine: Anordnungen × p^k × (1−p)^(n−k) |
| 21 | C | **A, B, D** | `pbinom` = P(X ≤ 2), kumuliert |
| 22 | C | **A, B, C, D** | 1 − 0,7738 = 0,2262 |
| 23 | C | **A, B, D** | k = 6; `qbinom` als Annahmeschwelle |
| 24 | C | **A, B, C, D** | `d/p/q/r` |
| 25 | C | **A, B, C** | E = 2; `dbinom(0,20,0.1)` = 0,1216; p = 0 → 0 defekt |
| 26 | C | **A, B, C** | E wächst, Glockenform, P(X ≤ 2) sinkt, Streuung wächst |
| 27 | C | **A, B, C** | 0,677; c = 3 → 0,867; schlechter Prozess senkt Akzeptanz |
| 28 | D | **A, B** | Erwartungstreue durch n−1 |
| 29 | D | **A, B, C** | sqrt(5,1429) = 2,2678 |
| 30 | D | **A, B, C** | M1-Mittel nahe 10,00; sd ≈ 0,0315 ≪ Toleranz |
| 31 | D | **A, B, D** | sd = sqrt(var); Varianz additiv → ANOVA |
| 32 | D | **A, B, D** | Stichprobe/Grundgesamtheit |
| 33 | D | **A, B, D** | `na.rm` löscht nichts |
| 34 | D | **A, B** | Annahme/Risiken |
| 35 | D | **A, B, D** | Tippfehler im Spaltennamen |

---

## Freitext-Fragen

### F1 — Binomialversuch komplett (15 P)

**a) Voraussetzungen (5 P):** zwei Ausgänge (defekt / fehlerfrei), gleiche
Erfolgswahrscheinlichkeit p bei jedem Teil, Unabhängigkeit.
Zuordnung: n = 5 geprüfte Teile, p = 0,2 (Ausschuss soll „Erfolg" sein), „Erfolg"
= defektes Teil.

**b) Rechnung (6 P):**

P(X = 2) = „5 über 2" · 0,2² · 0,8³ = 10 · 0,04 · 0,512 = **0,2048** (≈ 20,5 %)

R: `dbinom(2, size = 5, prob = 0.2)` → 0,2048. Gleiches Ergebnis, weil die Formel
die Rechenvorschrift ist.

**c) Abgrenzung (4 P):** `dbinom(2, …)` = genau 2 defekte (0,2048).
`pbinom(2, size = 5, prob = 0.2)` = **höchstens 2** = P(0) + P(1) + P(2) ≈ 0,9421
(kumuliert, also ≥ Einzelwert).

### F2 — sd/var und n−1 (15 P)

**a) Idee (5 P):** Varianz = mittlere quadratische Abweichung vom Mittelwert,
also (1/(n−1)) · Σ (xᵢ − x̄)². Die Quadrate verhindern, dass sich Abweichungen
nach oben und unten gegenseitig aufheben.

**b) n−1 (7 P):** In der Stichprobe subtrahiert man die Abweichungen vom
Stichproben-Mittelwert, der selbst aus den Daten berechnet wird. Die Daten liegen
dadurch tendenziell näher an diesem eigenen Mittelpunkt als an dem unbekannten
Mittel der Grundgesamtheit → Division durch n würde den Schätzer im Mittel zu klein
machen (nicht erwartungstreu). Die Division durch n−1 kompensiert das; Schätzwerte
aus der Stichprobe streuen von Stichprobe zu Stichprobe, nur der Erwartungswert
der Schätzung liegt richtig.

**c) sd vs. var (3 P):** `var()` ist die quadrierte Streuung (Einheit z. B. mm²),
`sd()` = `sqrt(var)` in der Einheit der Daten (mm) — z. B. bei den Betriebsdaten:
sd ≈ 0,03 mm gegen die Toleranz ± 0,15 mm, direkt vergleichbar.

### F3 — Kennzahlen & `pnorm` (15 P)

**a) (5 P):** `pnorm`; man schätzt Mittelwert (`mean`) und Standardabweichung
(`sd`) aus den Daten (Normalannahme).

**b) (6 P):** außerhalb der Toleranz:

```r
mu <- mean(masse_mm, na.rm = TRUE)
s  <- sd(masse_mm, na.rm = TRUE)
# P(X < 9.85) + P(X > 10.15)
pnorm(9.85, mean = mu, sd = s) + pnorm(10.15, mean = mu, sd = s, lower.tail = FALSE)
# oder: 1 - (pnorm(10.15, mu, s) - pnorm(9.85, mu, s))
```

Bedeutung: Anteil/Wahrscheinlichkeit der Teile außerhalb der Toleranz unter der
Normalannahme.

**c) (4 P):** Histogramm zeigt die tatsächliche Verteilungsform — schief, mehrere
Gipfel (z. B. Chargenunterschiede) oder Ausreißer würden die Normalannahme
verletzen und `pnorm` unbrauchbar machen.
