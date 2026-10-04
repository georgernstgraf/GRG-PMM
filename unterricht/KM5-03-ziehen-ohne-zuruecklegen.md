# Ziehen ohne Zurücklegen (2026-10-__)

Lesson: `lesson.html` im selben Ordner — baut die hypergeometrische
Verteilung als Werkzeug der Stichprobenprüfung aus endlichen Losen auf:
selbstgebaute Formel, `dhyper`/`phyper` mit der Parameterfalle,
Erwartungswert vs. Modalwert, ±1-Feinheit, Lotto-Anker, 5-%-Faustregel.
- Demo: `dhyper`/`phyper`/`choose`, Verteilungstafel M3-Los (N=40, M=4,
  n=10), Lotto „6 aus 45", Binomial-Näherungs-Vergleich
- Quiz: 4 Fragen (Parameter-Falle, E(X) vs. Modalwert, ±1-Falle, Faustregel)
- Voraussetzung: [`KM5-01`](../KM5-01-binomialkoeffizient-pascalsches-dreieck/lesson.html)
  (Wege zählen) und
  [`KM5-02`](../KM5-02-binomialverteilung-und-annahmeschwelle/lesson.html)
  (`dbinom`/`pbinom`)
- Alle Code-Blöcke sind ausgeführt und verifiziert

## Aufgabe
`hausaufgabe.md` — Verteilungen vorhersagen und berechnen, die Formel aus
den `choose()`-Bausteinen selbst nachbauen, die Parameterfalle und die
±1-Falle umgehen, M3 aus den echten Betriebsdaten lesen und die
Binomial-Näherung ehrlich prüfen.
Abgabe: nach Vorgabe der Lehrperson.

## Housekeeping
- Lehrplan: `lehrplan/pmm-hwit/LEHRPLAN.md` (Abschnitt III, KM5)
- KM-Bezug: KM5 — Statistische Grundlagen: Verteilungen (Teil: diskrete
  Verteilungen, Ziehen ohne Zurücklegen); Anschluss an KM5-02
  (Binomialverteilung), Ausblick Poisson
- Runtime: R (base stats, kein Zusatzpaket)
