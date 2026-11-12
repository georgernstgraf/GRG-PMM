# Aufgabe KM7-06 — Strompreise beschreiben

**Lektüre:** Navarro, [Learning Statistics with R](https://learningstatisticswithr.com/09-probability.html)
(englisch) — **Kap. 9, Wahrscheinlichkeit und Verteilungen**. Ergänzend
NIST/SEMATECH e-Handbook,
[Kap. 1.3.5.11](https://www.itl.nist.gov/div898/handbook/eda/section3/eda35b.htm)
(Schiefe und Kurtosis) und
[Kap. 1.3.6.6](https://www.itl.nist.gov/div898/handbook/eda/section3/eda366.htm)
(Galerie der Verteilungen).

**Voraussetzung:** [SA-03](../SA-03-daten-einlesen-deskriptiv/lesson.html)
(Histogramm, Lagemaße, Streuungsmaße) und
[KM6-01](../KM6-01-boxplot-und-grafikwahl/lesson.html) (Boxplot).

> **Setup-Ritual:** RStudio-Projekt `2026-11-13_strompreise`, Skript
> `analyse.R`. **Daten:** `daten/strompreise-eu-haushalte.csv` aus dem
> Lektionsordner nach `data/` kopieren. Eurostat `nrg_pc_204`, CC BY 4.0 —
> Namensnennung „Eurostat (nrg_pc_204)" gehört in die README.

---

## Beispiel 1: Der Schnitt

### 1a. Der Datensatz

```r
library(tidyverse)

strom <- read_csv("data/strompreise-eu-haushalte.csv")
glimpse(strom)
```

```
Rows: 12,771
Columns: 10
$ geo           <chr> "AL", "AL", "AL", …
$ geo_name      <chr> "Albania", …
$ siec          <chr> "E7000", …
$ nrg_cons      <chr> "KWH_GE15000", …
$ unit          <chr> "KWH", …
$ tax           <chr> "I_TAX", …
$ currency      <chr> "EUR", …
$ jahr_halbjahr <chr> "2025-S1", …
$ zeitpunkt     <int> 2025, …
$ preis         <dbl> 0.1156, 0.1175, …
```

### 1b. Vorhersagen (ohne R — erst hinschreiben!)

1. Wie viele Zeilen hat der Datensatz, wenn er ein vollständiges Raster aus
   43 Ländern, 11 Verbrauchsbändern, 3 Steuerarten, 3 Währungen und
   3 Halbjahren ist? Rechne das Produkt aus.
2. Wie viele Zeilen haben keinen Preis (`NA`)? Schätze zuerst, dann prüfe
   mit `sum(is.na(strom$preis))`.
3. Du filterst nur auf das Band `KWH2500-4999` und die Währung `EUR`, nicht
   auf die Steuerart. Wie viele Zeilen bleiben? Warum nicht 43?

### 1c. Vier Filter, vier Entscheidungen

```r
haushalt <- strom |>
  filter(nrg_cons      == "KWH2500-4999") |>
  filter(tax           == "X_TAX") |>
  filter(currency      == "EUR") |>
  filter(jahr_halbjahr == "2025-S2") |>
  filter(!is.na(preis))
```

Führe die Filter **einzeln** aus und notiere nach jedem Schritt `nrow()`:

| Schritt | Filter | Zeilen |
|---------|--------|--------|
| 0 | — | 12.771 |
| 1 | `nrg_cons == "KWH2500-4999"` | |
| 2 | `tax == "X_TAX"` | |
| 3 | `currency == "EUR"` | |
| 4 | `jahr_halbjahr == "2025-S2"` | |
| 5 | `!is.na(preis)` | |

1. Begründe jeden der vier inhaltlichen Filter in **einem Satz** — warum
   genau dieser Wert und kein anderer?
2. Welche drei Länder fallen in Schritt 5 heraus?

```r
strom |>
  filter(nrg_cons == "KWH2500-4999", tax == "X_TAX",
         currency == "EUR", jahr_halbjahr == "2025-S2",
         is.na(preis)) |>
  select(geo, geo_name)
```

3. Was wäre an einem Mittelwert falsch, der die Steuerarten mischt? Rechne
   beide Varianten und vergleiche:

```r
strom |>
  filter(nrg_cons == "KWH2500-4999", currency == "EUR",
         jahr_halbjahr == "2025-S2") |>
  filter(!is.na(preis)) |>
  summarise(n = n(), mittel = mean(preis))

strom |>
  filter(nrg_cons == "KWH2500-4999", currency == "EUR",
         jahr_halbjahr == "2025-S2") |>
  filter(!is.na(preis)) |>
  group_by(tax) |>
  summarise(n = n(), mittel = mean(preis))
```

---

## Beispiel 2: Kennzahlen

### 2a. Die vier Zahlen

```r
haushalt |>
  summarise(n      = n(),
            mittel = mean(preis),
            median = median(preis),
            sd     = sd(preis),
            iqr    = IQR(preis),
            min    = min(preis),
            max    = max(preis))
```

1. Trag die Werte in die Tabelle ein.
2. Mittelwert und Median liegen fast gleichauf. Was heißt das über die
   Form der Verteilung — und was heißt es **nicht**?
3. Der teuerste Wert ist rund sechsmal so groß wie der billigste. Warum
   ist der Mittelwert trotzdem nur knapp über dem Median?
4. Berechne die Spannweite und vergleiche sie mit dem IQR. Was sagt der
   Unterschied über die Ränder der Verteilung?

### 2b. Wo steht Österreich?

```r
haushalt |>
  arrange(preis) |>
  mutate(rang = row_number()) |>
  filter(geo == "AT") |>
  select(geo_name, preis, rang)

haushalt |> filter(geo != "AT") |> summarise(mittel = mean(preis))
```

1. Welchen Rang hat Österreich, und wie viele Länder sind insgesamt in der
   Auswahl?
2. Wie viel Prozent liegt Österreich über dem Mittel der übrigen Länder?
   Rechne von Hand, dann prüfe:
   `(0.2539 / 0.1711 - 1) * 100`.
3. Welche Länder liegen über Österreich? Nenne sie mit
   `filter(preis > 0.2539)`.

### 2c. sd oder IQR?

1. Die Standardabweichung ist 0,0701. Formuliere einen deutschen Satz, in
   dem diese Zahl vorkommt und der auch außerhalb des Unterrichts
   verständlich ist.
2. Der IQR ist 0,0974. Formuliere denselben Satz für den IQR.
3. Welche der beiden Zahlen würdest du in einem Zeitungsartikel
   verwenden — und warum?

---

## Beispiel 3: Normalverteilung

### 3a. Der QQ-Plot

```r
qqnorm(haushalt$preis)
qqline(haushalt$preis)
```

1. Beschreibe in zwei Sätzen, was du siehst: Liegen die Punkte auf der
   Geraden, oder biegen sie ab? An welchem Ende?
2. Welcher Punkt liegt am weitesten von der Linie entfernt? Prüfe mit
   `slice_max(preis, n = 1)`.
3. Warum zeichnet man einen QQ-Plot und liest nicht einfach den p-Wert
   des Shapiro-Tests?

### 3b. Der Shapiro-Wilk-Test

```r
shapiro.test(haushalt$preis)
```

1. Formuliere H0 und H1 **in Worten** für diesen Test. Achtung: Sie sind
   umgekehrt zu den Tests aus KM7-01 und KM7-02.
2. Was bedeutet `p = 0,3828` — und was bedeutet es **nicht**? Schreib
   beide Sätze auf.
3. Wird H0 verworfen? Was folgt daraus für den t-Test in der nächsten
   Stunde?

### 3c. Die Schiefe

```r
schiefe <- function(x) mean((x - mean(x))^3) / sd(x)^3
schiefe(haushalt$preis)
```

1. Welchen Wert bekommst du? Ist die Verteilung links- oder rechtsschief?
2. Was bedeutet ein negativer Wert? Überlege, bevor du nachschlägst.
3. Vergleiche die drei Prüfungen (Histogramm, QQ-Plot, Schiefe). Sagen
   sie dasselbe, oder widersprechen sie sich?

### 3d. Was das für den Test heißt

1. Der t-Test setzt Normalverteilung voraus. **Was** genau muss
   normalverteilt sein — die Länderpreise, die Differenz der Mittelwerte,
   oder beides?
2. Du willst Österreich gegen den Rest der Länder testen. Welche
   Verteilung prüfst du dann mit `shapiro.test()`?
3. Bei 40 Werten ist der Shapiro-Test nicht sehr scharf. Was heißt das für
   die Aussagekraft eines `p = 0,38`?

---

## Zwischenaufgabe — dein eigenes R-Projekt

**Abgabe:** Commit in deinem PMM-Repo, **bis 2026-11-20**.
**Pfad:** genau `<dein-repo>/2026-11-13_strompreise/`.

```
2026-11-13_strompreise/
├── 2026-11-13_strompreise.Rproj
├── data/
│   └── strompreise-eu-haushalte.csv
├── analyse.R
├── output/
│   └── histogramm.png
└── README.md
```

**Pflichtinhalt:**

1. **Ein anderer Schnitt als in der Stunde.** Wähle eine Kombination aus
   Verbrauchsband, Steuerart und Halbjahr, die wir nicht verwendet haben
   (`KWH2500-4999` / `X_TAX` / `2025-S2` ist vergeben). Begründe die Wahl
   in **einem Satz** in der README.
2. **Kennzahlen:** `n`, `mean`, `median`, `sd`, `IQR`, `min`, `max` — als
   Tabelle im Skript ausgegeben.
3. **Histogramm** nach `output/histogramm.png`, per `ggsave()` im Skript
   erzeugt (kein Screenshot).
4. **Normalverteilungs-Prüfung:** `qqnorm()`/`qqline()` **und**
   `shapiro.test()`.
5. **README.md** mit drei Absätzen:
   - deine Frage („Wie hoch ist … in …?")
   - dein Befund in Zahlen
   - ein Satz: „Die Verteilung ist (nicht) normalverteilt, weil …"
6. **Die Frage notieren**, die du in KM7-07 testen willst.

**Bewertungskriterien:** Der Schnitt ist begründet · die Zahlen stimmen ·
der Plot entsteht im Skript · die README beantwortet die eigene Frage in
verständlichem Deutsch · die Quelle (Eurostat, CC BY 4.0) ist genannt.

**Kein Screenshot, keine kopierte Konsolenausgabe als „Ergebnis".**

---

## Beispiel 4: Selbsttest im WÜ-Format

Acht Fragen, vier Optionen, **0 bis 4 richtig**. Erst alle Antworten
ankreuzen, dann die Musterlösung lesen.

**4.1** Der Datensatz hat 12.771 Zeilen. Warum ist die Zeilenzahl keine
Aussage über die Menge der Information?

- [ ] Weil viele Zeilen keinen Preis enthalten
- [ ] Weil sie das Produkt aus 43 Ländern, 11 Bändern, 3 Steuerarten, 3 Währungen und 3 Halbjahren ist
- [ ] Weil dieselbe Zeile mehrfach vorkommt
- [ ] Weil Eurostat die Daten doppelt meldet

**4.2** Du filterst auf `KWH2500-4999` und `EUR`, aber nicht auf die
Steuerart. Was gilt?

- [ ] Der Mittelwert ist trotzdem korrekt, weil `mean()` die Gruppen trennt
- [ ] Es bleiben 120 Zeilen — dreimal so viele wie Länder
- [ ] Der Mittelwert mischt drei inhaltlich verschiedene Preise
- [ ] R warnt vor dem Filtern

**4.3** Nach `!is.na(preis)` bleiben 40 statt 43 Länder. Welche Aussagen
sind richtig?

- [ ] Island, Ukraine und das Vereinigte Königreich fehlen
- [ ] Die drei Länder sind zufällig ausgefallen
- [ ] Die fehlenden Länder haben für dieses Band keinen Wert gemeldet
- [ ] R hat die Zeilen automatisch entfernt

**4.4** Mittelwert 0,1732, Median 0,1719. Welche Aussagen stimmen?

- [ ] Die Verteilung ist annähernd symmetrisch
- [ ] Die Streuung ist klein
- [ ] Der Mittelwert wird kaum von Ausreißern gezogen
- [ ] Die Verteilung ist stark linksschief

**4.5** Was sagt die Standardabweichung von 0,0701 aus?

- [ ] Die Länder liegen im Schnitt etwa 7 Cent vom Mittelwert entfernt
- [ ] 70 % der Länder liegen innerhalb von 7 Cent
- [ ] Der teuerste und der billigste Preis liegen 7 Cent auseinander
- [ ] Die Verteilung ist normalverteilt

**4.6** `shapiro.test()` liefert `p = 0,3828`. Welche Aussagen sind
richtig?

- [ ] H0 lautet: die Daten sind normalverteilt
- [ ] H0 wird verworfen
- [ ] Es gibt keinen Hinweis gegen die Normalverteilung
- [ ] Die Daten sind zu 38 % normalverteilt

**4.7** Der QQ-Plot zeigt Punkte, die an beiden Enden von der Geraden
abbiegen. Was heißt das?

- [ ] Die Verteilung weicht an den Rändern von der Normalverteilung ab
- [ ] Die Stichprobe ist zu klein
- [ ] Die Werte sind fehlerhaft eingegeben
- [ ] Der Mittelwert ist falsch berechnet

**4.8** Du willst zwei Gruppen mit dem t-Test vergleichen. Wo prüfst du
die Normalverteilung? (Es kann auch keine Antwort richtig sein.)

- [ ] Am gesamten Datensatz ohne Gruppentrennung
- [ ] In jeder Gruppe getrennt
- [ ] Der t-Test prüft das selbst
- [ ] Gar nicht, weil der Test robust ist

### Musterlösung

| Frage | Lösungsmenge | Kurzbegründung |
|---|---|---|
| 4.1 | 2 | 43 · 11 · 3 · 3 · 3 = 12.771; dieselbe Information steht in vielen Zeilen. |
| 4.2 | 2, 3 | 120 Zeilen; der Mittelwert mischt I_TAX, X_VAT und X_TAX — drei verschiedene Fragen. |
| 4.3 | 1, 3 | IS, UA und UK melden das Band nicht; das ist systematisch, nicht zufällig. R entfernt NA nie von selbst. |
| 4.4 | 1, 3 | Fast gleiche Lage von Mittelwert und Median spricht für Symmetrie; über die Streuung sagt der Vergleich nichts. |
| 4.5 | 1 | sd ist der typische Abstand in EUR. „70 %" wäre eine Faustregel für ±1 sd, nicht für die Zahl selbst. |
| 4.6 | 1, 3 | H0 = normalverteilt; p = 0,38 verwirft sie nicht — das ist kein Beweis für Normalität. |
| 4.7 | 1 | Abbiegende Enden zeigen Schiefe oder schwere Ränder, nicht Datenfehler. |
| 4.8 | 2 | Die Annahme betrifft die Verteilung innerhalb der Gruppen (bei gepaarten Daten: der Differenzen). |
