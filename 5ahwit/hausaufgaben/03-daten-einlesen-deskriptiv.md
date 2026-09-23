> **Kohortenfassung 5AHWIT** — adaptiert aus dem Master
> `unterricht/HWIT-PMM/03-daten-einlesen-deskriptiv/hausaufgabe.md`
> (dort: eigene `messwerte.csv`). Hier arbeitest du mit den echten
> Betriebsdaten aus dem Repo: `unterricht/HWIT-PMM/assets/betriebsdaten.csv`.

# Hausaufgabe UE 3 — Daten einlesen & deskriptive Statistik

Name: _____________ &nbsp;&nbsp;&nbsp; Abgabe: _____________

**Lektüre:** R4DS 2e, [Kap. 7 Data import](https://r4ds.hadley.nz/data-import.html)
und [Kap. 10 Exploratory data analysis](https://r4ds.hadley.nz/EDA.html) —
lies sie zuerst. Aufgabe 1 und 2 bauen direkt darauf auf.

**Daten:** Öffne dein RStudio-Projekt (Ordner des geklonten GRG-PMM-Repos)
und lies die Betriebsdaten ein:

```r
library(tidyverse)
fertigung <- read_csv("unterricht/HWIT-PMM/assets/betriebsdaten.csv")
```

---

## 1. Einlesen + erstes Ritual (Kap. 7)

```r
glimpse(fertigung)
summary(fertigung)
```

- Wie viele Zeilen (Teile)? ______ &nbsp; Wie viele Spalten? ______
- Welchen Typ hat `maschine`? ________ &nbsp; `masse_mm`? ________
- Wie viele `NA` stehen in `masse_mm`? ________

---

## 2. EDA mit Kennzahlen (Kap. 10)

```r
fertigung |>
  summarise(
    n     = n(),
    mitte = mean(masse_mm, na.rm = TRUE),
    mitte_med = median(masse_mm, na.rm = TRUE),
    streu = sd(masse_mm, na.rm = TRUE),
    iqr   = IQR(masse_mm, na.rm = TRUE)
  )
```

- Mittelwert: ________ &nbsp; Median: ________ &nbsp; sd: ________ &nbsp; IQR: ________
- Liegt der Prozess **insgesamt** mittig am Sollwert 10,00? Begründe mit
  zwei Kennzahlen (1–2 Sätze): _________________________________________

---

## 3. Das Bild dazu

Baue das Histogramm aus der Stunde nach (binwidth = 0.05, Sollwert-Linie
bei 10):

```r
ggplot(fertigung, aes(x = masse_mm)) +
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

```r
ggplot(fertigung, aes(x = maschine, y = masse_mm)) +
  geom_boxplot()
```

- Welche Maschine hat den höchsten Median? ________ &nbsp; die größte
  Streuung? ________
- Wie erkennst du Streuung am Boxplot (statt an Zahlen)? Erkläre mit
  Q1/Q3/IQR in einem Satz: _________________________________________________

---

## 5. Transfer: Ausschuss je Maschine

Toleranz ±0,15 mm um den Sollwert 10,00. Zähle den Ausschuss **je
Maschine** (zwei Verben aus Lektion 02 — du weißt welche):

```r
fertigung |>
  group_by(_____) |>
  summarise(ausschuss = _____)
```

- Welcher Maschine ordnest du die 6 Ausschuss-Teile zu? ________
- Deine Empfehlung für die Schichtbesprechung (2 Sätze):
  _________________________________________________

---

## 6. Vorhersagen (ohne R)

**a)**

```r
messwerte <- read_csv("messwerte_komma.csv")   # Werte stehen als "10,05" (Komma!)
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
