# Aufgabe KM7-05 — Rscript und die Kommandozeile

Name: _____________ &nbsp;&nbsp;&nbsp; Abgabe: _____________

**Lektüre:** R4DS 2e (englisch), Pflicht —
[Kap. 6, *Workflow: scripts and projects*](https://r4ds.hadley.nz/workflow-scripts).
Kennst du schon aus KM7-04 — lies es noch einmal mit der Frage im Kopf:
*Was muss ein Skript können, damit es ohne RStudio läuft?*

**Ziel:** Du führst dein Auswertungsskript aus der Kommandozeile aus,
machst es mit Argumenten flexibel und lernst, wie ein Fehler im
Exit-Code sichtbar wird.

**Hilfsmittel:** dein Projekt `pmm-km7-04` aus KM7-04 (mit
`data/betriebsdaten.csv` und `scripts/analyse.R`) — 120 Messungen,
3 Maschinen (M1–M3) × 10 Chargen × 4 Teile, Sollmaß 10,00 mm,
Toleranz ± 0,15 mm.

---

## 1. Console und Terminal unterscheiden

**a)** Öffne im RStudio-Projekt das Terminal (`Tools → Terminal` oder
der Tab „Terminal") und tippe `Rscript --version`. Was steht da — und
warum antwortet hier kein Prompt `>`?

_________________________________________________

**b)** Erkläre in einem Satz: Was ist der Unterschied zwischen der
Console und dem Terminal — und wer „hört" jeweils zu?

_________________________________________________

---

## 2. Das Skript von der Kommandozeile

**a) Vorhersage zuerst:** Du stehst im Terminal im Projektordner
`pmm-km7-04`. Was wird `Rscript scripts/analyse.R` ausgeben — und
unterscheidet sich das Ergebnis vom Lauf mit `Ctrl + Shift + S` in
RStudio? Schreib deine Vorhersage hin, *bevor* du ausführst.

Vorhersage: ____________________

**b)** Führe den Befehl aus und trage die tatsächlichen Werte ein:

| Maschine | n | Mittelwert | s |
|----------|---|------------|---|
| M1 | | | |
| M2 | | | |
| M3 | | | |

**c)** Vergleiche mit deinem Ergebnis aus KM7-04: Warum ist die
Ausgabe identisch, obwohl einmal RStudio und einmal das Terminal
ausführt hat? Ein Satz.

_________________________________________________

---

## 3. Ein Skript mit Argument

Lege in deinem Projekt das Skript `scripts/maschine.R` an — genau
dieser Code:

```r
#!/usr/bin/env Rscript
# maschine.R — Kennzahlen fuer eine Maschine
# Aufruf: Rscript scripts/maschine.R M2
suppressMessages(library(tidyverse))

args <- commandArgs(trailingOnly = TRUE)
if (length(args) != 1) stop("Benutzung: Rscript scripts/maschine.R <M1|M2|M3>")

daten <- read_csv("data/betriebsdaten.csv", show_col_types = FALSE)

daten |>
  filter(maschine == args[1]) |>
  summarise(
    n      = sum(!is.na(masse_mm)),
    mittel = mean(masse_mm, na.rm = TRUE),
    s      = sd(masse_mm, na.rm = TRUE)
  )
```

**a)** Führe `Rscript scripts/maschine.R M3` aus und trage ein:

| n | Mittelwert | s |
|---|------------|---|
| | | |

**b)** Was passiert beim Aufruf *ohne* Argument? Welcher Exit-Code
entsteht — und warum ist die `stop()`-Zeile hier eine gute
Entscheidung und nicht überflüssige Vorsicht?

_________________________________________________

**c)** `Rscript scripts/maschine.R M4` läuft sauber durch — Exit-Code
0 — gibt aber `n = 0, mittel = NaN` aus. Erkläre in zwei Sätzen, was
der Exit-Code hier leistet und was er **nicht** leisten kann.

_________________________________________________

---

## 4. Exit-Code-Experiment

**a)** Kopiere `analyse.R` nach `scripts/kaputt.R` und baue absichtlich
einen Fehler ein (z. B. Dateiname `betriebsdaten2.csv` statt
`betriebsdaten.csv`). Führe das Skript aus und prüfe danach den
Exit-Code (Linux/macOS: `echo $?`; unter Windows: `$LASTEXITCODE` in
PowerShell). Was kam heraus?

Exit-Code: _____________

**b)** Eine Automatisierung (z. B. ein nächtlicher Cron-Job) will
wissen: War der Lauf erfolgreich? Erkläre in zwei Sätzen, warum sie
den Exit-Code liest und nicht die Ausgabe des Skripts.

_________________________________________________

---

## 5. Kapitel-Check (R4DS Kap. 6)

**a)** Was ist der Unterschied zwischen dem Ausführen mit
`Ctrl + Shift + S` in RStudio und `Rscript` im Terminal? Wann nimmst
du was?

_________________________________________________

**b)** R4DS sagt: Der Code gehört ins Skript, nicht in die Console.
Übertrage das auf `Rscript`: Warum ist ein Rscript-Lauf die
*strengste* Form dieser Regel?

_________________________________________________

---

## 6. Transfer in den Betrieb

Ab nächste Woche soll die Auswertung jede Nacht um 02:00 automatisch
laufen — auf einem Server ohne RStudio. Nenne drei Anforderungen, die
das Skript dafür erfüllen muss (denk an: was das Skript selbst
mitbringen muss, Pfade, und was der Automatismus über Erfolg/Misserfolg
erfährt).

1. _________________________________________________
2. _________________________________________________
3. _________________________________________________

> **Abgabe nach Vorgabe deiner Lehrperson** — dein Projekt
> (`scripts/analyse.R`, `scripts/maschine.R`, `scripts/kaputt.R`)
> plus deine Antworten zu diesem Blatt.
