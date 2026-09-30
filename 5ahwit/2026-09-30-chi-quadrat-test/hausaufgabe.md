# Aufgabe KM7-02 — Der Chi-Quadrat-Test

Name: _____________ &nbsp;&nbsp;&nbsp; Abgabe: _____________

**Lektüre:** Navarro, [Statistik für Human- und Sozialwissenschaftler](https://learningstatisticswithr.com/book/)
(Pflicht) — **Kap. 12, Chi-Quadrat-Tests**. Aufgaben 4 und 6 beziehen sich
auf das Kapitel. Voraussetzung ist
[Lektion KM5-02](../KM5-02-binomialverteilung-und-annahmeschwelle/lesson.html)
(Binomialverteilung) — der Anpassungstest ist ihre Anwendung.

> **Setup-Ritual:** RStudio-Projekt `pmm-km7-02`, Skript `analyse.R`.
> **Daten:** `assets/betriebsdaten.csv` — Sollmaß 10,00 mm, Toleranz
> ± 0,15 mm. Gültige Messungen: 116 (vier fehlen und werden NA).

---

## 0. Der Datensatz

```r
library(tidyverse)
daten <- read_csv(".../assets/betriebsdaten.csv") |>
  mutate(iok = if_else(is.na(masse_mm), NA,
              if_else(abs(masse_mm - 10) > 0.15,
                      "ausserhalb", "in_Toleranz")))
tab <- table(daten$maschine, daten$iok)
tab
```

```
          ausserhalb  in_Toleranz
M1                0           37
M2                0           39
M3                6           34
Sum               6          110
```

---

## 1. Vorhersagen (ohne R — erst hinschreiben!)

**a)** Wie viele gültige Messungen hat die Tabelle insgesamt?
______________ Warum nicht 120? ____________________

**b)** Wie viele Ausschusteile wären bei **Unabhängigkeit** (H0) in Zeile
M1 zu erwarten? Rechne die Formel von Hand:

$$\text{erwartet}_{ij} = \frac{\text{Zeilensumme}_i \cdot \text{Spaltensumme}_j}{\text{Gesamtsumme}}$$

Erwartet M1 außen: ____________

**c)** Wie viele der sechs Zellen liegen erwartungsgemäß unter 5? Die Regel
verlangt: mindestens 80 % müssen &ge; 5 sein. Ist sie hier erfüllt?
____________ Welches Testverfahren folgt daraus? ____________________

---

## 2. Die Teststatistik von Hand

**a)** Berechne den Beitrag jeder der drei Zellen in der Spalte
„außerhalb":

$$\frac{(\text{beobachtet} - \text{erwartet})^2}{\text{erwartet}}$$

| Zelle | beobachtet | erwartet | Beitrag |
|-------|-----------|----------|---------|
| M1 außerhalb | | | |
| M2 außerhalb | | | |
| M3 außerhalb | | | |

**b)** Berechne dieselbe Tabelle mit R und vergleiche Zelle für Zelle.
Wo weicht deine Handrechnung am stärksten ab, und warum?

```r
erwartet <- outer(rowSums(tab), colSums(tab)) / sum(tab)
round((tab - erwartet)^2 / erwartet, 4)
```

Summe der Beiträge: ____________ &nbsp; `chisq.test(tab)$statistic`: ____________

**c)** Welche Zelle trägt den größten Beitrag bei? Ist das die Zelle mit
der größten relativen Abweichung, oder die mit dem kleinsten Nenner?
Begründe. ____________________

---

## 3. Der Unabhängigkeitstest

```r
chisq.test(tab)
fisher.test(tab)
```

- X&sup2;: ____________ &nbsp; df: ____________
- p-Wert (Chi): ____________ &nbsp; p-Wert (Fisher): ____________
- Warum weichen die beiden leicht ab? ____________________

**a)** Wie berechnet man die df? Zeige die Formel und die Zahlen:

df = ( ____ − 1) · ( ____ − 1) = ____________

**b)** R gibt eine Warnung aus. Schreib sie wörtlich auf:

_________________________________________________

**c)** Übersetze den Chi-p-Wert in einen deutschen Satz, in dem die Zahl
0,0025 vorkommt. Dann sag, was daraus folgt (H0 verwerfen oder
behalten). ____________________

---

## 4. Der Anpassungstest

Der Kunde gibt eine Sollquote von **10 % Ausschuss** vor.

**a)** Rechne die Anpassungstests für alle drei Maschinen:

```r
quoten <- daten |> filter(!is.na(masse_mm)) |>
  group_by(maschine) |>
  summarise(n = n(), aus = sum(iok == "ausserhalb"),
            .groups = "drop") |>
  mutate(in_toleranz = n - aus)

# Anpassungstest je Maschine gegen 10 % Ausschuss
lapply(split(quoten, quoten$maschine), function(q) {
  suppressWarnings(
    chisq.test(c(q$in_toleranz, q$aus), p = c(0.9, 0.1)))
})
```

| Maschine | beobachtet | erwartet | X&sup2; | p-Wert |
|----------|-----------|----------|--------|--------|
| M1 | 37 / 0 | 37 / 3,7 | | |
| M2 | 39 / 0 | 39 / 3,9 | | |
| M3 | 34 / 6 | 36 / 4,0 | | |

> Warum `suppressWarnings()`? Der Test warnt auch hier vor der
> Näherung — in Aufgabe 5 siehtst du, ob die Warnung berechtigt ist.

**b)** Welche Maschine fällt statistisch auf? In <strong>welche
Richtung</strong> weicht sie ab — und wie erkennst du das, wenn der Test
nur einen p-Wert liefert? ____________________

**c)** Erkläre in 3 Sätzen, warum ein Anpassungstest gegen eine
Sollverteilung <em>kein</em> Güftest für den Prozess ist.

_________________________________________________

**d)** M3 hat 6 von 40 Ausschusteilen, M1 und M2 keine. Welche Frage
beantwortet der Anpassungstest, und welche <em>nicht</em>?

Beantwortet: ____________________ Beantwortet nicht: ____________________

---

## 5. Voraussetzungen prüfen

**a)** Welche der sechs erwarteten Häufigkeiten liegen unter 5? Trage sie ein:

____________ Wie viele Prozent der Zellen sind das? ____________

**b)** Die 80-%-Regel verlangt also: erfüllt / nicht erfüllt
(________). Was bedeutet das für die Verlässlichkeit von
`p = 0,0025`? ____________________

**c)** R gibt <em>auch</em> beim Anpassungstest aus Aufgabe 4 eine
Warnung aus. Führe ihn ohne `suppressWarnings()` aus und notiere den Wortlaut.
Warum? Überlege, wie viele Fälle je Zelle erwartet werden — bei M1 sind
das 37 in Toleranz gegen 3,7 außerhalb. Was folgt daraus für die
Verlässlichkeit aller p-Werte in Aufgabe 4? ____________________

---

## 6. Kapitel-Check (Navarro Kap. 12)

**a)** Nenne die **drei** Voraussetzungen des Chi-Quadrat-Tests aus dem
Kapitel und prüfe, welche in diesem Datensatz erfüllt sind:

1. _________________________________________________
2. _________________________________________________
3. _________________________________________________

**b)** Erkläre den Unterschied zwischen Unabhängigkeitstest und
Anpassungstest in eigenen Worten: Welche Frage stellt welcher, und wie
wird in R der Unterschied am Aufruf sichtbar? ____________________

**c)** Ein Kollege sagt: „Der Chi-Test sagt, dass M3 schlecht ist, weil
0,0025 < 0,05." Hat er recht? Begründe in 2 Sätzen — denke an Richtung
und daran, was ein Anpassungstest gerade <em>nicht</em> kann.

_________________________________________________
