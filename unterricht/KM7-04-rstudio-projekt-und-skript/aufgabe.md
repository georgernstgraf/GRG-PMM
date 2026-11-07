# Aufgabe KM7-04 — RStudio, Projektordner und R-Skripte

Name: _____________ &nbsp;&nbsp;&nbsp; Abgabe: _____________

**Lektüre:** R4DS 2e (englisch), Pflicht —
[Kap. 6, *Workflow: scripts and projects*](https://r4ds.hadley.nz/workflow-scripts)
und [Kap. 2, *Workflow: basics*](https://r4ds.hadley.nz/workflow-basics).
Die Fragen in Aufgabe 4 beziehen sich direkt auf diese zwei Kapitel.

**Ziel:** Du legst ein eigenes RStudio-Projekt an, schreibst ein
lauffähiges Skript und begründest, warum Projekt und Skript den
Taschenrechner ersetzen.

**Hilfsmittel:** `assets/betriebsdaten.csv` aus dem Kurs-Repo —
120 Messungen, 3 Maschinen (M1–M3) × 10 Chargen × 4 Teile, Sollmaß
10,00 mm, Toleranz ± 0,15 mm.

---

## 1. Projekt anlegen (Vorbereitung)

Erstelle mit RStudio ein neues Projekt (`File → New Project → New
Directory → Empty Project`) mit dem Namen **`pmm-km7-04`**. Lege darin an:

- einen Ordner `data/` — kopiere `betriebsdaten.csv` hinein,
- einen Ordner `scripts/`,
- ein neues Skript `scripts/analyse.R`.

**a)** Welche Datei macht den Ordner zum RStudio-Projekt, und was
passiert beim Doppelklick darauf?

_________________________________________________

**b)** Führe im Skript `getwd()` aus. Was gibt R aus, und warum endet
die Ausgabe auf `pmm-km7-04`?

_________________________________________________

---

## 2. Das erste Skript zum Laufen bringen

Schreibe in `scripts/analyse.R` genau diesen Code, speichere und führe
ihn mit `Ctrl + Shift + S` aus:

```r
library(tidyverse)

daten <- read_csv("data/betriebsdaten.csv")

kennzahlen <- daten |>
  group_by(maschine) |>
  summarise(
    n      = sum(!is.na(masse_mm)),
    mittel = mean(masse_mm, na.rm = TRUE),
    s      = sd(masse_mm, na.rm = TRUE)
  )

kennzahlen
```

**a) Vorhersage zuerst:** Welche Maschine hat den größten Mittelwert,
welche den kleinsten — und welche liegt am nächsten am Sollmaß
10,00 mm? Schreib deine Vorhersage hin, *bevor* du ausführst.

Vorhersage: ____________________

**b)** Trage die tatsächlichen Werte aus der Ausgabe ein:

| Maschine | n | Mittelwert | s |
|----------|---|------------|---|
| M1 | | | |
| M2 | | | |
| M3 | | | |

**c)** Warum ist `n` bei M1 und M2 kleiner als 40, obwohl pro Maschine
40 Teile geplant waren? Ein Satz.

_________________________________________________

---

## 3. Relative und absolute Pfade

**a)** In deinem Skript steht
`read_csv("data/betriebsdaten.csv")`. Warum funktioniert diese Zeile,
obwohl nirgends der Laufwerksbuchstabe oder der Benutzername steht?

_________________________________________________

**b)** Ein Kollege schickt dir sein Skript. Darin steht
`read_csv("C:\\Users\\Kollege\\Downloads\\betriebsdaten.csv")`. Es läuft
auf seinem Rechner, auf deinem aber nicht. Erkläre in zwei Sätzen,
warum — und wie man die Zeile repariert.

_________________________________________________

---

## 4. Kapitel-Check (R4DS Kap. 6 + 2)

**a)** Erkläre in 2–3 Sätzen den Unterschied zwischen R und RStudio.
Wer von beiden ist ohne den anderen nutzlos — und warum?

_________________________________________________

**b)** Nenne drei Regeln für gute Dateinamen aus R4DS Kap. 6.

1. _________________________________________________
2. _________________________________________________
3. _________________________________________________

**c)** R4DS empfiehlt, den Code im **Skript** und nicht in der Console
zu entwickeln. Erkläre mit eigenen Worten, *warum* — und was das mit
der Quelle der Wahrheit („source of truth") zu tun hat.

_________________________________________________

**d)** Was ist der Unterschied zwischen `Ctrl + Enter` und
`Ctrl + Shift + S`? Wann nimmst du was?

_________________________________________________

---

## 5. Transfer in den Betrieb

**a)** Dein Skript hat 12 Zeilen und liefert in Sekunden drei
Kennzahlen. Der Taschenrechner hätte für dieselbe Auswertung 120 Werte
gebraucht. Beschreibe in drei Sätzen, welchen Nutzen das im
Qualitätsmanagement hat, wenn diese Auswertung **jede Woche** anfällt.

_________________________________________________

**b)** Du gibst das Skript an eine Kollegin weiter. Zwei Dinge müssen
mitgeliefert werden, damit es bei ihr läuft. Welche? (Denk an Daten und
an die Pakete.)

1. _________________________________________________
2. _________________________________________________

> **Abgabe nach Vorgabe deiner Lehrperson** — Skript (`analyse.R`)
> plus deine Antworten zu diesem Blatt.
