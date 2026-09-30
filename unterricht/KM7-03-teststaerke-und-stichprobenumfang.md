# Teststärke und Stichprobenumfang (2026-09-__)

Lesson: `lesson.html` im selben Ordner — schließt die Wiederholungsrunde
mit der Frage, die kein p-Wert beantwortet: wie viele Daten brauche ich,
damit ich einen relevanten Unterschied überhaupt finde.
- Demo: Fehler 1./2. Art, Power mit den echten KM7-01-Daten, Planungsrichtung n, Power-Kurve, Power bei n = 1
- Quiz: 3 Fragen (Fehler 2. Art, Progression n ∝ 1/δ², Signifikanz ohne Relevanz)
- Voraussetzung: [`KM7-01`](../KM7-01-mittelwertsvergleich-t-test/lesson.html) (t-Test)
- Alle Code-Blöcke sind ausgeführt und verifiziert

## Aufgabe
`hausaufgabe.md` — Fehlerarten unterscheiden, Power in beide Richtungen
berechnen, Power-Kurven zeichnen, und einen überinterpretierenden
Kollegenbericht (2000 Teile je Maschine, 0,004 mm Drift) kritisch prüfen.
Abgabe: Commit in deinem PMM-Repo.

## Housekeeping
- Lehrplan: [`lehrplan/pmm-hwit/jg4-semesterplan-ws.md`](../../lehrplan/pmm-hwit/jg4-semesterplan-ws.md) UE 6 (t-Tests) · Lektüre: Navarro Kap. 13 + 16
- KM-Bezug: **KM7** (Statistische Tests), Wissens-Item „Fehler 1./2. Art, Teststärke" — Wiederholung aus der 4. Klasse. Anschluss: **das ist die direkte Brücke zu UE 1 (DoE)** — die Wiederholungszahl in einem Versuchsplan ist dieselbe Rechnung wie hier der Stichprobenumfang. Bei Zeitdruck ist das die Lektion, die auf UE 1 vorbereitet.
- Quelle der Wünsche: [`5ahwit/wiederholungswuensche.md`](../../5ahwit/wiederholungswuensche.md) (Power/Teststärke von Sinan)
- Runtime: R / `stats`, `power.t.test()` — kein Datensatz nötig
