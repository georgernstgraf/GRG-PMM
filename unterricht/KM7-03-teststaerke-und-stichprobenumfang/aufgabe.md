# Aufgabe KM7-03 — Teststärke und Stichprobenumfang

Name: _____________ &nbsp;&nbsp;&nbsp; Abgabe: _____________

**Lektüre:** Navarro, [Statistik für Human- und Sozialwissenschaftler](https://learningstatisticswithr.com/book/)
(Pflicht) — **Kap. 13** (Teststärke beim t-Test) und **Kap. 16**
(Fehler 1. und 2. Art). Voraussetzung ist
[Lektion KM7-01](../KM7-01-mittelwertsvergleich-t-test/lesson.html).

> **Setup-Ritual:** RStudio-Projekt `pmm-km7-03`, Skript `analyse.R`.
> **Merke:** In dieser Aufgabe wird <em>kein</em> Datensatz geladen —
> `power.t.test()` rechnet aus den Parametern.

---

## 1. Vorhersagen (ohne R — erst hinschreiben!)

**a)** Ein Test liefert `p = 0,42`, obwohl die beiden Maschinen sich
tatsächlich um 0,03 mm unterscheiden. Wie heißt dieser Fehler, und welchen
Parameter beschreibt er? ____________________

**b)** Verdoppelt man den zu suchenden Effekt (von 0,06 auf 0,12 mm), wie
ändert sich die benötigte Stichprobengröße? Halbiert man ihn (auf
0,03 mm)? Gib eine grobe Proportion an, keine exakten Zahlen.

Verdoppelt: ____________ Halbiert: ____________

**c)** Beim Einstiegstest der vorigen Klasse kam heraus, dass man keine
Aussage über die Teststärke gefunden hat. Welches Argument fehlte bei
„p = 0,03, also signifikant"? ____________________

---

## 2. Die beiden Fehlerarten

**a)** Fülle das Schema aus und gib für jede Zelle an, ob sie unter H0 oder
unter H1 eintritt:

| | Test sagt: „Unterschied" | Test sagt: „kein Unterschied" |
|---|---|---|
| **H0 ist wahr** (kein Unterschied) | | |
| **H0 ist falsch** (Unterschied da) | | |

**b)** Welche Zelle heißt „Fehler 1. Art", welche „Fehler 2. Art", und wie
heißen die zugehörigen Parameter? ____________________

**c)** Welcher der beiden Fehler ist in der Praxis <em>teurer</em>?
Begründe in 2 Sätzen aus Sicht eines Wareneingangs.

_________________________________________________

**d)** Erkläre in 2 Sätzen: Warum nützt <code>α = 0,05</code> gegen Fehler
1. Art, aber <strong>nichts</strong> gegen Fehler 2. Art?

_________________________________________________

---

## 3. Power berechnen — mit den echten Daten

Aus Lektion KM7-01: M1 gegen M3 mit 40 Messungen je Maschine, Differenz
0,0633 mm; M1 gegen M2 mit 40 Messungen, Differenz 0,0238 mm bei
Streuung 0,036 mm.

**a)** Berechne die Power beider Vergleiche:

```r
power.t.test(n = 40, delta = 0.0633, sd = 0.05)
power.t.test(n = 40, delta = 0.0238, sd = 0.036)
```

| Vergleich | Power | β = 1 − Power |
|-----------|-------|---------------|
| M1 vs. M3 | | |
| M1 vs. M2 | | |

**b)** Der M1-gegen-M2-Vergleich ergab <code>p = 0,005456</code> — er war
also signifikant. Was sagt die Power aus Aufgabe a) zusätzlich dazu, was
der p-Wert nicht sagt? ____________________

**c)** Rechne die Power des <em>gepaarten</em> Vergleichs (10 Paare,
Streuung der Differenzen 0,05 mm):

```r
power.t.test(n = 10, delta = 0.0633, sd = 0.05, type = "paired")
```

Power: ____________ Wie viel effizienter ist das gegenüber 40 ungepaarten
Vergleichen? ____________________

**d)** Warum ist bei <code>type = "paired"</code> der Wert für
<code>sd</code> nicht derselbe wie beim ungepaarten Test? Was steht
stattdessen im Output von R? ____________________

---

## 4. Die Planungsrichtung: n statt Power

**a)** Berechne die benötigte Stichprobengröße für 80 % Power bei
&sigma; = 0,05 mm:

```r
sapply(c(0.10, 0.08, 0.06, 0.04, 0.02, 0.01), function(d) {
  power.t.test(delta = d, sd = 0.05, power = 0.8)$n
})
```

| &delta; (mm) | n je Maschine (aufgerundet) |
|-------------|---------------------------|
| 0,10 | |
| 0,08 | |
| 0,06 | |
| 0,04 | |
| 0,02 | |
| 0,01 | |

**b)** Prüfe die Proportion aus Aufgabe 1b an deiner Tabelle: Ist
`n &prop; 1/&delta;&sup2;` erkennbar? Rechne für zwei Zeilen
`n · &delta;&sup2;` und vergleiche die Werte.

Zeile ______: n · &delta;&sup2; = ____________
Zeile ______: n · &delta;&sup2; = ____________

Schlussfolgerung: ____________________

**c)** Formuliere die Regel <code>n &prop; 1/&delta;&sup2;</code> mit eigenen
Worten: „Wenn ich den Effekt halbiere, dann …" ____________________

---

## 5. Power-Kurve zeichnen

**a)** Erzeuge die Power-Kurve für &delta; = 0,06 mm, &sigma; = 0,05 mm,
n von 5 bis 40 in 5er-Schritten:

```r
n_werte <- seq(5, 40, by = 5)
power_werte <- sapply(n_werte, function(n) {
  power.t.test(n = n, delta = 0.06, sd = 0.05)$power
})

ggplot(data.frame(n = n_werte, power = power_werte),
       aes(x = n, y = power)) +
  geom_line() +
  geom_hline(yintercept = 0.8, linetype = "dashed") +
  labs(x = "n je Maschine", y = "Power")
```

**b)** Trage die Werte ein und ergänze die n-Werte, bei denen die
Power 0,80 / 0,90 / 0,95 erreicht (zwischen deinen Stützstellen
interpolieren):

| n | 5 | 10 | 15 | 20 | 25 | 30 | 35 | 40 |
|---|----|----|----|----|----|----|----|----|
| Power | | | | | | | | |

n für Power 0,80: ____________ n für 0,90: ____________
n für 0,95: ____________

**c)** Zeichne dieselbe Kurve für &delta; = 0,03 mm (in einer anderen
Farbe). Wie weit muss n für 80 % Power hochgehen, gegenüber
&delta; = 0,06 mm? ____________________

---

## 6. Die Diskussionsfrage

Ein Kollege kommt mit folgendem Bericht:

> „Wir haben 2000 Teile je Maschine gemessen. Der Mittelwertunterschied
> beträgt 0,004 mm, p &lt; 0,0001. Der Prozess wird umgestellt."

**a)** Berechne die Power für genau diese Untersuchung — 2000 Teile je
Maschine, gesuchter Unterschied 0,004 mm, Streuung 0,05 mm:

```r
power.t.test(n = 2000, delta = 0.004, sd = 0.05)
```

Power: ____________ &nbsp; Wie viele Teile bräuchte man für 80 %?

```r
power.t.test(delta = 0.004, sd = 0.05, power = 0.8)$n
```

n: ____________

**b)** Ist die Feststellung des Kollegen statistisch angreifbar?
Formuliere deine Antwort in 3 Sätzen und nenne die <strong>eine Zahl</strong>,
die im Bericht fehlt (neben der Power).

_________________________________________________

**c)** Die Toleranz beträgt ± 0,15 mm. Der Drift von 0,004 mm ist wie viel
Prozent der Toleranzbreite? Ist er wirtschaftlich relevant, und was
würdest du dem Kollegen empfehlen — mit welchem Werkzeug aus dieser
Kursreihe würdest du es zeigen?

Anteil: ____________ Empfehlung: ____________________
Werkzeug: ____________________

---

## 7. Kapitel-Check (Navarro Kap. 13 + 16)

**a)** Nenne die fünf Argumente von `power.t.test()` und sag, welches
<strong>genau eine</strong> weggelassen werden muss, damit R rechnen kann.

_________________________________________________

**b)** Erkläre in 2 Sätzen, warum ein signifikantes Ergebnis ohne Angabe der
Power eine unvollständige Information ist. Verwende dabei den Begriff
<em>Fehler 2. Art</em>.

_________________________________________________

**c)** Welcher der beiden Fehler wird durch <strong>größere Stichproben</strong>
in besonderem Maße reduziert? Begründe mithilfe der Power-Kurve aus
Aufgabe 5.

_________________________________________________

**d)** In der Versuchsplanung gilt: „Ein Versuch ohne Wiederholungen
erkennt nichts." Rechne zur Veranschaulichung:

```r
power.t.test(n = 1, delta = 0.06, sd = 0.05)
```

Power: ____________ Erkläre in 2 Sätzen, warum das die zentrale
Begründung für Wiederholungen (Replikate) in der Versuchsplanung ist.

_________________________________________________
