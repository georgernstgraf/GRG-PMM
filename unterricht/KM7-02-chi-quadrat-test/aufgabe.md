# Aufgabe KM7-02 — Der Chi-Quadrat-Test

**Lektüre:** Navarro, [Statistik für Human- und Sozialwissenschaftler](https://learningstatisticswithr.com/book/)
(Pflicht) — **Kap. 12, Chi-Quadrat-Tests**. Voraussetzung ist
[Lektion KM5-02](../KM5-02-binomialverteilung-und-annahmeschwelle/lesson.html)
(Binomialverteilung) — der Anpassungstest ist ihre Anwendung.

> **Setup-Ritual:** RStudio-Projekt `pmm-km7-02`, Skript `analyse.R`.
> **Daten:** `daten/betriebsdaten.csv` (aus `assets/betriebsdaten.csv` ins
> Projekt kopiert) — Sollmaß 10,00 mm, Toleranz ± 0,15 mm. Gültige
> Messungen: 116 (vier fehlen und werden NA).

---

## Beispiel 1: Die Chi-Tests an den Betriebsdaten

### 1a. Der Datensatz

```r
library(tidyverse)
daten <- read_csv("daten/betriebsdaten.csv") |>
  mutate(iok = if_else(is.na(masse_mm), NA,
              if_else(round(abs(masse_mm - 10), 10) > 0.15,
                      "ausserhalb", "in_Toleranz")))
tab <- table(daten$maschine, daten$iok)
tab
```

```
          ausserhalb  in_Toleranz
M1                0           37
M2                0           39
M3                4           36
Sum               4          112
```

### 1b. Vorhersagen (ohne R — erst hinschreiben!)

1. Wie viele gültige Messungen hat die Tabelle insgesamt? Warum nicht 120?
2. Wie viele Ausschusteile wären bei **Unabhängigkeit** (H0) in Zeile M1
   zu erwarten? Rechne die Formel von Hand:
   erwartet = (Zeilensumme · Spaltensumme) / Gesamtsumme.
3. Wie viele der sechs Zellen liegen erwartungsgemäß unter 5? Die Regel
   verlangt mindestens 80 % ≥ 5. Ist sie hier erfüllt? Welches
   Testverfahren folgt daraus?

### 1c. Die Teststatistik von Hand

Berechne den Beitrag jeder der drei Zellen in der Spalte „außerhalb":

| Zelle | beobachtet | erwartet | Beitrag |
|-------|-----------|----------|---------|
| M1 außerhalb | | | |
| M2 außerhalb | | | |
| M3 außerhalb | | | |

Vergleiche mit R und begründe, welche Zelle den größten Beitrag liefert —
ist es die mit der größten relativen Abweichung oder die mit dem kleinsten
Nenner?

```r
erwartet <- outer(rowSums(tab), colSums(tab)) / sum(tab)
round((tab - erwartet)^2 / erwartet, 4)
```

### 1d. Unabhängigkeitstest

```r
chisq.test(tab)
fisher.test(tab)
```

- X², df, p-Wert (Chi), p-Wert (Fisher)?
- Warum weichen die beiden p-Werte leicht ab?
- Wie berechnet man die df? Zeige Formel und Zahlen.
- R gibt eine Warnung aus. Schreib sie wörtlich auf.
- Übersetze den Chi-p-Wert in einen deutschen Satz, in dem die Zahl 0,0195
  vorkommt. Was folgt daraus für H0?

### 1e. Anpassungstest

Der Kunde gibt eine Sollquote von **10 % Ausschuss** vor. Rechne den
Anpassungstest für alle drei Maschinen:

```r
quoten <- daten |> filter(!is.na(masse_mm)) |>
  group_by(maschine) |>
  summarise(n = n(), aus = sum(iok == "ausserhalb"),
            .groups = "drop") |>
  mutate(in_toleranz = n - aus)

lapply(split(quoten, quoten$maschine), function(q) {
  suppressWarnings(
    chisq.test(c(q$in_toleranz, q$aus), p = c(0.9, 0.1)))
})
```

| Maschine | beobachtet | erwartet | X² | p-Wert |
|----------|-----------|----------|--------|--------|
| M1 | 37 / 0 | 37 / 3,7 | | |
| M2 | 39 / 0 | 39 / 3,9 | | |
| M3 | 36 / 4 | 36 / 4,0 | | |

Welche Maschinen fallen statistisch auf, in **welche Richtung** weichen sie
ab — und wie erkennst du das, wenn der Test nur einen p-Wert liefert?
Erkläre in drei Sätzen, warum ein Anpassungstest gegen eine Sollverteilung
**kein** Güteurteil über den Prozess ist.

### 1f. Voraussetzungen prüfen

1. Welche der sechs erwarteten Häufigkeiten liegen unter 5? Wie viele
   Prozent der Zellen sind das?
2. Ist die 80-%-Regel erfüllt? Was bedeutet das für die Verlässlichkeit von
   `p = 0,0195`?
3. R warnt auch beim Anpassungstest. Führe ihn ohne `suppressWarnings()`
   aus, notiere den Wortlaut und begründe, was daraus für alle p-Werte aus
   1e folgt.

### 1g. Kapitel-Check (Navarro Kap. 12)

1. Nenne die **drei** Voraussetzungen des Chi-Quadrat-Tests und prüfe,
   welche in diesem Datensatz erfüllt sind.
2. Erkläre den Unterschied zwischen Unabhängigkeitstest und
   Anpassungstest: Welche Frage stellt welcher, und wie wird der Unterschied
   in R am Aufruf sichtbar?
3. Ein Kollege sagt: „Der Chi-Test sagt, dass M3 schlecht ist, weil
   0,0195 < 0,05." Hat er recht? Begründe in zwei Sätzen — denke an die
   Richtung und daran, was ein Anpassungstest gerade **nicht** kann.

### 1h. Ergebnis sichern

Die Kreuztabelle soll als Datei abgegeben werden — nicht als Screenshot.

```r
# Testform -> Dateiform: Labels werden eine Spalte
urxn <- as.data.frame.matrix(tab) |>
  rownames_to_column("maschine")

dir.create("ergebnisse", showWarnings = FALSE)
write_csv(urxn, "ergebnisse/kreuztabelle.csv")
```

1. Öffne die Datei im Editor. Steht `maschine` als erste Spalte drin, und
   stimmen die sechs Zahlen?
2. Warum scheitert `write_csv(tab, "tab.csv")`, und warum verliert
   `write.csv(tab, "tab.csv", row.names = FALSE)` die Maschinen **ohne**
   Fehlermeldung?
3. Lies die Datei zurück, mach die Labelspalte zu Zeilennamen
   (`column_to_rownames()`) und teste erneut. Kommt `X-squared = 7.871`
   heraus?
4. Zusatz: Schreibe das Testergebnis als einzeilige CSV
   (`broom::tidy(res)`) und die erwarteten Häufigkeiten als
   `ergebnisse/erwartet.csv`. Was fehlt in der Datei, wenn du
   `row.names = FALSE` vergisst?

---

## Beispiel 2: Selbsttest im WÜ-Format

Acht Fragen, vier Optionen, **0 bis 4 richtig**. Erst alle Antworten
ankreuzen, dann die Musterlösung lesen.

**2.1** Worauf arbeitet der Chi-Quadrat-Test?

- [ ] Auf Häufigkeiten in Kategorien
- [ ] Auf Messwerten wie `masse_mm`
- [ ] Auf Prozentzahlen ohne Fallzahl
- [ ] Auf Mittelwerten zweier Gruppen

**2.2** Wie lautet die erwartete Häufigkeit einer Zelle unter H0?

- [ ] (Zeilensumme · Spaltensumme) / Gesamtsumme
- [ ] (beobachtet − erwartet)² / erwartet
- [ ] Gesamtsumme / Anzahl der Zellen
- [ ] Spaltensumme / Zeilensumme

**2.3** Eine 3×2-Tabelle hat wie viele Freiheitsgrade?

- [ ] 2
- [ ] 6
- [ ] 5
- [ ] 3

**2.4** `chisq.test()` liefert `X² = 7,871`, `df = 2`, `p = 0,0195`. Welche
Aussagen sind richtig?

- [ ] Ohne Zusammenhang wäre eine so große Abweichung in rund 2 % der Fälle zu sehen
- [ ] H0 wird verworfen
- [ ] Die Wahrscheinlichkeit, dass der Zusammenhang falsch ist, beträgt 1,95 %
- [ ] In 1,95 % aller künftigen Chargen liefert M3 so viele Ausschussteile

**2.5** M1 hat 0 Ausschussteile in 37 Messungen, die Sollquote ist 10 %. Der
Anpassungstest ergibt `p = 0,043`. Welche Aussagen sind richtig?

- [ ] Die Maschine weicht statistisch von der Vorgabe ab
- [ ] Die Abweichung geht in die gute Richtung, das sagt der Test aber nicht
- [ ] Die Maschine ist besser als die Vorgabe, der Test bestätigt das
- [ ] H0 wird nicht verworfen, weil 0 Fehler die Vorgabe übertreffen

**2.6** Die 80-%-Regel ist verletzt. Was folgt?

- [ ] `fisher.test()` ist die passende Alternative
- [ ] Der p-Wert aus `chisq.test()` ist nur eine Näherung, die hier nicht trägt
- [ ] `correct = FALSE` behebt das Problem
- [ ] Man darf den Chi-Test unverändert als exakt interpretieren

**2.7** Welche Aussagen über die beiden Testtypen sind richtig?

- [ ] Der Unabhängigkeitstest fragt, ob zwei Merkmale zusammenhängen
- [ ] Der Anpassungstest fragt, ob eine Verteilung zu einer Sollverteilung passt
- [ ] Beide Tests beantworten dieselbe Frage
- [ ] Der Anpassungstest erkennt nur Abweichungen in die schlechte Richtung

**2.8** Welche Aussage ist richtig? (Es kann auch keine sein.)

- [ ] Der Chi-Test sagt, welche Maschine die beste ist
- [ ] `p = 0,0195` heißt rund 2 % Irrtumswahrscheinlichkeit
- [ ] `fisher.test()` ist nur für metrische Daten gedacht
- [ ] Bei 0 Ausschussteilen ist ein Test immer nicht signifikant

### Musterlösung

| Frage | Lösungsmenge | Kurzbegründung |
|---|---|---|
| 2.1 | 1 | Der Test vergleicht Anzahlen in Kategorien; Messwerte gehören in den t-Test. |
| 2.2 | 1 | Die Randsummen erzwingen die Erwartung: Zeile · Spalte / Gesamt. |
| 2.3 | 1 | df = (3 − 1) · (2 − 1) = 2 — nur frei wählbare Zellen zählen. |
| 2.4 | 1, 2 | rund 2 % ist die Wahrscheinlichkeit unter H0; daraus folgt Verwerfen. Optionen 3 und 4 vertauschen p-Wert mit Irrtumswahrscheinlichkeit bzw. Prognose. |
| 2.5 | 1, 2 | Erwartet waren 3,7 Fehler, beobachtet 0 — eine Abweichung, aber ohne Richtungsurteil. |
| 2.6 | 1, 2 | Bei zu kleinen Erwartungswerten ist Fisher exakt; `correct = FALSE` versteckt das Problem nur. |
| 2.7 | 1, 2 | Zwei verschiedene Fragen, zwei verschiedene Tests. |
| 2.8 | — | Keine der vier Aussagen stimmt (0 Richtige als Extremfall). |

---

## Beispiel 3: Transfer — Wareneingang und Schichtbetrieb

Ein Betrieb bekommt Bauteile von drei Lieferanten. Die Sollverteilung laut
Rahmenvertrag ist **50 % / 30 % / 20 %**. In der letzten Lieferung waren es:

| Lieferant | A | B | C |
|---|---|---|---|
| Stück | 96 | 68 | 36 |

**3a)** Prüfe mit einem Anpassungstest, ob die Lieferung zur Sollverteilung
passt. Rechne zuerst die erwarteten Häufigkeiten von Hand, dann:

```r
beobachtet <- c(A = 96, B = 68, C = 36)
chisq.test(beobachtet, p = c(0.5, 0.3, 0.2))
```

Formuliere das Ergebnis in einem Satz und prüfe die 80-%-Regel.

**3b)** Zusätzlich wurde erfasst, ob ein Teil nachbearbeitet werden musste:

| Lieferant | nachbearbeitet | ohne Nacharbeit |
|---|---|---|
| A | 14 | 82 |
| B | 18 | 50 |
| C | 9 | 27 |

Führe den Unabhängigkeitstest durch (`chisq.test()`), gib X², df und p-Wert
an und prüfe die Voraussetzung. Welches Verfahren wählst du, wenn die
Voraussetzung verletzt ist — und warum?

**3c)** Ein Kollege will aus dem signifikanten Ergebnis schließen, Lieferant
C sei der schlechteste. Nimm in drei Sätzen Stellung: Was sagt der Test,
was nicht — und welche Zusatzinformation bräuchtest du für ein
Lieferantenurteil?
