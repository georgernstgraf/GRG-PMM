# Boxplot und die Wahl der richtigen Grafik (2026-09-__)

Lesson: `lesson.html` im selben Ordner — macht die fünf Zahlen hinter dem
Boxplot sichtbar und trennt „Ausreißer" (statistisch) von „Ausschuss"
(spezifikationsbezogen).
- Demo: 5-Zahl-Summen je Maschine, Boxplot mit Toleranzlinien, 1,5-IQR-Zaun, Grafikwahl Histogramm/Boxplot/Streudiagramm/Balkendiagramm
- Quiz: 3 Fragen (Befund bei M3, Ausreißer vs. Ausschuss, Balkendiagramm für Häufigkeiten)
- Alle Code-Blöcke sind gegen `assets/betriebsdaten.csv` ausgeführt und verifiziert

## Aufgabe
`hausaufgabe.md` — Boxplots mit Toleranzbezug bauen, IQR-Anteil an der
Toleranz berechnen, Ausreißer- und Ausschussbegriff auseinanderhalten und
für vier Fragen die passende Grafik begründen.
Abgabe: Commit in deinem PMM-Repo.

## Housekeeping
- Lehrplan: [`lehrplan/pmm-hwit/jg4-semesterplan-ws.md`](../../lehrplan/pmm-hwit/jg4-semesterplan-ws.md) UE 4–5 (EDA) · Lektüre: R4DS 2e Kap. 1
- KM-Bezug: **KM6** (Konfidenzbereiche, Prüfergebnisse & Lebensdauer), Matrix-Key `KM6-darstellung` — Wiederholung aus der 4. Klasse. Anschluss: der Boxplot ist die grafische Vorphase zu den Tests in [KM7-01](../KM7-01-mittelwertsvergleich-t-test/lesson.html) (Lage) und [KM7-02](../KM7-02-chi-quadrat-test/lesson.html) (Toleranzquote); in UE 1 (DoE) wird dieselbe Logik auf Effekte angewandt.
- Quelle der Wünsche: [`5ahwit/wiederholungswuensche.md`](../../5ahwit/wiederholungswuensche.md) (Boxplot von Enzo, Grafikwahl von Celina)
- Anlass: Die Auswertung des 4AHWIT-Einstiegstests nennt Histogramm-gegen-Balkendiagramm und „arithmetisches Mittel als Boxplot-Element" als typische Fehler — beides kommt hier vor.
- Runtime: R / tidyverse, `geom_boxplot()`, `geom_hline()`, `boxplot.stats()`, `quantile()`
