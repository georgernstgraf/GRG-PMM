# Aufgabe KM5-01 — n über k: Wege zählen mit dem Pascalschen Dreieck

Name: _____________ &nbsp;&nbsp;&nbsp; Abgabe: _____________

**Lektüre:** Navarro, [Learning Statistics with R](https://learningstatisticswithr.com/09-probability.html)
(englisch) — **Kap. 9, Probability** (Pflicht, wie in der Lektion).

> **Setup-Ritual:** RStudio-Projekt `pmm-km5-01`, Skript `analyse.R`.
> Alles mit Base-R — `choose()`, `dbinom()`, `pbinom()`; keine
> Zusatzpakete nötig.

---

## 1. Vorhersagen (ohne R — erst hinschreiben!)

**a)** Schreibe die **Zeile 7** des Pascalschen Dreiecks mit der Hand auf
(8 Zahlen). Erkläre dabei in einem Halbsatz, wie du auf jede Zahl
kommst, ohne sie auszurechnen.

Zeile 7: ____ ____ ____ ____ ____ ____ ____ ____

**b)** Bei `n = 5` und `p = 0.2`: Was ist größer — `P(X = 2)` oder
`P(X = 3)`? Begründe deine Vermutung in einem Satz, **bevor** du
rechnest.

Vorhersage: ____________________

---

## 2. Das Dreieck in R prüfen

**a)** Prüfe deine Vorhersage aus 1a:

```r
choose(7, 0:7)
```

Stimmt jede Zahl? Wo stimmt sie nicht — und warum (welche Regel hast
du falsch angewendet)?

**b)** Die Additionsregel: Zeige, dass „zwei darüber addieren" hält:

```r
choose(6, 2) + choose(6, 3)
choose(7, 3)
```

Kontrollwert: beide Aufrufe ergeben **35**. Formuliere die Regel als
Formel mit `(n über k)`-Schreibweise.

**c)** Die Symmetrie: Berechne `choose(9, 4)` und `choose(9, 5)` und
erkläre in einem Satz, warum „auswählen" und „weglassen" dieselbe Zahl
geben müssen.

Kontrollwert: beide **126**.

---

## 3. Von den Wegen zur Verteilung

**a)** Rechne die Einstiegsfrage der Lektion **von Hand** nach —
`P(X = 2)` bei `n = 5`, `p = 0.2` — zuerst mit `choose()` und Potenzen,
dann mit `dbinom()`:

```r
choose(5, 2) * 0.2^2 * 0.8^3
dbinom(2, 5, 0.2)
```

Kontrollwert: beide **0.2048**. Welche der beiden Rechnungen entspricht
„Wege zählen × Weg gewichten", welche fasst alles zusammen?

**b)** Baue die ganze Verteilung als Tabelle und prüfe die Summe:

```r
data.frame(k = 0:5, p = dbinom(0:5, 5, 0.2))
sum(dbinom(0:5, 5, 0.2))
```

Warum muss die Summe genau 1 herauskommen? Antworte über die Wege, nicht
über die Formel.

**c)** Kumuliere: Was bedeutet der Wert von `pbinom(2, 5, 0.2)`
(Kontrollwert **0.94208**) in einem Fertigungssatz — sprich über
Defekte, nicht über „kumuliert".

---

## 4. Transfer: eigene Maschine

Eine Maschine liefert **5 % Ausschuss** (`p = 0.05`), du prüfst
`n = 20` Teile.

**a)** Berechne die Wahrscheinlichkeit für 0, 1, 2 und 3 defekte Teile
und trage ein:

```r
dbinom(0:3, 20, 0.05)
```

| k | 0 | 1 | 2 | 3 |
|---|---|---|---|---|
| P(X = k) | | | | |

**b)** Zeichne die ganze Verteilung und beschreibe die Form in einem
Satz:

```r
barplot(dbinom(0:20, 20, 0.05))
```

Welches k hat den höchsten Balken — und warum liegt es **nicht** bei
`k = 0`, obwohl 5 % sehr wenig ist?

**c)** Vergleiche `dbinom(2, 5, 0.05)` mit `dbinom(2, 10, 0.05)`
(Kontrollwerte: **0.0214** gegen **0.0746**). Erkläre in zwei Sätzen,
warum mehr geprüfte Teile die Chance auf genau 2 Defekte erhöht —
obwohl die Ausschussquote gleich bleibt.

**d)** **Erklärung:** Warum ist `(0 über 0) = 1`? Argumentiere über die
Anzahl der Wege — wie viele Sequenzen mit genau 0 Erfolgen gibt es bei
0 Versuchen?

---

## 5. Kapitel-Check (Navarro Kap. 9)

**a)** Nenne die drei Bedingungen, unter denen die Binomialverteilung
anwendbar ist, und prüfe, welche davon im Szenario aus Aufgabe 4
erfüllt sind.

1. _________________________________________________
2. _________________________________________________
3. _________________________________________________

**b)** Erkläre in eigenen Worten, was `choose()`, `dbinom()` und
`pbinom()` jeweils zurückgeben — und welches der drei du nimmst, wenn
eine Kundin fragt: „Wie wahrscheinlich sind höchstens 2 defekte Teile
in der Stichprobe?"

| Funktion | gibt zurück … |
|----------|---------------|
| `choose(n, k)` | |
| `dbinom(k, n, p)` | |
| `pbinom(k, n, p)` | |

Antwort Kundin: _________________________________________________
