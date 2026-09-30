# Der Chi-Quadrat-Test (2026-09-__)

Lesson: `lesson.html` im selben Ordner — beide Chi-Testarten an den
Betriebsdaten: Unabhängigkeit zwischen Maschine und Toleranzlage,
Anpassung an eine 10-%-Sollquote.
- Demo: erwartete Häufigkeiten, Teststatistik von Hand, df, Anpassungstest, Voraussetzungsprüfung, `fisher.test()` als exakte Alternative
- Quiz: 4 Fragen (p-Wert-Lesen, Abweichungsrichtung, `if_else`/NA, Ausreißer-Zaun)
- Voraussetzung: [`KM5-02`](../KM5-02-binomialverteilung-und-annahmeschwelle/lesson.html) (Binomialverteilung)
- Alle Code-Blöcke sind ausgeführt und verifiziert

## Aufgabe
`hausaufgabe.md` — Teststatistik von Hand nachrechnen, beide Testtypen für
alle drei Maschinen, Voraussetzungen prüfen und den exakten Test als
Alternative begründen.
Abgabe: Commit in deinem PMM-Repo.

## Housekeeping
- Lehrplan: [`lehrplan/pmm-hwit/jg4-semesterplan-ws.md`](../../lehrplan/pmm-hwit/jg4-semesterplan-ws.md) UE 7 (χ²-Tests) · Lektüre: Navarro Kap. 12
- KM-Bezug: **KM7** (Statistische Tests) — Wiederholung aus der 4. Klasse. Anschluss: DoE in UE 1 nutzt dieselbe Testlogik in der ANOVA; außerdem ist dies das meistgenannte Thema der Wiederholungswünsche (4 von 18 Repos) — die Lektion darf entsprechend kurz gehalten werden, Daniel meldet den Chi-Test als „am einfachsten".
- Quelle der Wünsche: [`5ahwit/wiederholungswuensche.md`](../../5ahwit/wiederholungswuensche.md) (Chi-Test von Sinan, Luise, Daniel, Celina)
- Runtime: R / tidyverse, `chisq.test()`, `fisher.test()`, `table()`, `if_else()`
