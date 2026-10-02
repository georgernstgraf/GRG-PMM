# n über k, Binomialverteilung & R-Einstieg (2026-10-02)

Rückblick auf die Wiederholungsstunde (4AHWIT-Y): Zählweisen, Binomialverteilung
und der erste praktische Einstieg in R. Lesson zum Nacharbeiten:
[`lesson.html`](lesson.html) (KM5-01 „n über k: Wege zählen, Verteilungen
gewichten").

## Das war die Stunde

- **Wiederholungswünsche gesammelt:** Konfidenzintervalle (nur **zweiseitig**),
  Binomial- und Normalverteilung.
- **Binomialkoeffizient „n über k":** Anzahl der möglichen Ziehungen, z. B.
  `45 über 6` beim Lotto ≈ 8 Mio.; Beispiel `5 über 2 = 10`.
- **Formel:** `n! / (k! · (n−k)!)` — Ziehen **ohne Zurücklegen**,
  **Reihenfolge egal**.
- **Binomialverteilung am Maschinenbeispiel:** 20 % Ausschuss, 5 Teile geprüft,
  P(genau 2 defekt) = `5 über 2 · 0,2² · 0,8³` = **0,2048** (≈ 20,4 %).
  Merke: „Defekt" ist hier der **Erfolg** (das gewünschte Ereignis), `p = 0,2`.
- **R-Einstieg (Terminal / RStudio):**
  - `choose(n, k)` — n über k: `choose(45, 6)`, `choose(5, 2)`.
  - `dbinom(x, size, prob)` — Binomialverteilung:
    `dbinom(2, size = 5, prob = 0.2)`.
  - Datensatz `penguins`: 344 Zeilen = **Beobachtungen**, 8 Spalten.
  - `glimpse(penguins)` — kompakter Überblick; `summary(penguins)` —
    Min/Median/Mittelwert/Quantile in einem Aufruf.
  - `mean()`, `median()`, `sd()`, `var()`, `n()`; `na.rm = TRUE` entfernt
    fehlende Werte (`NA` = *not available*) vor der Rechnung.
  - Pipe `|>` / `%>%` — Daten „durchleiten".
  - `library(tidyverse)` lädt ein installiertes Paket (ohne Anführungszeichen);
    `install.packages()` nur einmalig zum Installieren.
  - Zuweisung mit Pfeil `<-`, z. B. `x <- c(2, 4, 4, 5, 5, 7, 9)`; `c()` baut eine
    Liste / einen Spaltenvektor.
  - CSV = *Comma Separated Values*: erste Zeile = Überschrift, jede Zeile = eine
    Beobachtung; `read.csv()` liest sie ein (z. B. `assets/betriebsdaten.csv`).
- **Standardabweichung vs. Varianz** (die Kernfrage): `sd()` und `var()` messen
  dasselbe — die Streuung —, die **Varianz** enthält aber noch die Quadrate
  (mittlere quadratische Abweichung), die **Standardabweichung** hat dieselbe
  Skala wie die Daten. Die Varianz ist additiv → nötig für die **ANOVA**
  (*Analysis of Variance*, Varianzanalyse).
- **Offen geblieben:** Warum bei `sd()`/`var()` durch **n−1** statt durch `n`
  dividiert wird (Stichprobe vs. Grundgesamtheit) — siehe Aufgabe.
- **Technik / Setup:** Tidyverse-Installation teils blockiert (Windows Defender
  / „Rtools required"); VS Code **Auto-Fetch** auf `true` stellen; Repo klonen
  und als Workspace verbinden. Dazu kommt **nächstes Mal eine Setup-Stunde**.

## Erklärungen & Nachlesen

- Lesson dieser Stunde: [`lesson.html`](lesson.html)
- Vorbereitete Einheit:
  [`unterricht/KM5-01-binomialkoeffizient-pascalsches-dreieck/`](../../unterricht/KM5-01-binomialkoeffizient-pascalsches-dreieck/lesson.html)
- KM5-Steckbrief:
  [`lehrplan/kompetenzmodule/km5.md`](../../lehrplan/kompetenzmodule/km5.md)
- Semesterplan 4HWIT (UE 4 „Wahrscheinlichkeit & Verteilungen"):
  [`lehrplan/pmm-hwit/jg4-semesterplan-ws.md`](../../lehrplan/pmm-hwit/jg4-semesterplan-ws.md)
- R4DS (Pflichtlektüre), Kap. 1–3 „Data visualization" / „Workflow: basics" /
  „Data transformation": [r4ds.hadley.nz](https://r4ds.hadley.nz/)

## Aufgabe bis zum nächsten Mal

1. **Standardabweichung vs. Varianz:** `sd(x)` und `var(x)` in R an einer
   eigenen Zahlenliste ausprobieren und den Unterschied in einem Satz erklären.
2. **Warum n−1?** Recherchieren, warum `var()`/`sd()` durch `n−1` dividieren
   (Stichprobe) statt durch `n` (Grundgesamtheit).
3. **Setup fertig machen:** R/RStudio + `tidyverse` installieren,
   `glimpse(penguins)` zum Laufen bringen, VS Code Auto-Fetch aktivieren,
   Repo klonen.
4. *(Vorschlag)* `dbinom(2, size = 5, prob = 0.2)` und `choose(5, 2)` in R
   nachrechnen und mit der Handrechnung (0,2048) vergleichen.

## Housekeeping

- **KM-Bezug:** KM5 (Statistische Grundlagen) — UE 4 (KM7, 4HWIT WS),
  Wiederholung aus KM5.
- **Laufzeit:** R / RStudio (R 4.5.x), `tidyverse`; Datensatz `palmerpenguins`.
- Transkript dieser Stunde: `transcript.md` (lokal, nicht committet).
