# chitest folie

> **Stoff und Quiz der Lektion:** [KM7-02 — Der Chi-Quadrat-Test](../../unterricht/KM7-02-chi-quadrat-test/lesson.html) — kanonische Lesson (Format 2.1); diese Kopie hier ist der Tages-Datensatz der DS vom 30.9.

## Aufgabe bis 13.10.

## daten einlesen,

mit read.csv("../assets/betriebsdaten.csv")

> daten_massiert <- mutate(daten,iok = if_else(

+     is.na(masse_mm), NA,
+     if_else(abs(masse_mm - 10) > 0.15,
+             "ausserhalb", "in_Toleranz")))
>
