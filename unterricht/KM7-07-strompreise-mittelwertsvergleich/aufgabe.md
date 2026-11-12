# Aufgabe KM7-07 — Österreich testen

**Lektüre:** Navarro, [Learning Statistics with R](https://learningstatisticswithr.com/13-ttest.html)
(englisch) — **Kap. 13, t-Tests**. Ergänzend NIST/SEMATECH e-Handbook,
[Kap. 7](https://www.itl.nist.gov/div898/handbook/ppc/ppc.htm) (Product and
Process Comparisons).

**Voraussetzung:** [KM7-01](../KM7-01-mittelwertsvergleich-t-test/lesson.html)
(t-Test, gepaart/ungepaart) und
[KM7-06](../KM7-06-strompreise-verteilung/lesson.html) (Verteilung
beschreiben, Normalverteilung prüfen).

> **Setup:** Du arbeitest im Projekt `2026-11-13_strompreise` aus KM7-06.
> Skript `analyse.R` wird **erweitert**, nicht ersetzt. Datensatz:
> `data/strompreise-eu-haushalte.csv` (Eurostat `nrg_pc_204`, CC BY 4.0).

---

## Beispiel 1: Der Einstichproben-t-Test

### 1a. Die Hypothesen — erst hinschreiben

Ausgangslage aus KM7-06: Österreich zahlt **0,2539 EUR/kWh**, das Mittel
der übrigen 39 Länder liegt bei **0,1711 EUR/kWh**.

1. Formuliere H0 und H1 in Worten. Achte darauf, dass H0 die
   <em>langweilige</em> Behauptung ist.
2. Warum nimmt man Österreich aus der Vergleichsgruppe heraus? Was würde
   schiefgehen, wenn man es drin ließe?
3. Ist das ein ein- oder zweiseitiger Test? Begründe anhand der
   Fragestellung — nicht anhand des Ergebnisses.

### 1b. Von Hand rechnen

```r
haushalt <- strom |>
  filter(nrg_cons == "KWH2500-4999", tax == "X_TAX",
         currency == "EUR", jahr_halbjahr == "2025-S2") |>
  filter(!is.na(preis))

rest <- haushalt |> filter(geo != "AT")

n      <- nrow(rest)
mittel <- mean(rest$preis)
s      <- sd(rest$preis)
```

Trag die Werte ein und rechne den Rest von Hand:

| Größe | Formel | Wert |
|-------|--------|------|
| n | `nrow(rest)` | |
| Mittelwert | `mean(rest$preis)` | |
| Streuung | `sd(rest$preis)` | |
| Standardfehler | `s / sqrt(n)` | |
| t | `(mittel - 0.2539) / se` | |
| df | `n - 1` | |

1. Wie groß ist der Zähler (der Effekt) in Cent?
2. Wie oft passt der Standardfehler in den Effekt?
3. Warum ist der t-Wert negativ — und was bedeutet das Vorzeichen
   <em>nicht</em>?

### 1c. In R

```r
t.test(rest$preis, mu = 0.2539)
```

1. Vergleiche jeden Wert mit deiner Handrechnung. Weicht etwas ab?
2. Wie viele Länder liegen unter Österreichs Preis?
   `sum(rest$preis < 0.2539)`
3. Welche Länder liegen darüber?
   `rest |> filter(preis > 0.2539) |> select(geo_name, preis) |> arrange(desc(preis))`

### 1d. Den p-Wert deuten

Der p-Wert ist `6.94e-09`. Übersetze ihn in **einen** deutschen Satz, der
mit „Wenn …" beginnt und mit einer Konsequenz endet.

Prüfe dann diese vier Aussagen — welche stimmen, welche nicht?

| Aussage | stimmt / stimmt nicht |
|---------|----------------------|
| Österreichs Strompreis unterscheidet sich vom Mittel der anderen Länder | |
| Die Wahrscheinlichkeit, dass H0 wahr ist, beträgt 0,0000007 % | |
| Der Unterschied ist wirtschaftlich relevant | |
| In 99,9999993 % der Fälle wäre der Effekt reproduzierbar | |

---

## Beispiel 2: Effektgröße und Konfidenzintervall

### 2a. Cohen's d

```r
d <- (0.2539 - mean(rest$preis)) / sd(rest$preis)
d
```

1. Welchen Wert bekommst du?
2. Was bedeutet er in Worten — ohne die Zahl zu wiederholen?
3. Ab welchem Wert spricht man üblicherweise von einem großen Effekt?
   Recherchiere und gib die Quelle an.

### 2b. Das Konfidenzintervall

```r
t.test(rest$preis, mu = 0.2539)$conf.int
```

1. Gib die untere und obere Grenze an.
2. Für **was** ist dieses Intervall das Konfidenzintervall — für einzelne
   Länderpreise oder für den Mittelwert?
3. Liegt 0,2539 innerhalb oder außerhalb? Was folgt daraus — und wie hängt
   das mit dem p-Wert zusammen?
4. Formuliere den Befund in einem Satz, in dem **kein** p-Wert vorkommt.

---

## Beispiel 3: Der Gegenfall — gepaarte Bänder

Jetzt eine andere Frage: Zahlt ein Haushalt mit sehr hohem Verbrauch pro
Kilowattstunde weniger als einer mit sehr niedrigem?

### 3a. Die Daten vorbereiten

```r
paare <- strom |>
  filter(tax == "X_TAX", currency == "EUR",
         jahr_halbjahr == "2025-S2",
         nrg_cons %in% c("KWH_LT1000", "KWH_GE15000")) |>
  select(geo, geo_name, nrg_cons, preis) |>
  pivot_wider(names_from = nrg_cons, values_from = preis) |>
  filter(!is.na(KWH_LT1000), !is.na(KWH_GE15000))
```

1. Wie viele Paare bleiben übrig? Warum nicht 40?
2. Warum ist das ein **gepaarter** Fall und kein ungepaarter? Was ist die
   „Einheit", die zweimal gemessen wird?
3. Berechne die Mittelwerte beider Bänder. Welches ist teurer, und um wie
   viel Cent?

### 3b. Die Voraussetzung prüfen

```r
d <- paare$KWH_GE15000 - paare$KWH_LT1000

shapiro.test(d)
qqnorm(d); qqline(d)
```

1. Was prüft man hier — die beiden Messreihen oder die Differenzen? Warum?
2. Wie lautet das Ergebnis (W und p)? Wird H0 verworfen?
3. Was bedeutet das für den gepaarten t-Test?

### 3c. Beide Tests rechnen

```r
t.test(paare$KWH_GE15000, paare$KWH_LT1000, paired = TRUE)
wilcox.test(paare$KWH_GE15000, paare$KWH_LT1000, paired = TRUE)
```

1. Trag t, df, p und das Konfidenzintervall ein.
2. Trag V und p des Wilcoxon-Tests ein.
3. Kommen beide Tests zum selben Schluss? Wenn ja — heißt das, die
   Voraussetzungsverletzung war harmlos?
4. In wie vielen der 40 Länder ist der Großverbraucher-Preis niedriger?
   `sum(d < 0)`

### 3d. Die Lehre

In KM7-06 waren die **Länderpreise** normalverteilt (p = 0,38). Hier sind
die **Differenzen** es nicht (p = 0,005).

1. Erkläre in zwei Sätzen, warum das kein Widerspruch ist.
2. Was ist die „Testgröße" im ersten Fall, was im zweiten?
3. Warum ist „der Datensatz ist normalverteilt" eine sinnlose Aussage?

---

## Beispiel 4: Das Projekt abschließen

Erweitere dein Projekt aus KM7-06. Die README beantwortet am Ende vier
Fragen:

1. **Was war meine Frage?** (ein Satz, mit Land und Verbrauchsband)
2. **Was sagen die Zahlen?** (Mittelwert, Streuung, Rang)
3. **Durfte ich testen?** (Shapiro-p-Wert und seine Bedeutung)
4. **Was kam heraus?** (Test, p-Wert, ein Satz Interpretation — und was
   der Test **nicht** sagt)

Zusätzlich im Skript:

```r
ggsave("output/histogramm.png", p1, width = 7, height = 4, dpi = 150)
ggsave("output/verteilung.png", p2, width = 7, height = 4, dpi = 150)
```

**Abgabe:** Commit unter `<dein-repo>/2026-11-13_strompreise/`, bis
**2026-11-27**. Dasselbe Projekt wie in KM7-06 — jetzt mit Test und
fertiger README.

---

## Beispiel 5: Selbsttest im WÜ-Format

Acht Fragen, vier Optionen, **0 bis 4 richtig**. Erst alle Antworten
ankreuzen, dann die Musterlösung lesen.

**5.1** Du testest die 39 übrigen Länder gegen 0,2539. Welche Aussagen
sind richtig?

- [ ] H0 lautet: der Mittelwert der 39 Länder ist 0,2539
- [ ] Österreich muss aus der Gruppe herausgenommen werden
- [ ] Es handelt sich um einen Zweistichproben-Test
- [ ] Der Test vergleicht zwei Ländergruppen

**5.2** Der t-Wert ist −7,41. Was bedeutet das?

- [ ] Der Effekt ist 7,41 Standardfehler groß
- [ ] Das Gruppenmittel liegt unter dem geprüften Wert
- [ ] 7,41 % der Länder liegen über Österreich
- [ ] Die Irrtumswahrscheinlichkeit beträgt 7,41 %

**5.3** `p = 6,94 · 10⁻⁹`. Welche Aussagen sind richtig?

- [ ] Unter H0 wäre ein so großer Abstand praktisch nie zu beobachten
- [ ] H0 wird verworfen
- [ ] H0 ist zu 99,9999993 % falsch
- [ ] Der Unterschied ist wirtschaftlich bedeutsam

**5.4** Cohen's d = 1,19. Was gilt?

- [ ] Der Abstand beträgt 1,19 Standardabweichungen
- [ ] Das ist ein großer Effekt
- [ ] 1,19 % der Länder liegen über Österreich
- [ ] Der Strompreis ist 1,19-mal so hoch

**5.5** Das 95-%-Intervall ist [0,1485; 0,1937]. Welche Aussagen stimmen?

- [ ] Es beschreibt den Mittelwert der 39 Länder
- [ ] 0,2539 liegt außerhalb — dasselbe Ergebnis wie p < 0,05
- [ ] 95 % der Länderpreise liegen in diesem Intervall
- [ ] Mit 95 % Sicherheit kostet Strom künftig 15 bis 19 Cent

**5.6** Bei gepaarten Daten prüft man die Normalverteilung woran?

- [ ] An den Differenzen der Paare
- [ ] An beiden Messreihen getrennt
- [ ] An allen Werten gemeinsam
- [ ] Gar nicht, der gepaarte Test ist robust

**5.7** Wann ist der Wilcoxon-Test die bessere Wahl?

- [ ] Wenn die Normalverteilung verletzt ist
- [ ] Wenn die Stichprobe klein und die Verteilung schief ist
- [ ] Immer, weil er moderner ist
- [ ] Wenn man Streuungen vergleichen will

**5.8** Was ist ein Fehler 1. Art in dieser Fragestellung? (Es kann auch
keine Antwort richtig sein.)

- [ ] H0 verwerfen, obwohl Österreich ein typisches Land ist
- [ ] H0 behalten, obwohl Österreich teurer ist
- [ ] Beim Ablesen des p-Werts vertun
- [ ] Den falschen Schnitt gewählt haben

### Musterlösung

| Frage | Lösungsmenge | Kurzbegründung |
|---|---|---|
| 5.1 | 1, 2 | H0 = Gruppenmittel gleich 0,2539; Österreich muss raus, sonst steht es auf beiden Seiten. Einstichproben-Test, keine zwei Gruppen. |
| 5.2 | 1, 2 | t ist Effekt/Standardfehler; das Vorzeichen zeigt die Richtung. |
| 5.3 | 1, 2 | Der p-Wert ist die Wahrscheinlichkeit der Daten unter H0 — nicht die von H0, und nichts über Relevanz. |
| 5.4 | 1, 2 | d ist in Standardabweichungen; ab 0,8 gilt ein Effekt als groß. |
| 5.5 | 1, 2 | Das Intervall gilt dem Mittelwert, nicht Einzelwerten und nicht Prognosen. |
| 5.6 | 1 | Der gepaarte Test rechnet mit den Differenzen; deren Verteilung entscheidet. |
| 5.7 | 1, 2 | Wilcoxon nutzt Ränge; bei erfüllter Voraussetzung ist der t-Test stärker. |
| 5.8 | 1 | Fehler 1. Art = H0 verwerfen, obwohl sie gilt. Fehler 2. Art wäre die zweite Option. |
