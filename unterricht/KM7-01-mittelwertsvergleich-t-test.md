# Mittelwerte vergleichen: z-Test und t-Test (2026-09-__)

Lesson: `lesson.html` im selben Ordner — reaktiviert die Hypothesenlogik
und beide Testarten (ungepaart / gepaart) an den Betriebsdaten.
- Demo: Hypothesen H0/H1, z-Test als Sonderfall, Welch-t-Test, gepaarter Test über Chargenmittel
- Quiz: 3 Fragen (p-Wert-Interpretation, Freiheitsgrade, gepaart vs. ungepaart)
- Alle Code-Blöcke sind gegen `assets/betriebsdaten.csv` ausgeführt und verifiziert

## Aufgabe
`hausaufgabe.md` — beide Testarten an den Betriebsdaten, Hypothesen
formulieren, Konfidenzintervalle bewerten, und die Frage beantworten, was
„statistisch signifikant" für die Toleranzentscheidung bedeutet.
Abgabe: Commit in deinem PMM-Repo (README um einen Absatz ergänzen).

## Housekeeping
- Lehrplan: [`lehrplan/pmm-hwit/jg4-semesterplan-ws.md`](../../lehrplan/pmm-hwit/jg4-semesterplan-ws.md) UE 6 (t-Tests) · Lektüre: Navarro Kap. 13
- KM-Bezug: **KM7** (Statistische Tests & Annahmestichprobenprüfung) — Wiederholung aus der 4. Klasse, aufbauend auf der 4HWIT-UE 6. Anschluss: DoE in UE 1 setzt ANOVA/`lm()` voraus; die ANOVA ist die Verallgemeinerung der paarweisen t-Tests aus dieser Lektion.
- Quelle der Wünsche: [`5ahwit/wiederholungswuensche.md`](../../5ahwit/wiederholungswuensche.md) (t-Test von Sinan, Noah, Daniel)
- Runtime: R / tidyverse, `t.test()`, `power.t.test()`
