# Aufgabe SA-03 — Daten einlesen & deskriptive Statistik

Name: _____________ &nbsp;&nbsp;&nbsp; Abgabe: _____________

**Lektüre:** R4DS 2e, [Kap. 7 Data import](https://r4ds.hadley.nz/data-import.html)
und [Kap. 10 Exploratory data analysis](https://r4ds.hadley.nz/EDA.html) —
lies sie zuerst. Aufgabe 1 und 2 bauen direkt darauf auf.

---

## 1. CSV einlesen (Kap. 7)

Erzeuge in deinem UE-3-Projekt die Datei `messwerte.csv` mit diesem Inhalt
(Sollwert 10,0 mm, Charge 47):

```csv
mass_mm
9.92
10.03
9.98
10.11
10.05
9.87
10.02
10.09
9.95
10.04
10.01
9.99
10.06
10.08
9.96
10.02
10.13
9.94
10.05
9.97
```

Lies sie in R ein und führe das Erstes-Ritual aus:

```r
messwerte <- read_csv("messwerte.csv")
glimpse(messwerte)
summary(messwerte)
```

- Welchen Typ hat `mass_mm` laut `glimpse()`? ________
- Min und Max laut `summary()`? ________ / ________

---

## 2. EDA mit Kennzahlen (Kap. 10)

Berechne Mittelwert, Median, Standardabweichung und IQR:

```r
messwerte |>
  summarise(
    n     = n(),
    mitte = mean(mass_mm),
    mitte_med = median(mass_mm),
    streu = sd(mass_mm),
    iqr   = IQR(mass_mm)
  )
```

- Mittelwert: ________ &nbsp; Median: ________ &nbsp; sd: ________ &nbsp; IQR: ________
- Liegt der Prozess mittig am Sollwert 10,0? Begründe mit zwei Kennzahlen
  (1–2 Sätze): _________________________________________________
- Schwanz-Regel: Liegen `mean` und `median` nahe beieinander oder zieht
  ein Schwanz einen der beiden? Was folgt für die Form der Verteilung?
  (1 Satz): _________________________________________________

---

## 3. Das Bild dazu

Baue das Histogramm aus der Stunde nach (binwidth = 0.05, Sollwert-Linie bei 10):

```r
ggplot(messwerte, aes(x = mass_mm)) +
  geom_histogram(binwidth = 0.05, fill = "grey70", color = "white") +
  geom_vline(xintercept = 10, linetype = "dashed") +
  labs(x = "Maß (mm)", y = "Anzahl Teile")
```

- Was siehst du — glockenförmig, verschoben oder zweiteilg? _________________
- Teste auch `binwidth = 0.1` und `binwidth = 0.02`. Welche der drei
  Einstellungen erzählt die ehrlichste Geschichte, und warum?

  _________________________________________________

---

## 4. Kovariation: Boxplots vergleichen

Betrachte `body_mass_g` je `species` (Datensatz `penguins`):

```r
ggplot(penguins, aes(x = species, y = body_mass_g)) +
  geom_boxplot()
```

- Welche Art hat den höchsten Median? ________ &nbsp; die größte Streuung? ________
- Wie erkennst du Streuung am Boxplot (statt an Zahlen)? Erkläre mit
  Q1/Q3/IQR in einem Satz: _________________________________________________
- Robustheit: Welches Streuungsmaß überlebt einen Ausreißer besser —
  `sd()` oder `IQR()`? Und warum (Position in der sortierten Liste vs.
  quadrierte Abweichung)? (1–2 Sätze):
  _________________________________________________

---

## 5. Brücke zu KM 8: ±2 sd — erst vorhersagen, dann prüfen

Die Eselsbrücke: Bei glockenförmiger Verteilung liegen grob 68 % der
Werte innerhalb ±1 sd und 95 % innerhalb ±2 sd.

**a) Vorhersage ohne R:** Wie viele der 20 `messwerte`-Teile dürften
nach dieser Faustregel *außerhalb* von ±2 sd liegen? ________

Prüfe mit R (zwei Wege sind erlaubt):

```r
sd_m <- sd(messwerte$mass_mm)
mean_m <- mean(messwerte$mass_mm)
sum(abs(messwerte$mass_mm - mean_m) > 2 * sd_m)
```

- Tatsächlich außerhalb: ________ &nbsp; Passt die Faustregel hier grob?
  ________

**b) Ausreißer-Experiment:** Hänge an die 20 Messwerte einen Ausreißer
an — ein Teil, das beim Einlegen verschoben wurde:

```r
messwerte_x <- c(messwerte$mass_mm, 10.8)
```

Berechne `mean()`, `median()`, `sd()` und `IQR()` — einmal auf den
Original-Daten, einmal auf `messwerte_x`:

- Mittelwert vorher/nachher: ________ / ________ &nbsp;
  Median: ________ / ________ &nbsp;
  sd: ________ / ________ &nbsp; IQR: ________ / ________
- Welche Maße rücken kaum? Werde die Faustregel aus der Lektion dafür
  in einem Satz: _________________________________________________

---

## 6. Vorhersagen (ohne R)

**a)**

```r
messwerte <- read_csv("messwerte_falsch.csv")   # Werte stehen als "10,05" (Komma!)
glimpse(messwerte)
```

Vorhersage: Welchen Typ hat `mass_mm`? ________ &nbsp; R-Ergebnis: ________

**b)**

```r
messwerte <- c(9.98, 10.02, NA, 10.05)
sd(messwerte)
sd(messwerte, na.rm = TRUE)
```

Vorhersage: ________ &nbsp; R-Ergebnis: ________ / ________

---

## 7. Kapitel-Check (Kap. 7 + 10)

- Kap. 7 empfiehlt, beim Import die Datentypen zu **prüfen**. Welcher deiner
  Befehle aus Aufgabe 1 macht genau das? ________ &nbsp; Kurz warum:

  _________________________________________________

- Kap. 10 unterscheidet **explorativ** und **bestätigend** (confirmatory).
  In einen Satz: Was darf eine EDA-verschobene Vermutung noch nicht behaupten?

  _________________________________________________
