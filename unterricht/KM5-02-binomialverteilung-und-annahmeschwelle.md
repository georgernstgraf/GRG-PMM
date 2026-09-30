# Binomialverteilung und Annahmeschwelle (2026-09-__)

Lesson: `lesson.html` im selben Ordner — baut die Binomialverteilung als
Werkzeug der Annahmestichprobenprüfung auf: Verteilungsrechnung,
OC-Tabelle, Annahmeschwelle rückwärts.
- Demo: `dbinom`/`pbinom`, OC-Tabelle für n = 10, Planvergleich n/c, Rückfrage der 6 M3-Ausschusteile
- Quiz: 2 Fragen (pbinom vs. dbinom, Warenrisiko lesen)
- Voraussetzung: [`KM5-01`](../KM5-01-binomialkoeffizient-pascalsches-dreieck/lesson.html) (Wege zählen, Pascalsches Dreieck)
- Alle Code-Blöcke sind ausgeführt und verifiziert

## Aufgabe
`hausaufgabe.md` — Verteilungen berechnen, OC-Tabellen selbst konstruieren,
einen Stichprobenumfang herleiten, Produzenten- und Warenrisiko gegeneinander
abwägen, und die 6 M3-Ausschusteile einordnen.
Abgabe: Commit in deinem PMM-Repo.

## Housekeeping
- Lehrplan: [`lehrplan/pmm-hwit/jg4-semesterplan-ws.md`](../../lehrplan/pmm-hwit/jg4-semesterplan-ws.md) UE 4 (Wahrscheinlichkeit & Verteilungen) · Lektüre: Navarro Kap. 9
- KM-Bezug: **KM5** (Statistische Grundlagen: Verteilungen & Schätzer) — Wiederholung aus der 4. Klasse. Anschluss: der Anpassungstest in [KM7-02](../KM7-02-chi-quadrat-test/lesson.html) ist genau die Anwendung dieser Verteilung auf Häufigkeiten; dort schließt sich der Kreis.
- Quelle der Wünsche: [`5ahwit/wiederholungswuensche.md`](../../5ahwit/wiederholungswuensche.md) (Binomialverteilung von Sinan)
- Runtime: R / tidyverse, `dbinom()`, `pbinom()`, `qbinom()`
