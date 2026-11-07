# Aufgabe SA-00 — Was kann R?

**Lektüre:** R4DS 2e,
[Kap. 2 — Workflow: basics](https://r4ds.hadley.nz/workflow-basics) —
lies sie zuerst. Die Beispiele bauen direkt auf der Lektion auf.

**Setup:** RStudio-Projekt `pmm-sa-00` anlegen, Skript `analyse.R`
erstellen und speichern. Die Betriebsdaten liegen im Repo unter
`assets/betriebsdaten.csv` — kopiere die Datei in deinen Projektordner
(z. B. nach `daten/`) und lies sie dann mit
`read_csv("daten/betriebsdaten.csv")`. **Abgabe nach Vorgabe deiner
Lehrperson.**

---

## Beispiel 1: Die Betriebsdaten von Null auf Vergleichstabelle (Kernübung)

### 1a. Einlesen und Erstblick

Lies die Datei ein und sieh hin:

```r
library(tidyverse)
teile <- read_csv("daten/betriebsdaten.csv")
glimpse(teile)
```

- Wie viele Zeilen und Spalten hat die Tabelle? ________
- Welchen Typ hat `masse_mm` laut `glimpse()`? ________
- Was zeigt `glimpse()` für die ersten Werte von `maschine` an — und
  warum ist das Typ `<chr>` und nicht `<dbl>`?

### 1b. Vorhersage, dann Kennzahlen

Schreibe **vor** dem Ausführen auf, was dieser Befehl deiner Meinung
nach liefert: wie viele Zeilen das Ergebnis hat und welche Mittelwerte
ungefähr kommen. Dann erst ausführen:

```r
teile |>
  group_by(maschine) |>
  summarise(n = sum(!is.na(masse_mm)),
            mittel = mean(masse_mm, na.rm = TRUE))
```

Hinweis: `!is.na(x)` zählt die Zeilen, in denen `x` tatsächlich
gemessen wurde; fehlende Werte zählen nicht mit.

- Kontrollwerte: M1 `37` / `10.0` · M2 `39` / `9.98` · M3 `40` / `10.1`.
  Weichen deine Zahlen ab, prüfe `na.rm` und die Chargen.
- Warum hat M1 `n = 37`, obwohl es 40 Zeilen mit M1 gibt? Notiere die
  Erklärung als Kommentar in deinem Skript.

### 1c. Toleranz prüfen

Das Sollmaß ist 10,00 mm mit Toleranz ± 0,15 mm.

- Rechne, wie viele der **gemessenen** Teile außerhalb der Toleranz
  liegen: `sum(abs(teile$masse_mm - 10) > 0.15, na.rm = TRUE)`.
- Vorhersage zuerst: Liefert derselbe Befehl **ohne** `na.rm = TRUE`
  eine Zahl — oder `NA`? Begründe mit dem dritten klassischen Fehler
  aus der Lektion, dann ausführen und vergleichen.

### 1d. Skript als Abgabe

Führe dein Skript `analyse.R` komplett aus (Source-Button oder
`Ctrl+Shift+S`) und prüfe: Läuft es von oben nach unten durch, ohne
dass du irgendwo in die Console getippt hast? Genau das ist der
Standard der ganzen Lektionsserie — dein Skript ist die Auswertung.

---

## Beispiel 2: Selbsttest im WÜ-Format

Sechs Fragen, vier Optionen, **0 bis 4 richtig**. Erst alle Antworten
ankreuzen, dann die Musterlösung lesen.

**2.1** Der Code, der dein Ergebnis in einem Jahr noch erzeugen kann,
steht …

- [ ] in der Console — dort wird er automatisch gesichert
- [ ] im Environment-Tab — dort sammelt R alles auf
- [ ] im Skript — als gespeicherte Datei, zeilenweise ausführbar
- [ ] im Plots-Tab — Bilder genügen als Beleg

**2.2** Du führst `mittel <- mean(c(10.01, 9.98, 10.03))` aus. Was
druckt R danach **sofort** in die Console?

- [ ] `10.00667`
- [ ] `NA`
- [ ] den Vektor `c(10.01, 9.98, 10.03)`
- [ ] nichts — die Zuweisung speichert nur

**2.3** Die Tabelle zeigt Adelie 152/3701, Chinstrap 68/3733, Gentoo
124/5076. Welche Aussagen sind richtig?

- [ ] Gentoo ist im Schnitt rund 1375 g schwerer als Adélie
- [ ] Gentoo ist die leichteste der drei Arten
- [ ] Die Spalte `n` zählt die Pinguine je Art
- [ ] Die Mittelwerte in der Tabelle sind exakt, nicht gerundet

**2.4** Der t-Test liefert p ≈ 5·10⁻¹⁶. Welche Aussagen sind richtig?

- [ ] Männchen und Weibchen wiegen im Schnitt gleich viel
- [ ] Bloßes Messrauschen kann einen solchen Unterschied fast nie erzeugen
- [ ] Die Wahrscheinlichkeit, dass der Unterschied nicht existiert,
  beträgt 5·10⁻¹⁶
- [ ] Solche Prüfungen gehören zum Werkzeugkasten, den KM 7 behandelt

**2.5** Excel gegen R: Welche Aussagen sind richtig?

- [ ] In R steht jede Zeile des Wegs in der Datei
- [ ] `auswertung_final2_wirklich.xlsx` ist ein Beispiel für gutes
  Versionsmanagement
- [ ] Bei 120.000 Zeilen bleibt der R-Code dieselbe Zeile
- [ ] In R lässt sich das Skript erneut laufen lassen statt alles von
  Hand zu wiederholen

**2.6** Der Pinguin-Streuplot: Welche Aussagen sind richtig?

- [ ] Der Plot zeigt 344 Punkte — jede Zeile ein Punkt
- [ ] Es sind 342 Punkte, weil zwei Pinguine keine Massung haben
- [ ] `aes()` ordnet die Spalten den Achsen zu, `geom_point()`
  zeichnet die Punkte
- [ ] Der Plot beweist, dass lange Flossen die Masse verursachen

### Musterlösung

| Frage | Lösungsmenge | Kurzbegründung |
|---|---|---|
| 2.1 | 1 | Nur das Skript ist gespeichert; Console und Environment überleben das Schließen nicht. |
| 2.2 | 1 | `<-` weist zu und druckt nichts; `mittel` angeben, dann kommt 10.00667. |
| 2.3 | 1, 3 | 5076 − 3701 = 1375; `n = n()` zählt die Zeilen je Art. Gentoo ist die schwerste Art, `round()` rundet auf ganze Gramm. |
| 2.4 | 2, 4 | Der p-Wert misst das Rauschen, nicht die Existenz des Unterschieds; KM 7 behandelt die Tests. |
| 2.5 | 1, 3, 4 | Die wild benannte Excel-Datei ist das Gegenbeispiel fürs Versionieren, nicht das Muster. |
| 2.6 | 2, 3 | Zwei Pinguine haben keine Massung; Ursache und Wirkung liest der Plot nicht heraus. |

---

## Beispiel 3: Transfer — Inseln statt Maschinen

Übertrag die Kette aus der Lektion auf den Pinguin-Datensatz: nicht
Maschinen, sondern **Inseln** vergleichen.

### 3a. Vorhersage

Schreibe vor dem Ausführen auf, wie viele Zeilen dieses Ergebnis haben
wird und welche Insel wohl die schweren Pinguine trägt:

```r
penguins |>
  group_by(island) |>
  summarise(n = n(), mittel = round(mean(body_mass_g, na.rm = TRUE)))
```

### 3b. Ausführen und vergleichen

- Kontrollwerte: Biscoe `168`/`4716` · Dream `124`/`3713` ·
  Torgersen `52`/`3706`.
- Waren deine Vorhersagen zur Zeilenzahl und zur schwersten Insel
  richtig? Korrigiere sie, falls nötig.

### 3c. Warum ist Biscoe so schwer?

Schau dir die Arten-Verteilung an:

```r
penguins |>
  count(species, island)
```

- In der Lektion sahst du: Gentoos sind die schweren Pinguine (5076 g).
  Auf welcher Insel leben die Gentoos laut `count()`? Erkläre damit in
  zwei Sätzen, warum Biscoe im Schnitt die schwerste Insel ist.
- Welche Art kommt nur auf einer einzigen Insel vor — und auf welcher?

### 3d. Ein letzter Blick

Führe `t.test(body_mass_g ~ sex, data = penguins)` aus und notiere die
p-Wert-Zeile. Überleg dir: Wenn du statt `sex` eine Spalte mit **drei**
Gruppen (z. B. `island`) einsetzt — läuft dieser Test dann einfach so
weiter? Notiere deine Vermutung als Kommentar; die Antwort gehört zu
KM 7.
