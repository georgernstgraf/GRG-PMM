# L04 (Abschnitt 1) vertieft: d/p-Schema gefestigt

Das `d`/`p`/`q`/`r`-Schema aus L03 saß bei der Wiederholung (Spaced Retrieval)
zunächst **nicht** stabil: `dbinom` und `pbinom` wurden vertauscht und `q` war
unsicher. Nach einer gezielten Binomial-Übung über die fünf Standard-Formen
(genau / höchstens / mindestens / mehr als / zwischen) an n = 20, p = 0,05 und
n = 50, p = 0,02 hat der Lernende alle fünf korrekt in R-Aufrufe übersetzt —
inklusive der `−1`-Falle — und beide Wege (`sum(dbinom(...))` **und**
`pbinom`-Differenzen) selbstständig gefunden. Die Fluency-Lücke aus L03 ist
damit durch Spacing geschlossen; L04 ist in Abschnitt 1 gefestigt, die
Abschnitte 2 (Hypergeometrisch) und 3 (Poisson) sind noch offen.

## Evidence

- Aufgabe 1: `dbinom(1, 50, .02)` = 0,3716 — korrekt (Punkt-Wahrscheinlichkeit).
- Aufgabe 2: `sum(dbinom(0:1, 50, .02))` = `pbinom(1, 50, .02)` = 0,7358 —
  korrekt, inklusive der selbst erkannten Äquivalenz „`pbinom` = Summe von
  `dbinom`".
- Aufgabe 3: `sum(dbinom(1:50, ...))` = `1 - pbinom(0, ...)` = 0,6358 — beide
  Wege korrekt; „mindestens 1 = Gegenteil von gar keins" verstanden.
- Aufgabe 4: `1 - pbinom(1, ...)` = `sum(dbinom(2:50, ...))` = 0,2642 — korrekt;
  die Probe „mindestens 1 − mehr als 1 = genau 1" (0,6358 − 0,2642 = 0,3716)
  selbst nachvollzogen.
- Aufgabe 5: `sum(dbinom(1:3, ...))` = `pbinom(3, ...) - pbinom(0, ...)`
  = 0,6181 — korrekt; die `−1`-Regel (untere Grenze einschließend → `pbinom(a−1)`
  abziehen) explizit angewendet.
- Die Lotto-„6 aus 45"-Frage wurde korrekt als **nicht** binomial erkannt
  („ohne Zurücklegen" → hypergeometrisch) — Vorgriff auf Abschnitt 2.

## Implications

- **L03 muss nicht wiederholt werden** — das Spacing hat gewirkt. `d`/`p` ist
  jetzt als Fundament belastbar; L04 Abschnitt 2 + 3 können starten.
- **`q` (Quantil) bleibt dünn** — bei L07/L09 (Quantile, Konfidenzintervalle)
  bewusst noch einmal herausfordern.
- **Didaktik (in `NOTES.md` festgehalten):** keine Lösungen vorab (erst eigener
  Versuch); Herleitung vor Zahlenwert; ausführlicher statt knapper.
- **Verlaufsmap** `reference/jg3-verlauf.html`: L04 bleibt ➤ — Abschnitt 1
  (Binomial, `d`/`p`) sitzt, Abschnitt 2 + 3 offen.
