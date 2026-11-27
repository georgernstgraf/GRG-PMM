# Femizide in Österreich — ein Chi-Quadrat-Projekt

Zusatzprojekt zu [Lektion KM7-02](../../lesson.html) und
[Aufgabe KM7-02](../../aufgabe.md). Es beginnt bei den **Rohdaten** — zwei
unbearbeiteten CSV-Dateien aus amtlichen bzw. zivilgesellschaftlichen Quellen —
und endet bei `chisq.test()`.

Alles, was du brauchst, liegt in diesem Ordner. Kein Download, keine
Installation, keine Internetverbindung.

## Loslegen

```bash
cd unterricht/KM7-02-chi-quadrat-test/beispiele/femizide
Rscript runbook.R
```

In RStudio: Projekt aus diesem Ordner öffnen und `runbook.R` **sourcen**
(Strg+Shift+S). Persönliches Arbeitsverzeichnis genügt —
`here::here()` findet den Ordner über die Datei `.here`.

Voraussetzung: R mit `tidyverse`, `broom` und `here`. Sonst nichts.

## Aufbau

```
runbook.R        Einstiegspunkt, sourced die fünf Schritte
R/01_einlesen.R  read_csv, trim_ws, glimpse — was ist angekommen?
R/02_tidy.R      Einrückung → Spalten, pivot_longer, Summenprobe
R/03_kodieren.R  Freitext → Kategorien (Beziehung, Herkunft, Bundesland)
R/04_kontingenz.R die drei Kreuztabellen
R/05_chisq.R     drei Unabhängigkeitstests + ein Anpassungstest
daten/           Rohdaten, Mapping, Quellen (siehe daten/README.md)
ergebnisse/      Output der Skripte (nicht versioniert)
```

## Die vier Fallen, die in den Rohdaten stecken

1. **`read_csv()` frisst die Einrückung.** Ohne `trim_ws = FALSE` ist die
   PKS-Hierarchie weg — und `fill()` füllt danach Unsinn.
2. **Einrückung ist ein Hinweis, kein Beweis.** Im Abschnitt
   `mordversuch_opfer` sitzen nach einem Seitenumbruch einige Nationalitäten
   eine Ebene zu hoch. Wer sich auf die Tiefe verlässt, macht aus einer
   Nationalität ein Bundesland. Deshalb entscheidet in `02_tidy.R` das Label.
3. **Summenzeilen mischen sich unter die Daten.** Jeder Abschnitt endet mit
   einer gedruckten Gesamtzeile. Wer sie mitzählt, zählt doppelt.
4. **`k.A.` ist keine leere Zelle.** In den AÖF-Listen fehlt die Herkunft
   häufig. `na_if("k.A.")` macht das sichtbar — Weglassen macht es unsichtbar,
   und dann verschwindet die Frage, wie viele Fälle man eigentlich ausschließt.

## Die drei Tafeln

| Tafel | Zeilen × Spalten | Quelle | Bemerkung |
|---|---|---|---|
| 1 | Herkunft × Delikt | PKS (Tatverdächtige) | Vorzeigetafel: alle Erwartungswerte > 5, n = 406 |
| 2 | Bundesland × Jahr | PKS (Opfer) | kleine Länder → Warnung, `simulate.p.value`, n = 187 |
| 3 | Beziehung × Herkunft | AÖF-Falllisten | nur hier möglich, viele `k.A.`, n = 87 |

Dazu der Anpassungstest: Verteilung der Tatverdächtigen gegen die
Bevölkerungsanteile. Er beantwortet die Frage aus der parlamentarischen
Anfrage — und zeigt, was ein Chi-Quadrat-Test **nicht** beantwortet.

## Warum diese Daten

Ausgangspunkt ist die parlamentarische Anfrage [18374/J „Herkunft der Täter
von Frauenmorden"](https://www.parlament.gv.at/gegenstand/XXVII/J/18374) und
die [Anfragebeantwortung 17838/AB](https://www.parlament.gv.at/gegenstand/XXVII/AB/17838)
des Innenministeriums. Deren Beilage ist die PKS-Tabelle, mit der hier
gearbeitet wird. Die AÖF-Listen kommen aus der [Femizid-Zählung des Vereins
Autonome Österreichische Frauenhäuser](https://www.aoef.at/index.php/zahlen-und-daten/femizide-in-oesterreich).

Hintergrund, Methodik und Fallstricke stehen im Recherche-Dossier
[`Projekte/femizid-taeter-nationalitaet.md`](https://github.com/georgernstgraf/GRG-PMM/blob/main/Projekte/femizid-taeter-nationalitaet.md)
— bewusst per GitHub-Link: `Projekte/` wird nicht auf die Lernplattform
deployt.

## Ein Hinweis zum Ton

Die Daten handeln von getöteten Frauen. Die Datei enthält keine Namen, keine
Adressen und keine Fallschilderungen, die Rückschlüsse auf Betroffene
zulassen — die AÖF-Listen sind Medienauswertungen, die Spalte `hergang_roh`
bleibt in der Auswertung ungenutzt. Wer über die Ergebnisse spricht, spricht
über **Tatverdächtige** und **Fälle**, nicht über „Täter" und „Ausländer".
Die IKF-Studie, aus der die Vergleichszahlen stammen, warnt ausdrücklich
davor, aus Nationalität eine Risikogruppe zu konstruieren.
