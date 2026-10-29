# Wissensüberprüfung PMM — R-Basics, Kennzahlen & Binomialverteilung

**Datum:** 2026-10-23
**Klasse:** 4AHWIT-y
**Punkte:** 185 (35 Multiple-Choice-Fragen à 4 Punkte + 3 Freitext-Fragen à 15 Punkte)

---

## Hinweise zur Bearbeitung

Diese Überprüfung deckt den Stoff der letzten Wochen ab: Setup (Git, R, RStudio),
R-Grundlagen (Pipe, Einlesen, Kennzahlen), Kennzahlen & Verteilungen mit R
(`mean`, `sd`, `pnorm`, Histogramm), Rechnen mit der **Binomialverteilung**
(`choose`, `dbinom`, `pbinom`) — auch das vom 16.10. — und die Frage, warum bei
`sd()`/`var()` durch n−1 dividiert wird.

**Bearbeitung pro Multiple-Choice-Frage:**

- Kreuze **alle** richtigen Antworten an.
- Pro Frage können **0 bis 4** Antworten richtig sein.
- Pro korrekt behandelter Antwortoption (richtig angekreuzt **oder** richtig
  freigelassen) bekommst du 1 Punkt — insgesamt 4 Punkte pro Frage.
- Wenn du eine Antwort für unklar, mehrdeutig oder kontextabhängig hältst,
  darfst du stattdessen `-` ankreuzen und kurz begründen.

Bei den Freitext-Fragen sind klare, eigene Worte gefragt — Stichworte reichen,
wenn sie präzise sind.

_Viel Erfolg — und gutes Gelingen!_

---

## Multiple-Choice-Fragen

### Block A — Setup & R-Grundlagen

#### 1. Welche der folgenden Programme hast du mit `winget` installiert?

- [ ] A. Git
- [ ] B. RStudio
- [ ] C. R
- [ ] D. Microsoft Excel (Makro-Erweiterung)

#### 2. Zu R und RStudio — welche Aussagen sind korrekt?

- [ ] A. R ist die Programmiersprache mit der Rechen-Engine.
- [ ] B. RStudio ist eine Oberfläche, die auf R aufsetzt.
- [ ] C. R und RStudio sind zwei Namen für dasselbe Programm.
- [ ] D. Ein Skript aus einer Datei lässt sich auch ohne RStudio ausführen.

#### 3. Im Terminal wurde `Rscript --version` eingegeben. Welche Aussagen stimmen?

- [ ] A. Da steht eine Versionsnummer der R-Engine — kein RStudio.
- [ ] B. Kein `>`-Prompt erscheint, weil der Terminal dort der „Empfänger" ist, nicht R.
- [ ] C. `Rscript` startet eine frische R-Sitzung, die das Skript ausführt.
- [ ] D. `Rscript` gibt eine Fehlermeldung, weil die Gui fehlt.

#### 4. In RStudio gilt für Pakete:

- [ ] A. `install.packages(c("tidyverse", "palmerpenguins"))` installiert beide in einem Schritt.
- [ ] B. `library(tidyverse)` lädt das Paket in die aktuelle Sitzung.
- [ ] C. `install.packages()` muss bei jedem Start erneut laufen.
- [ ] D. `library()` braucht Anführungszeichen um den Paketnamen.

#### 5. Die Pinguin-Daten und das „erste Ritual": Was stimmt?

- [ ] A. `glimpse(penguins)` → 344 Zeilen, 8 Spalten.
- [ ] B. `summary(penguins)` liefert Min/Median/Mittelwert/Quantile in einem Aufruf.
- [ ] C. `head()` zeigt die letzten Zeilen.
- [ ] D. `glimpse()` verändert die Daten dauerhaft.

#### 6. Zu Pipe und Zuweisung:

- [ ] A. `x <- c(2, 4, 4, 5, 5, 7, 9)` legt einen Vektor mit sieben Werten an.
- [ ] B. `|>` reicht das Ergebnis des linken Schritts an den rechten weiter.
- [ ] C. `<-` vergleicht zwei Werte und liefert `TRUE`/`FALSE`.
- [ ] D. `c()` steht für „column" und erzeugt immer eine zweispaltige Tabelle.

#### 7. `read.csv("data/betriebsdaten.csv")` — welche Aussagen stimmen?

- [ ] A. Die erste Zeile der Datei enthält die Spaltennamen.
- [ ] B. Jede weitere Zeile ist eine Beobachtung (ein Teil).
- [ ] C. CSV heißt *Comma Separated Values*.
- [ ] D. R kann CSV-Dateien nur lesen, wenn sie als Excel-Datei gespeichert wurden.

### Block B — Kennzahlen & Verteilungen (UE 4, 25.9.)

#### 8. Für `x <- c(2, 4, 4, 5, 5, 7, 9)` liefert R: `mean(x) = 5,14`, `median(x) = 5`. Welche Aussagen stimmen?

- [ ] A. Der Mittelwert ist empfindlich gegen Ausreißer, der Median weniger.
- [ ] B. Der Median ist der „mittlere Wert", wenn man die Werte der Größe nach ordnet.
- [ ] C. Bei symmetrischen Daten liegen Mittelwert und Median nah beieinander.
- [ ] D. Der Median ist immer größer als der Mittelwert.

#### 9. `sd()` und `var()` — welche Aussagen treffen zu?

- [ ] A. Beide messen die Streuung um den Mittelwert.
- [ ] B. Die Varianz enthält die Quadrate der Abweichungen.
- [ ] C. Die Standardabweichung hat die gleiche Einheit wie die Daten (z. B. mm), die Varianz die quadrierte.
- [ ] D. Die Varianz ist weniger streuungsempfindlich als die Standardabweichung.

#### 10. Das IQR (`IQR(x)`) — welche Aussagen stimmen?

- [ ] A. IQR = Drittes Quartil − erstes Quartil (Q3 − Q1).
- [ ] B. Es deckt die mittleren 50 % der Daten ab.
- [ ] C. Es ist unempfindlich gegen einzelne Ausreißer.
- [ ] D. Es wird mit der Gesamtzahl n berechnet und ist gleich der Varianz.

#### 11. `pnorm(9.95, mean = 10, sd = 0.05)` — was liefert das?

- [ ] A. Die Wahrscheinlichkeit, dass ein Wert **kleiner oder gleich** 9,95 mm ist.
- [ ] B. Die Fläche unter der Normalverteilungskurve links von 9,95.
- [ ] C. Die Wahrscheinlichkeit, dass ein Wert zwischen 9,95 und 10,05 liegt.
- [ ] D. Etwa 15,9 %.

#### 12. `pnorm(10.05, mean = 10, sd = 0.05) - pnorm(9.95, mean = 10, sd = 0.05)` — was ist das?

- [ ] A. Die Wahrscheinlichkeit, dass ein Maß im Sollbereich 10,00 ± 0,05 mm liegt.
- [ ] B. Etwa 68,3 % (die 1-σ-Regel bei 10,00 ± 0,05 mm).
- [ ] C. Die Höhe der Glocke an der Stelle 10,05.
- [ ] D. Das 95-%-Quantil der Normalverteilung.

#### 13. `qnorm(0.975, mean = 10, sd = 0.05)` — welche Aussagen stimmen?

- [ ] A. Es liefert den Wert, unter dem 97,5 % der Verteilung liegen.
- [ ] B. Das Ergebnis liegt über 10,05 mm.
- [ ] C. Das Ergebnis ist genau der Mittelwert 10.
- [ ] D. `q` = Quantil/„Rückwärts": aus einer Wahrscheinlichkeit wird ein Wert.

#### 14. Wozu braucht man ein Histogramm (`geom_histogram`) bei den Betriebsdaten?

- [ ] A. Um die Verteilung der Messwerte (Form, Ausreißer) zu beurteilen.
- [ ] B. Um zu prüfen, ob die Normalannahme für `pnorm`-Rechnungen plausibel ist.
- [ ] C. `geom_histogram` zählt die Beobachtungen in „Fächern" (Bins).
- [ ] D. Um exakt zu prüfen, ob alle Werte innerhalb der Toleranz liegen.

#### 15. Boxplot und QQ-Plot (KM5-Recap) — welche Aussagen stimmen?

- [ ] A. Der Boxplot zeigt Median, Q1, Q3 und Ausreißer.
- [ ] B. Der QQ-Plot prüft, ob Punkte nahe der Winkelhalbierenden liegen → Normalverteilung plausibel.
- [ ] C. Im Boxplot steht immer der Mittelwert als Linie in der Box.
- [ ] D. Ein Histogramm und ein Boxplot zeigen dieselbe Information immer gleich gut.

### Block C — Binomialverteilung mit R (2.10. & 16.10.)

#### 16. „n über k" (Binomialkoeffizient) — welche Aussagen stimmen?

- [ ] A. Man zählt die möglichen Ziehungen **ohne Zurücklegen**, wobei die Reihenfolge egal ist.
- [ ] B. `choose(5, 2)` = 10.
- [ ] C. `choose(45, 6)` ≈ 8 145 060 (Lotto).
- [ ] D. Die Formel `n! / (k! · (n−k)!)` liefert eine Wahrscheinlichkeit zwischen 0 und 1.

#### 17. Für einen Binomialversuch gilt — welche Aussagen stimmen?

- [ ] A. Jeder Versuch hat nur zwei mögliche Ausgänge (Erfolg/Misserfolg).
- [ ] B. `p` ist bei jedem Versuch gleich groß.
- [ ] C. Die Versuche sind unabhängig voneinander.
- [ ] D. Es gibt genau drei mögliche Ausgänge.

#### 18. Eine Maschine hat 20 % Ausschuss. Es werden 5 Teile geprüft. Was ist hier „p"?

- [ ] A. p = 0,2 — die Wahrscheinlichkeit für Ausschuss.
- [ ] B. p = 0,8 — die Wahrscheinlichkeit für ein fehlerfreies Teil.
- [ ] C. „Erfolg" ist hier das unerwünschte Ereignis (defekt) — es wird als Erfolg gezählt.
- [ ] D. p ist nur bei symmetrischen Verteilungen zwischen 0 und 1.

#### 19. `dbinom(2, size = 5, prob = 0.2)` — welche Aussagen stimmen?

- [ ] A. Liefert die Wahrscheinlichkeit für genau 2 defekte Teile bei 5 geprüften und 20 % Ausschuss.
- [ ] B. Das Ergebnis ist 0,2048 (≈ 20,4 %).
- [ ] C. `size` ist die Anzahl der Versuche (n = 5), `prob` die Ausschussquote.
- [ ] D. Liefert die Wahrscheinlichkeit für höchstens 2 defekte Teile.

#### 20. Nach der Formel `P(X = k) = "n über k" · p^k · (1−p)^(n−k)` — für n = 5, k = 2, p = 0,2, welche Aussagen stimmen?

- [ ] A. Der Faktor „5 über 2" = 10 zählt die Anordnungen der zwei defekten Teile.
- [ ] B. `0,2² = 0,04` ist die Wahrscheinlichkeit für genau diese zwei defekten Teile der einen Anordnung.
- [ ] C. `0,8³ = 0,512` ist die Wahrscheinlichkeit für die drei fehlerfreien Teile.
- [ ] D. `10 · 0,04 · 0,512` ergibt etwa 2,05, also eine Wahrscheinlichkeit über 1.

#### 21. Was berechnet `pbinom(2, size = 5, prob = 0.2)`?

- [ ] A. Die Wahrscheinlichkeit für **höchstens** 2 defekte Teile: P(X ≤ 2).
- [ ] B. Eine kumulierte Wahrscheinlichkeit, also `dbinom(0) + dbinom(1) + dbinom(2)`.
- [ ] C. Die Wahrscheinlichkeit für genau 2 defekte Teile.
- [ ] D. Das Ergebnis ist größer als bei `dbinom(2, …)`.

#### 22. `pbinom(0, 5, 0.05)` ergibt ca. 0,774. Was stimmt?

- [ ] A. Mit ca. 77,4 % ist **kein** Teil defekt (5 % Ausschuss, 5 geprüft).
- [ ] B. `pbinom(0, 5, 0.05, lower.tail = FALSE)` ergibt ca. 0,226 — „mindestens ein defektes Teil".
- [ ] C. Beide Ergebnisse zusammen ergeben 1.
- [ ] D. `lower.tail = FALSE` gibt den „oberen" Rest der Verteilung zurück.

#### 23. `qbinom(0.95, 20, 0.15)` — welche Aussagen stimmen?

- [ ] A. Liefert den k-Wert, unter dem 95 % der binomialverteilten Werte liegen.
- [ ] B. `q` ist die Umkehrung von `dbinom()` — aus einer Wahrscheinlichkeit wird ein Wert.
- [ ] C. Liefert die Wahrscheinlichkeit zu einem festen k.
- [ ] D. So einen k-Wert kann man für die Wahl der Annahmeschwelle in einer Annahmeprüfung verwenden.

#### 24. `d`, `p`, `q`, `r` — welche Zuordnungen stimmen?

- [ ] A. `d` = Wahrscheinlichkeitsdichte/-funktion für einen konkreten Wert.
- [ ] B. `p` = kumulierte Wahrscheinlichkeit P(X ≤ x).
- [ ] C. `q` = Quantil (Umkehrung von `p`).
- [ ] D. `r` = Zufallszahlen aus der Verteilung.

#### 25. Ein Los hat 10 % Ausschuss, geprüft werden 20 Teile. Welche Aussagen stimmen?

- [ ] A. Der Erwartungswert der defekten Teile ist 2.
- [ ] B. Die Streuung der defekten Teile lässt sich mit `sd = sqrt(20 · 0,1 · 0,9)` ≈ 1,34 beschreiben.
- [ ] C. `dbinom(0, 20, 0.1)` ≈ 0,122 — mit ca. 12 % kein defektes Teil.
- [ ] D. Wenn p = 0 ist, ist immer genau 1 Teil defekt.

#### 26. Bei wachsendem n (gleiches p) — welche Aussagen stimmen?

- [ ] A. Der Erwartungswert n·p wächst mit.
- [ ] B. Die Verteilungsform nähert sich einer Glocke an (zentraler Grenzwertsatz als Idee).
- [ ] C. `pbinom(2, n, 0.1)` wird für „höchstens 2 Fehler" mit wachsendem n kleiner.
- [ ] D. Die Streuung `sqrt(n·p·(1−p))` bleibt immer gleich.

#### 27. In einem Annahmeplan „höchstens 2 Fehler werden akzeptiert" (n = 20, Prozess mit 10 % Ausschuss) — welche Aussagen stimmen?

- [ ] A. Die Akzeptwahrscheinlichkeit ist `pbinom(2, 20, 0.1)` ≈ 0,677.
- [ ] B. Ein Plan mit mehr zulässigen Fehlern (c = 3) hat eine höhere Akzeptwahrscheinlichkeit.
- [ ] C. Wird ein Los mit höherer Ausschussquote geprüft, sinkt die Akzeptwahrscheinlichkeit.
- [ ] D. Die Akzeptwahrscheinlichkeit hängt nicht vom Prüfumfang n ab.

### Block D — Stichprobe, sd/var & n−1

#### 28. `var(x)` aus der Stichprobe teilt durch n−1. Warum?

- [ ] A. Damit der Schätzwert im Mittel (erwartungstreu) die Varianz der Grundgesamtheit trifft.
- [ ] B. Weil ein echter „Mittelpunkt" der Grundgesamtheit unbekannt ist und die Stichprobenwerte um ihren eigenen Mittelwert näher zusammenrücken.
- [ ] C. Weil n−1 einfacher zu rechnen ist als n.
- [ ] D. Weil die Division durch n immer exakt denselben Wert ergibt.

#### 29. `sd(x)` vs. `var(x)` — welche Aussagen stimmen?

- [ ] A. `sd(x)` = `sqrt(var(x))`.
- [ ] B. `sd(x)` ist für `x <- c(2, 4, 4, 5, 5, 7, 9)` ca. 2,27.
- [ ] C. `var(x)` ist für dasselbe x ca. 5,14.
- [ ] D. `var(x)` hat dieselbe Einheit wie `sd(x)`.

#### 30. Für die Betriebsdaten der Maschine M1 (120 Zeilen gesamt, 3 Maschinen) — welche Aussagen stimmen?

- [ ] A. `mean(masse_mm)` liegt nahe beim Sollmaß 10,00 mm.
- [ ] B. `sd(masse_mm)` ist deutlich kleiner als die Toleranz (± 0,15 mm).
- [ ] C. Ein Histogramm zeigt, wie die Messwerte um 10,00 mm streuen.
- [ ] D. `mean()` liefert eine Wahrscheinlichkeit.

#### 31. Du siehst: `sd(x)` = 2,27, `var(x)` = 5,14. Welche Aussagen stimmen?

- [ ] A. Die Varianz ist der quadrierte Wert der Standardabweichung.
- [ ] B. Die Zahlen beschreiben dieselbe Streuung in unterschiedlicher „Skala".
- [ ] C. Die Standardabweichung ist quadratisch zu den Daten — deshalb verwendet man sie nicht.
- [ ] D. Die Varianz ist additiv — das braucht man später für die ANOVA (Varianzanalyse).

#### 32. Stichprobe vs. Grundgesamtheit — welche Aussagen stimmen?

- [ ] A. Eine Stichprobe sind ausgewählte Teile einer größeren Grundgesamtheit.
- [ ] B. Schätzer aus der Stichprobe (Mittelwert, Varianz) streuen von Stichprobe zu Stichprobe.
- [ ] C. Wenn man die ganze Grundgesamtheit kennt, ist die Varianz der Stichprobe exakt der Parameter der Population.
- [ ] D. Die 344 Pinguine in `penguins` sind — bezogen auf alle Pinguine — eine Stichprobe.

#### 33. `na.rm = TRUE` und fehlende Werte bei den Betriebsdaten (3 `NA` von 120 Werten) — was stimmt?

- [ ] A. `mean(masse_mm, na.rm = TRUE)` rechnet mit den 117 vorhandenen Werten.
- [ ] B. Ohne `na.rm = TRUE` kann `mean()` `NA` liefern.
- [ ] C. `na.rm = TRUE` löscht die Zeilen dauerhaft aus der Datei.
- [ ] D. `sum(!is.na(masse_mm))` zählt die vorhandenen (nicht fehlenden) Werte.

#### 34. Ein Los ist mit p = 0,05 Ausschuss gut, mit p = 0,15 schlecht. Welche Aussagen zu einem Annahmeplan stimmen?

- [ ] A. Man will „gutes Los annehmen" mit hoher, „schlechtes Los annehmen" mit kleiner Wahrscheinlichkeit.
- [ ] B. Ein Los mit hoher Ausschussquote hat bei gleichem Plan eine geringere Akzeptwahrscheinlichkeit.
- [ ] C. Mehr zulässige Fehler (größeres c) erhöht die „Produzenten-" wie die „Konsumenten-Risiken" in dieselbe Richtung.
- [ ] D. Ein Prüfplan heißt nur dann so, wenn er bei p = 0,05 mindestens 95 % annimmt und bei p = 0,15 höchstens 10 %.

#### 35. Diese Meldung erscheint beim Ausführen:

```
Error in ggplot(penguins, aes(x = year, y = bodi_mass_g)) :
  object 'bodi_mass_g' not found
```

Welche Aussagen stimmen?

- [ ] A. Der Spaltenname ist falsch geschrieben (`bodi_mass_g` statt `body_mass_g`).
- [ ] B. Die Fehlermeldung nennt das fehlende Objekt — nach genau dem muss man suchen.
- [ ] C. Die Meldung bedeutet, dass R kein Binomial verteilen kann.
- [ ] D. Ein Tippfehler im Spaltennamen bricht `ggplot` ab — die Daten selbst sind unverändert.

---

## Freitext-Fragen

### Frage F1 (15 Punkte)

Eine Maschine hat **20 % Ausschuss**. Es werden **5 Teile** geprüft.

a) Warum ist das ein Binomialversuch? Nenne die drei Voraussetzungen und ordne sie
am Beispiel zu: Was ist n, was ist p, was ist ein „Erfolg"?

b) Rechne die Wahrscheinlichkeit, dass **genau 2 Teile** defekt sind, von Hand nach
(Formel mit „n über k") und mache es anschließend mit der passenden R-Funktion.
Schreibe beide Ergebnisse auf und vergleiche.

c) Was berechnet `pbinom(2, size = 5, prob = 0.2)` im Unterschied zu
`dbinom(2, size = 5, prob = 0.2)`? Wie hängt das zusammen?

&nbsp;

&nbsp;

&nbsp;

### Frage F2 (15 Punkte)

`mean(x)` liefert einen Mittelwert der Stichprobe — aber `sd(x)` und `var(x)`
dividieren durch **n−1** statt durch n.

a) Was berechnet `var()` im Kern? Schreibe die Idee als Formel oder in Worten.

b) Warum wird durch n−1 statt durch n geteilt? Erkläre mit dem Unterschied zwischen
**Stichprobe** und **Grundgesamtheit** und warum die Division durch n den Schätzer
im Mittel zu klein machen würde.

c) Was ist der Unterschied zwischen `sd()` und `var()`, und wann ist welche Zahl
anschaulicher? Nenne ein Beispiel aus den Betriebsdaten.

&nbsp;

&nbsp;

&nbsp;

### Frage F3 (15 Punkte)

Du prüfst die Betriebsdaten einer Maschine. Sollmaß 10,00 mm, Toleranz ± 0,15 mm.

a) Du willst wissen: Wie wahrscheinlich ist es, dass ein Teil **außerhalb** der
Toleranz liegt — unter der Annahme normalverteilter Abweichung? Welche R-Funktion
nimmst du, und welche zwei Werte musst du dafür aus den Daten schätzen?

b) Schreib die R-Zeile(n) auf, die das berechnen, und erkläre in Worten, was das
Ergebnis bedeutet.

c) Warum ist ein Histogramm der Daten vor dieser Rechnung sinnvoll?
Nenne eine Situation, in der die Normalannahme damit offensichtlich verletzt wäre.

&nbsp;

&nbsp;

&nbsp;

---

**Gutes Gelingen!**
