# Aufgabe KM6-01 — Boxplot und die Wahl der richtigen Grafik

Name: _____________ &nbsp;&nbsp;&nbsp; Abgabe: _____________

**Lektüre:** R4DS 2e, [Kap. 1 Data visualization](https://r4ds.hadley.nz/visualize)
(Pflicht) — insbesondere `geom_boxplot()`. Ergänzend NIST/SEMATECH
e-Handbook, Kap. 1 (Exploratory Data Analysis).

> **Setup-Ritual:** RStudio-Projekt `pmm-km6-01`, Skript `analyse.R`.
> **Daten:** `assets/betriebsdaten.csv` — Sollmaß 10,00 mm, Toleranz
> ± 0,15 mm, 4 fehlende Messungen.

---

## 1. Vorhersagen (ohne R — erst hinschreiben!)

**a)** Welche der drei Maschinen wird den **größten IQR** zeigen? Und welche
wird den **Median am weitesten** vom Sollmaß 10,00 mm entfernt haben?
(Nenne beide Maschinen, auch wenn es dieselbe ist.)

Größter IQR: ____________ &nbsp; Median am weitesten: ____________

**b)** Wie viele der 120 Teile werden erwartungsgemäß **außerhalb** der
Toleranz liegen — bei welcher Maschine? ____________ Warum weißt du das
schon, <em>bevor</em> du rechnest? ____________________

---

## 2. Die fünf Zahlen

```r
library(tidyverse)
daten <- read_csv(".../assets/betriebsdaten.csv")

kennzahlen <- daten |>
  group_by(maschine) |>
  summarise(
    minimum = min(masse_mm, na.rm = TRUE),
    q1      = quantile(masse_mm, 0.25, na.rm = TRUE),
    median  = median(masse_mm, na.rm = TRUE),
    q3      = quantile(masse_mm, 0.75, na.rm = TRUE),
    maximum = max(masse_mm, na.rm = TRUE),
    iqr     = IQR(masse_mm, na.rm = TRUE)
  )
```

**a)** Trage die Werte ein:

| Maschine | min | Q1 | Median | Q3 | max | IQR |
|----------|-----|----|--------|----|-----|-----|
| M1 | | | | | | |
| M2 | | | | | | |
| M3 | | | | | | |

**b)** Warum braucht jede Zeile ein <code>na.rm = TRUE</code> — und was
passiert ohne? ____________________

**c)** Berechne für jede Maschine den Anteil des IQR an der Toleranzbreite
(0,30 mm) und trage ein:

```r
kennzahlen |> mutate(iqr_anteil = round(iqr / 0.30, 3))
```

| Maschine | IQR / 0,30 | Bedeutung |
|----------|-------------|-----------|
| M1 | | |
| M2 | | |
| M3 | | |

Wie viel der erlaubten Toleranzreserve nutzt M3? Und was bedeutet das
für die Teile, die noch <em>innerhalb</em> der Box liegen?
_________________________________________________

**d)** Vergleiche je Maschine Median und arithmetischen Mittelwert
(<code>mean(masse_mm, na.rm = TRUE)</code>). Bei welcher Maschine liegen
die beiden am weitesten auseinander, und was sagt das über die Form der
Verteilung?

_________________________________________________

---

## 3. Zwei Definitionen von „außerhalb"

**a)** Berechne für jede Maschine die Ausreißer nach der 1,5-IQR-Regel:

```r
daten |>
  group_by(maschine) |>
  summarise(ausreisser = list(boxplot.stats(masse_mm)$out))
```

| Maschine | Anzahl Ausreißer | Werte |
|----------|------------------|-------|
| M1 | | |
| M2 | | |
| M3 | | |

**b)** Berechne zum Vergleich die Teile außerhalb der Toleranz:

```r
daten |>
  filter(!is.na(masse_mm)) |>
  group_by(maschine) |>
  summarise(ausserhalb = sum(abs(masse_mm - 10) > 0.15))
```

| Maschine | Ausreißer (1,5 IQR) | außerhalb Toleranz |
|----------|----------------------|--------------------|
| M1 | | |
| M2 | | |
| M3 | | |

**c)** Der Qualitätsmanager wollte „die 6 Ausschusteile von M3
aussortieren". Was sagt ihm der Boxplot stattdessen? Erkläre in 3 Sätzen
— denk an die Lage des Zau ns (Q1 − 1,5 · IQR) bei M3.

_________________________________________________

**d)** Schreibe die Definitionen auf, wie du sie im Unterricht gelernt
hast:

- **Ausreißer** (statistisch): _________________________________
- **Ausschuss** (spezifikationsbezogen): ________________________

---

## 4. Die Grafiken bauen

**a)** Boxplot mit Toleranzlinien:

```r
ggplot(daten, aes(x = maschine, y = masse_mm)) +
  geom_boxplot() +
  geom_hline(yintercept = c(9.85, 10.15), linetype = "dashed",
             colour = "red") +
  labs(x = "Maschine", y = "Masse (mm)")
```

Was siehst du an M3, das du in der Tabelle aus Aufgabe 2 **nicht**
gesehen hast? ____________________

**b)** Balkendiagramm der Ausschussquote:

```r
daten |>
  filter(!is.na(masse_mm)) |>
  mutate(ausserhalb = abs(masse_mm - 10) > 0.15) |>
  ggplot(aes(x = maschine, fill = ausserhalb)) +
  geom_bar() +
  labs(x = "Maschine", y = "Anzahl Teile", fill = "außerhalb Toleranz")
```

**c)** Warum steht hier ein <code>geom_bar()</code> und kein
<code>geom_histogram()</code>? Begründe in 2 Sätzen — denk an Lücken
zwischen den Balken.

_________________________________________________

**d)** Histogramm der Masse mit Toleranzlinie:

```r
ggplot(daten, aes(x = masse_mm)) +
  geom_histogram(binwidth = 0.02) +
  geom_vline(xintercept = c(9.85, 10.15), linetype = "dashed",
             colour = "red") +
  labs(x = "Masse (mm)", y = "Anzahl Teile")
```

Welche der drei Grafiken beantwortet die Frage „Sind die Teile normal
verteilt?" am besten, und welche „Sind die Maschinen verschieden?"?
____________ / ____________

---

## 5. Kapitel-Check (R4DS Kap. 1)

**a)** Erkläre in eigenen Worten, was die **Höhe der Box** im Boxplot
bedeutet und warum das <em>nicht</em> die Standardabweichung ist.

_________________________________________________

**b)** Nenne die vier Grafiktypen aus Schritt 4 der Lektion und für
jeden die Frage, die er beantwortet. Schreibe außerdem auf, welcher Typ
bei der Frage „Wie viele Teile sind je Maschine defekt?" **nicht**
geeignet ist, und warum.

1. _________________________________________________
2. _________________________________________________
3. _________________________________________________
4. _________________________________________________

Nicht geeignet: ____________ Warum: ____________________

**c)** Der Boxplot zeigt M3 zu hoch und zu stark streuend. Welcher Test
klärt jeweils die Frage, ob das ein <em>echter</em> Unterschied ist —
und welcher, ob die Ausschussquote von der Maschine abhängt?
(Selectiere nicht, begründe in 2 Sätzen.)

Lage: ____________________ Ausschussquote: ____________________
