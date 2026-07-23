# Hausaufgabe UE 1 — R-Grundlagen & Datenstrukturen

Name: _____________ &nbsp;&nbsp;&nbsp; Abgabe: _____________

---

## 1. R und RStudio startklar machen

Installiere R und RStudio auf deinem Rechner (siehe Präsentation, Folie „R & RStudio").
Teste: öffne RStudio, tippe in die Konsole:

```r
2 + 3 * 4
```

Du solltest `14` als Antwort bekommen.

---

## 2. Erste Vektorrechnung

Führe in der R-Konsole aus und notiere das Ergebnis:

```r
x <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
x + x
```

Ergebnis: _________________________________________________

---

## 3. Vorhersage (ohne R)

Schreibe zuerst deine Vorhersage auf — dann prüfe mit R:

**a)**
```r
c(TRUE, 1, "a")
```
Vorhersage: Typ? ________ &nbsp; Werte? ________________________
<br>R-Ergebnis: _________________________________________________

**b)**
```r
as.numeric(factor(c("50", "100", "150")))
```
Vorhersage: ________________________
<br>R-Ergebnis: _________________________________________________
<br>Erklärung: __________________________________________________

---

## 4. mtcars inspizieren

Führe in R aus und beantworte:

```r
str(mtcars)
```

- Wie viele Zeilen? ______
- Wie viele Spalten? ______
- Welche Spalte hat den Typ `factor`? _______________
- Wandle `mtcars$cyl` in einen Factor um: `cyl_f <- factor(mtcars$cyl)`.
  Was liefert `levels(cyl_f)`? _________________________________________________

---

## 5. data.frame bauen

Schreibe und führe folgenden Code aus:

```r
meine_daten <- data.frame(
  produkt = c("A", "A", "B", "B"),
  wert    = c(10.5, 11.2, 8.3, 7.9)
)
```

- Rufe `summary(meine_daten)` auf. Welche Art von Zusammenfassung bekommt die
  Spalte `produkt` (und warum nicht Min/Mean/Max wie bei `wert`)?

  Antwort: _________________________________________________
