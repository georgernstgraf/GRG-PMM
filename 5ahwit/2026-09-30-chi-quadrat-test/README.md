# chitest folie

## Aufgabe bis 13.10.

## daten einlesen,

mit read.csv(r"(C:\Users\georg\repos\georgernstgraf\GRG-PMM\assets\betriebsdaten.csv)")

> daten_massiert <- mutate(daten,iok = if_else(

+     is.na(masse_mm), NA,
+     if_else(abs(masse_mm - 10) > 0.15,
+             "ausserhalb", "in_Toleranz")))
>
