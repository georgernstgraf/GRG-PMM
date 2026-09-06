# Hausaufgabe UE 2 — Daten einlesen & deskriptive Statistik

Name: _____________ &nbsp;&nbsp;&nbsp; Abgabe: _____________

---

## 1. iris untersuchen

Lade den eingebauten Datensatz und verschaffe dir einen Überblick:

```r
summary(iris)
```

- Notiere für `Sepal.Length`: Mittelwert, Median, Q1, Q3.
- Ist die Verteilung symmetrisch oder schief? (Tipp: vergleiche Mittelwert und Median.)

  Mittelwert: ________ &nbsp; Median: ________ &nbsp; Q1: ________ &nbsp; Q3: ________

  Verteilung: _________________________________________________

---

## 2. Streuung vergleichen

Berechne zwei Streuungsmaße für `Sepal.Length`:

```r
sd(iris$Sepal.Length)
IQR(iris$Sepal.Length)
```

- Beide beschreiben Streuung. Erkläre in 1–2 Sätzen den Interpretations-Unterschied.

  _________________________________________________

  _________________________________________________

---

## 3. group_by-Pipe

Schreibe eine Pipe, die für jede `Species` den Mittelwert und die Standardabweichung
von `Petal.Width` berechnet:

```r
library(dplyr)

iris |>
  group_by(_____) |>
  summarise(
    mittel = _____,
    streuung = _____
  )
```

- Welche Art streut am meisten? _________________

---

## 4. Ausreißer-Effekt

Erzeuge einen Vektor mit Ausreißer und berechne beide Lagemaße:

```r
x <- c(48, 49, 50, 51, 52, 200)
mean(x)
median(x)
```

- Mittelwert: ________ &nbsp; Median: ________
- Welcher reagiert stärker auf den Ausreißer? _________________
- Erkläre mit der Schwerpunkt-Metapher (1–2 Sätze):

  _________________________________________________

  _________________________________________________

---

## 5. NA-Behandlung

```r
y <- c(5, 7, NA, 9, 10)
```

**a)** Was liefert `mean(y)` ohne weiteres Argument?

  Vorhersage: _________________ &nbsp; R-Ergebnis: _________________

**b)** Was liefert `mean(y, na.rm = TRUE)`?

  Vorhersage: _________________ &nbsp; R-Ergebnis: _________________

**c)** Was liefert `is.na(y)`?

  _________________________________________________

---

## 6. Verständnisfrage

Erkläre mit eigenen Worten (ohne zu googeln):

Warum teilt die Standardabweichung durch `n−1` und nicht durch `n`?

  _________________________________________________

  _________________________________________________

  _________________________________________________
