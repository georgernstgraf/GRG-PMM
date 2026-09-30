# Aufgabe KM5-02 — Binomialverteilung und Annahmeschwelle

Name: _____________ &nbsp;&nbsp;&nbsp; Abgabe: _____________

**Lektüre:** Navarro, [Statistik für Human- und Sozialwissenschaftler](https://learningstatisticswithr.com/book/)
(Pflicht) — **Kap. 9, Probability**. Voraussetzung ist
[Lektion KM5-01](../KM5-01-binomialkoeffizient-pascalsches-dreieck/lesson.html)
(Wege zählen, Pascalsches Dreieck) — ohne `choose()` und `dbinom()` ist
diese Aufgabe nicht zu lösen.

> **Setup-Ritual:** RStudio-Projekt `pmm-km5-02`, Skript `analyse.R`.

---

## 1. Vorhersagen (ohne R — erst hinschreiben!)

**a)** Eine Maschine hat 5 % Ausschuss. Du prüfst 5 Teile. Wie
wahrscheinlich ist **kein** defektes Teil?

```r
dbinom(0, 5, 0.05)
```

Vorhersage: ____________________

**b)** Und wie wahrscheinlich ist **mindestens** ein defektes Teil?

```r
pbinom(0, 5, 0.05, lower.tail = FALSE)
```

Vorhersage: ____________________ Warum kann das Ergebnis aus a) nicht
größer sein als 1 minus dem Ergebnis aus b)? ____________________

**c)** Bei n = 10, p = 0,10: Wie viele defekte Teile sind im Mittel zu
erwarten? Und: Wird die Akzeptwahrscheinlichkeit für „höchstens 2 Fehler"
mit steigendem n größer oder kleiner? Begründe.

_________________________________________________

---

## 2. `d/p/q/r` — die vier Ansichten

**a)** Berechne für n = 20, p = 0,15 die Wahrscheinlichkeiten für
0 bis 5 Fehler. Welcher Wert ist am größten?

```r
data.frame(k = 0:5, p = dbinom(0:5, 20, 0.15))
```

**b)** Welche der beiden Rechnungen liefert die Wahrscheinlichkeit für
„höchstens 2 Fehler"? Warum sind sie nicht gleich?

```r
pbinom(2, 20, 0.15)
1 - pbinom(1, 20, 0.15)
```

**c)** Welcher k-Wert gehört zur 95-%-Quantile bei n = 20, p = 0,15? Und
was bedeutet das in einem Satz für eine Annahmeprüfung?

```r
qbinom(0.95, 20, 0.15)
```

Interpretation: _________________________________________________

---

## 3. OC-Tabellen selbst konstruieren

Baue die Akzeptwahrscheinlichkeitstabelle für **n = 20** und c = 0 bis 4:

```r
pfehler <- seq(0.05, 0.30, by = 0.05)
sapply(0:4, function(c) round(pbinom(c, 20, pfehler), 4))
```

**a)** Trage die Werte in eine Tabelle ein (Zeilen: Fehlerquote,
Spalten: Annahmeschwelle c).

_________________________________________________

**b)** Welcher Plan hat die **beste Trennschärfe**? Definiere sie zuerst:

$$\text{Trennschärfe} = P(\text{annehmen} \mid p = 0{,}05) - P(\text{annehmen} \mid p = 0{,}15)$$

Bester Plan (n, c): ____________ &nbsp; Trennschärfe: ____________

**c)** Vergleiche mit dem Plan (n = 10, c = 1) aus der Lektion: Ist die
Trennschärfe besser oder schlechter? Was hast du dafür an Prüfaufwand
bezahlt (Anzahl geprüfter Teile pro Los)? ____________________

---

## 4. Die Annahmeschwelle rückwärts

Der Kunde verlangt: **„Unser Prozess hat 10 % Ausschuss. Ein gutes Los
muss mit mindestens 95 % Wahrscheinlichkeit angenommen werden. Mehr als
2 Fehler sind nicht zulässig."**

**a)** Ein Kunde will prüfen, **so viele Teile wie möglich** — aber die
95-%-Garantie darf nicht reißen. Wie viele Teile sind das? Rechne die
Reihe durch und suche das **letzte** n, bei dem die Garantie noch hält:

```r
sapply(1:20, function(n) round(pbinom(2, n, 0.10), 4))
```

Größtes zulässiges n: ____________ &nbsp; Akzeptwahrscheinlichkeit dort:
____________

**b)** Warum ist das die *interessante* Frage und nicht „wie klein muss n
sein"? Bei n = 1 ist die Garantie von 100 % erfüllt — du prüfst aber
weniger als nichts. Erkläre den Gedankengang in 2 Sätzen.

_________________________________________________

**c)** Zeige, dass dieser Plan bei einem *schlechten* Prozess mit p = 0,15
wenig taugt. Berechne P(annehmen | p = 0,15) und interpretiere das
Warenrisiko in einem Satz.

```r
pbinom(2, 8, 0.15)
```

Warenrisiko: _________________________________________________

**d)** Der Kunde ist unzufrieden und erhöht c auf 3. Wie viel Prüfumfang
gewinnt er dadurch — und warum geht das? Rechne nach und gib die
Akzeptwahrscheinlichkeit beim schlechten Prozess an.

```r
sapply(1:20, function(n) round(pbinom(3, n, 0.10), 4))
```

Gewinn: ____________ &nbsp; Warenrisiko jetzt: ____________

---

## 5. Zurück zu unseren Betriebsdaten

```r
library(tidyverse)
daten <- read_csv(".../assets/betriebsdaten.csv")
```

**a)** M3 hat 6 von 40 Teilen außerhalb der Toleranz (10,00 ± 0,15 mm),
M1 und M2 gar keine. Berechne den Anteil je Maschine:

```r
daten |> filter(!is.na(masse_mm)) |>
  mutate(iok = abs(masse_mm - 10) > 0.15) |>
  group_by(maschine) |>
  summarise(n = n(), ausserhalb = sum(iok),
            anteil = round(mean(iok), 4))
```

**b)** Angenommen, die wahre Ausschussquote von M3 wäre 10 % — wie
wahrscheinlich ist es dann, **6 oder mehr** defekte Teile zu sehen?

```r
pbinom(5, 40, 0.10, lower.tail = FALSE)
```

**c)** Deine Kundin sagt: „6 Ausschusteile bei M3, das ist ein Skandal."
Was antwortest du ihr? Beziehe das Ergebnis aus b) ein und erkläre, warum
ein einzelner Stichprobenbefund noch kein Nachweis für eine erhöhte
Fehlerquote ist.

_________________________________________________

**d)** Wie viele Teile müsste man prüfen, um einen Anstieg von 10 % auf
15 % Ausschuss mit mindestens 80 % Wahrscheinlichkeit zu *entdecken*,
wenn die Annahme lautet „höchstens 4 Fehler sind normal"? Der
Fehlalarm-Fall mit p = 0,10 ist dabei genauso wichtig — rechne beide:

```r
sapply(20:60, function(n) 1 - pbinom(4, n, 0.15))
sapply(20:60, function(n) 1 - pbinom(4, n, 0.10))
```

Kleinstes n: ____________ &nbsp; Entdeckungswahrscheinlichkeit: ____________

**e)** Bei diesem n: Wie oft wird ein **gutes** Los mit genau 10 %
Ausschuss fälschlich zurückgewiesen? Vergleiche das mit der
Entdeckungswahrscheinlichkeit. Was bedeutet das für den
Prüfaufwand-Wareneinsatz dieser Stichprobe?

_________________________________________________

> **Ausblick:** Genau dieses Verhältnis — Entdeckungswahrscheinlichkeit
> gegen Fehlalarm — heißt in der Statistik **Teststärke (Power)**. Es ist
> das Thema von [Lektion KM7-03](../KM7-03-teststaerke-und-stichprobenumfang/lesson.html),
> dort am t-Test. Du hast es hier gerade schon an der Binomialverteilung
> selbst durchgerechnet.

---

## 6. Kapitel-Check (Navarro Kap. 9)

**a)** Nenne die drei Bedingungen, unter denen eine Binomialverteilung
anwendbar ist, und prüfe, welche davon in Aufgabe 5a erfüllt sind.

1. _________________________________________________
2. _________________________________________________
3. _________________________________________________

**b)** Erkläre im eigenen Satz den Unterschied zwischen
**Produzentenrisiko** und **Warenrisiko**. Welche Seite davon hat ein
Kunde, der nur seine eigene Ausschussquote sehen will?

_________________________________________________
