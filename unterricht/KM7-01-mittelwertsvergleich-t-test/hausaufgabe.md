# Aufgabe KM7-01 — Mittelwertsvergleich: z-Test und t-Test

Name: _____________ &nbsp;&nbsp;&nbsp; Abgabe: _____________

**Lektüre:** Navarro, [Statistik für Human- und Sozialwissenschaftler](https://learningstatisticswithr.com/book/)
(Pflicht) — **Kap. 13, t-Tests**. Die Fragen in Aufgabe 4 beziehen sich auf
das Kapitel. Ergänzend NIST/SEMATECH e-Handbook, Kap. 7.

**Daten:** `assets/betriebsdaten.csv` — 120 Messungen, 3 Maschinen (M1–M3) ×
10 Chargen × 4 Teile, Sollmaß 10,00 mm, Toleranz ± 0,15 mm. Vier Messungen
fehlen (M1: drei, M2: eine).

> **Setup-Ritual:** Lege ein RStudio-Projekt `pmm-km7-01` an, speichere
> alles in `analyse.R` dort. Daten laden mit
> `read_csv(".../assets/betriebsdaten.csv")`.

---

## 1. Vorhersagen (ohne R — erst hinschreiben!)

**a)** Wie viele gültige Messungen hat jede Maschine?

```r
daten |> group_by(maschine) |>
  summarise(n = sum(!is.na(masse_mm)))
```

Vorhersage: ____________________

**b)** Welche Maschine hat den größten Abstand zwischen Mittelwert und
Sollmaß 10,00 mm? Um wie viele Hundertstel?

Vorhersage: ____________________

**c)** M1 und M2 unterscheiden sich um 0,024 mm im Mittelwert, die
Streuungen sind 0,032 mm und 0,040 mm. M1 und M3 unterscheiden sich um
0,062 mm bei 0,032 mm und 0,070 mm Streuung. **Welcher Vergleich fällt
statistisch leichter durch — und warum?** (2 Sätze, ohne Formel)

_________________________________________________

---

## 2. Der ungepaarte Vergleich

Vergleiche **M1 gegen M3** mit dem Welch-t-Test. Schreibe die beiden
Hypothesen auf, die getestet werden:

- H0: _________________________________________________
- H1: _________________________________________________

```r
vergleich <- daten |> filter(maschine %in% c("M1", "M3"))
t.test(masse_mm ~ maschine, data = vergleich)
```

- t-Wert: ____________ &nbsp; Freiheitsgrade: ____________
- p-Wert: ____________
- 95-%-Konfidenzintervall der Differenz: ____________________

**Lies das Intervall in ganzen Sätzen.** M3 liegt um wie viele mm
*mindestens* über M1 — und um wie viele mm *höchstens*? Vergleiche mit der
Toleranz von ± 0,15 mm: Passt der gesamte Intervall in die Toleranz, oder
ragt er hinaus?

_________________________________________________

---

## 3. Der gepaarte Vergleich

M3 und M1 fertigen dieselben 10 Chargen. Baue die Chargenmittel und teste
**gepaart**:

```r
chargen <- daten |>
  group_by(maschine, charge) |>
  summarise(mm = mean(masse_mm, na.rm = TRUE), .groups = "drop") |>
  pivot_wider(names_from = maschine, values_from = mm)

chargen$M3 - chargen$M1
```

**a)** Wie viele der 10 Differenzen sind positiv? ____________
Wie viele sind negativ? ____________

**b)**

```r
t.test(chargen$M3, chargen$M1, paired = TRUE)
```

- t-Wert: ____________ &nbsp; Freiheitsgrade: ____________
- p-Wert: ____________

**c)** Warum hat der gepaarte Test hier **9** Freiheitsgrade, obwohl
er mit den Daten von 37 bzw. 40 Messungen arbeitet? (2 Sätze)

_________________________________________________

**d)** Rechne den t-Wert von Hand nach — einmal über die **Differenzen**,
einmal über die **Messwerte** mit den Mittelwerten aus Aufgabe 1:

- t über die Differenzen: ____________
- t über die Messwerte (Mittelwert-Differenz / Streuung): ____________

Welcher Wert stimmt mit R überein, und was lernst du daraus über die
gepaarte Formel?

_________________________________________________

---

## 4. Kapitel-Check (Navarro Kap. 13)

**a)** Erkläre in 2–3 Sätzen, warum man einen t-Test verwendet, wenn &sigma;
der Grundgesamtheit *nicht* bekannt ist. Was macht der t-Test mit dem
geschätzten &sigma;, das der z-Test nicht macht?

_________________________________________________

**b)** Ein Kollege sagt nach einem Test mit `p = 0,42`: „Die beiden
Maschinen sind also gleich gut." Hat er recht? Begründe mit dem Konzept
der Fehler 1. und 2. Art.

_________________________________________________

**c)** Nenne drei Situationen aus der Fertigung, in denen ein **gepaarter**
t-Test der richtige ist, und jeweils einen Grund, warum die Werte
paarweise zusammengehören.

1. _________________________________________________
2. _________________________________________________
3. _________________________________________________

---

## 5. Die Frage hinter der Aufgabe

M1 und M2 sind sich im Mittel um 0,024 mm unterschiedlich — der
ungepaarte Test liefert `p = 0,005456`, also „signifikant".

**a)** Wäre das eine Basis für eine Prozessänderung? Begründe in 3 Sätzen,
wobei du die Toleranz von ± 0,15 mm und den Sinn von `p` einbeziehst.

_________________________________________________

**b)** Erkläre den Unterschied zwischen diesen zwei Sätzen:

- „M1 und M2 unterscheiden sich signifikant."
- „M1 und M2 unterscheiden sich *wirtschaftlich* nicht relevant."

Warum sind das zwei verschiedene Aussagen? Welche ist die Stärke des
Tests, welche seine Grenze?

_________________________________________________

**c)** Wenn du der 0,024-mm-Unterschied *doch* statistisch belegen
musst: Welche Stichprobengröße bräuchtest du ungefähr, statt der 40 pro
Maschine? Du musst nicht selbst rechnen — begründe die Richtung:
mehrt man die Zahl der Teile oder die Zahl der Chargen, und warum ist
eine davon wirksamer?

_________________________________________________
