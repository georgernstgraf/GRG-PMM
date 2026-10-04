# Aufgabe KM5-03 — Ziehen ohne Zurücklegen: die hypergeometrische Verteilung

Name: _____________ &nbsp;&nbsp;&nbsp; Abgabe: _____________

**Lektüre:** Navarro, [Statistik für Human- und Sozialwissenschaftler](https://learningstatisticswithr.com/book/)
(Pflicht) — **Kap. 9, Probability**. Voraussetzung:
[Lektion KM5-01](../KM5-01-binomialkoeffizient-pascalsches-dreieck/lesson.html)
(`choose()`, Wege zählen) und
[Lektion KM5-02](../KM5-02-binomialverteilung-und-annahmeschwelle/lesson.html)
(`dbinom()`/`pbinom()`) — die Aufgabe baut auf beiden auf.

> **Setup-Ritual:** RStudio-Projekt `pmm-km5-03`, Skript `analyse.R`.
> Betriebsdaten: `assets/betriebsdaten.csv` (Sollmaß 10,00 ± 0,15 mm).

---

## 1. Vorhersagen (ohne R — erst hinschreiben!)

**a)** M3-Los: N = 40 Teile, M = 4 defekt, Stichprobe n = 10 ohne
Zurücklegen. Welcher Wert x ist am wahrscheinlichsten — 0, 1 oder 2?
Begründe mit dem Erwartungswert `E(X) = n · M/N`.

Vorhersage: ____________________

**b)** Dasselbe Los: Ist P(genau 2) größer oder kleiner als
P(3 oder mehr)? Schätze first mit der Hand, dann prüfe:

```r
dhyper(2, 4, 36, 10)
1 - phyper(2, 4, 36, 10)
```

Vorhersage: ____________________ · R-Ergebnis: ____________________

**c)** Warum darf der Erwartungswert einer Verteilung auch 1,5 sein,
obwohl man 1,5 defekte Teile gar nicht ziehen kann? Ein Satz.

_________________________________________________

---

## 2. Die Formel selbst gebaut

**a)** Baue P(genau 2 defekt) im M3-Los mit den drei `choose()`-Bausteinen
nach — ohne `dhyper`. Vergleiche mit dem Aufruf aus der Lektion.

```r
choose(4, 2) * choose(36, 8) / choose(40, 10)
dhyper(2, 4, 36, 10)
```

Warum dürfen die beiden Wege im Zähler **multipliziert** werden?
Ein Satz. (Tipp: Welches Paar Defekte du wählst, hat keinen Einfluss
darauf, welche 8 Guten du wählst.)

_________________________________________________

**b)** Schreibe die allgemeine Formel für P(X = x) mit den Symbolen
N, M, n, x auf — aus dem Gedächtnis, ohne in die Lektion zu schauen.

_________________________________________________

---

## 3. Die Parameterfalle

Ein Lieferant behauptet: „Mein Los ist top!" — es hat N = 100 Stück,
davon M = 3 defekt. Du ziehst n = 15 ohne Zurücklegen.

**a)** Vier Studierende schreiben vier Aufrufe hin. Welcher ist richtig —
und was ist jeweils der Fehler der anderen? (Tipp: der dritte Parameter
ist `N − M`, nicht `N`.)

```r
dhyper(1, 3, 97, 15)   # Aufruf A
dhyper(1, 3, 100, 15)  # Aufruf B
dhyper(1, 97, 3, 15)   # Aufruf C
dbinom(1, 15, 3/100)   # Aufruf D
```

Richtiger Aufruf: ______ · Fehler A: __________ · Fehler B: __________ ·
Fehler C: __________ · Fehler D: __________

**b)** Wie groß ist hier n/N — und wäre Aufruf D als **Näherung**
erlaubt? Begründe mit der Faustregel.

_________________________________________________

---

## 4. Die ±1-Falle im Wareneingang

Prüfplan für das M3-Los: „Bei **2 oder mehr** Defekten in der
Stichprobe (n = 10) wird die Lieferung zurückgewiesen."

**a)** Berechne die Wahrscheinlichkeit, dass der Plan **anschlägt**:

```r
1 - phyper(1, 4, 36, 10)
```

R-Ergebnis: ____________________

**b)** Deine Kollegin rechnet stattdessen `1 - phyper(2, 4, 36, 10)` —
und freut sich über die kleine Zahl. Erkläre in zwei Sätzen, welche
Frage sie damit **wirklich** beantwortet hat und warum ihr Ergebnis um
einen ganzen Balken daneben liegt.

_________________________________________________

_________________________________________________

---

## 5. Betriebsdaten: M3 unter der Lupe

Lade die Betriebsdaten und bestimme die Ausschussteile von M3
(Toleranz 10,00 ± 0,15 mm):

```r
d <- read.csv("../../assets/betriebsdaten.csv")
m3 <- d[d$maschine == "M3", ]
sum(m3$masse_mm < 9.85 | m3$masse_mm > 10.15)
```

**a)** Du hast jetzt N und M aus **echten** Daten. Der Wareneingang
zieht n = 10. Wie wahrscheinlich ist **höchstens 1** defektes Teil?

R-Ergebnis: ____________________

**b)** Vergleiche mit der naiven Binomialrechnung
(`pbinom(1, 10, M/N)`). Wie groß ist n/N hier — und ist die Abweichung
für eure Entscheidung relevant? Reiche beide Zahlen und ein
Begründung her.

R-Ergebnis exakt: __________ · binomial: __________ · n/N: ______ ·
Begründung: ____________________

---

## 6. Kapitel-Check (Navarro Kap. 9)

Navarro beschreibt in Kap. 9 Wahrscheinlichkeiten über
Zufallsvariablen und Verteilungen. Erkläre in zwei bis drei Sätzen den
Unterschied zwischen **Erwartungswert** und **häufigstem Wert
(Modalwert)** — am Beispiel des Vergleichsloses N = 200, M = 15, n = 20
(höchster Balken bei x = 1, E(X) = 1,5).

_________________________________________________

_________________________________________________

> **Abgabe:** nach Vorgabe deiner Lehrperson. Jede Zahl, die du
> abgibst, stammt aus einem ausgeführten Aufruf — behauptete Zahlen
> sind keine berechneten.
