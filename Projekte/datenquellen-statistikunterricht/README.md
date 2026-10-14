# Datenquellen für den Statistikunterricht

Diese Sammlung erschließt **öffentlich zugängliche Datenquellen**, mit denen
sich interessante statistische Fragestellungen im PMM-Unterricht (und darüber
hinaus) behandeln lassen. Ziel: Statistik nicht als abstraktes Rechentechnik-Fach
unterrichten, sondern mit echten Daten zu realen, aktuellen Debatten — vom
Bundesländervergleich bis zur Parlamentsanfrage.

## Warum „Projekte/"?

Die Sammlung ist ein langfristiges Vorhaben und kein Unterrichtsmaterial einer
einzelnen Einheit: Quellen werden laufend ergänzt, aufbereitet und im Unterricht
eingesetzt. Aus jede Quellen-Datei kann später eine Unterrichts-Lesson werden
(dann unter `unterricht/<PREFIX>-<NN>-<slug>/` nach der create-lesson-Konvention).

## Struktur

- `README.md` — dieses Dokument (Zweck, Verzeichnis, Schema)
- `quellen/<thema>.md` — **eine Datei pro Themenfeld**, jeweils mit:
  1. **Ausgangsfrage** — die reale Frage, aus der die Recherche entstand
  2. **Datenquellen** — konkret, mit verifizierten Links und Angabe,
     was die Quelle tatsächlich hergibt (Disaggregierungsgrad, Jahre, Format)
  3. **Methodik-Kapitel** — statistische Fallstricke der Frage als
     Unterrichtsanschlüsse (das ist der eigentliche Lehrstoff)
  4. **Unterrichtsanschluss** — mögliche Lesson-Köpfe mit Ziel-KM/UE
  5. **Sensibilität** — Hinweise zur ethischen Behandlung im Unterricht

## Verzeichnis der Quellen-Dateien

| Thema | Datei | Recherche-Stand |
|-------|-------|-----------------|
| Femizid & Täter-Nationalität | [`quellen/femizid-taeter-nationalitaet.md`](quellen/femizid-taeter-nationalitaet.md) | 2026-10-14 |

## Künftige Themenfelder (Ideen-Pool)

- **Betriebsdaten**: `assets/betriebsdaten.csv` (im Repo) — produktionsnahe Daten
- **Eurostat**: internationale Vergleiche (Handel, Arbeitsmarkt, Tötungsdelikte)
- **Statistik Austria Open Data**: `data.statistik.gv.at` — maschinenlesbare Tabellen
- **GKZ/Regionaldaten**: „Blick auf die Gemeinde" für Geo-Analysen

## Bezug zum Lehrplan

Statistische Kompetenzen sind im PMM-Lehrplan über die
Kompetenzmodule verankert (insb. KM4/KM5: Daten, Kennzahlen,
Verteilungen; siehe `lehrplan/kompetenzmodule/` und `lehrplan/ressourcen-matrix.md`).
Die hier gesammelten Datenquellen dienen als Rohmaterial für den
statistischen Werkzeugkasten (R/POSAC bzw. R-Unterricht nach r4ds, siehe
Issue #6).
