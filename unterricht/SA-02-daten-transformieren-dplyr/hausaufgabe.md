# Hausaufgabe UE 2 — Daten transformieren & Workflow

Name: _____________ &nbsp;&nbsp;&nbsp; Abgabe: _____________

**Lektüre:** R4DS 2e, [Kap. 3 Data transformation](https://r4ds.hadley.nz/data-transform.html)
(Pflicht) sowie [Kap. 4 Code style](https://r4ds.hadley.nz/workflow-style.html) und
[Kap. 6 Scripts and projects](https://r4ds.hadley.nz/workflow-scripts.html) —
Aufgabe 5 bezieht sich auf Kapitel 4 und 6.

---

## 1. Vorhersagen (ohne R — erst hinschreiben!)

**a)**

```r
penguins |> filter(species == "Gentoo") |> nrow()
```

Vorhersage (Zeilenzahl): ________
<br>R-Ergebnis: ________

**b)**

```r
penguins |> select(species == "Gentoo") |> nrow()
```

Vorhersage: Was passiert hier überhaupt? _________________________________
<br>R-Ergebnis: _________________________________

**c)**

```r
penguins |> summarise(gram = mean(body_mass_g))
```

Vorhersage: ________ &nbsp; Warum ist das Ergebnis so?

_________________________________________________
<br>R-Ergebnis: ________

---

## 2. Pipe bauen: schwere Gentoo

Schreibe eine Pipe, die alle Gentoo mit `body_mass_g > 5000` zählt und ihre
drei schwersten mit `species`, `island`, `body_mass_g` zeigt:

```r
penguins |>
  filter(_____) |>
  _____(desc(body_mass_g)) |>
  head(3)
```

- Wie viele Gentoo sind es? ________

---

## 3. Die Antwort-Tabelle nachbauen

Baue die Tabelle aus der Stunde nach — pro `species` und `island`:
Anzahl, Mittelwert und Standardabweichung von `body_mass_g`:

```r
penguins |>
  group_by(_____) |>
  summarise(
    n    = _____,
    gram = _____,
    sd_g = _____
  )
```

- Welche Gruppe ist die schwerste? _______________
- Welche Gruppe hat die kleinste Streuung? _______________

---

## 4. mutate mit Betriebskontext

Eine Messreihe kam in Gramm, die Norm will Kilogramm mit **einer** Nachkommastelle:

```r
penguins |>
  mutate(kg = round(body_mass_g / 1000, 1)) |>
  select(species, kg) |>
  head(3)
```

- Was passiert mit dem ersten `NA`-Pinguin in dieser Spalte? _________________
- Warum ist `mutate()` hier besser, als die Zahl „im Kopf" zu dividieren
  (2 Sätze)? _________________________________________________

---

## 5. Kapitel-Check (Kap. 4 + 6)

**a)** Nenne zwei Code-Stil-Regeln aus Kap. 4, die in Aufgabe 2 und 3 von dir
angewendet wurden — und jeweils ein Beispiel aus deinem eigenen Code:

1. _________________________________________________
2. _________________________________________________

**b)** Lege ein RStudio-**Projekt** namens `pmm-ue02` an, speichere dein Skript
darin als `analyse.R` und habe alle Hausaufgaben-Pipes in diesem Skript.
Führe das Skript mit `Ctrl + Shift + S` komplett aus — gibt es eine
Fehlermeldung? Wenn ja: was sagt sie?

Fehlermeldung (falls ja): _________________________________
