# Daten zu SA-04 — Herkunft & Lizenzen

Übungsmaterial der Lektion **SA-04 — Daten einlesen II: die raue
Wirklichkeit**. Die Dateien sind bewusst **unbearbeitet** — ihre
rauen Kanten (Preamble, Semikolon, `***`, Notizen-Sheet) sind der
Lernstoff. Wer sie „säubert", zerstört die Aufgabe.

| Datei | Herkunft | Lizenz |
|---|---|---|
| `gistemp_roh.csv` | NASA GISS GISTEMP v4, `GLB.Ts+dSST.csv` (data.giss.nasa.gov/gistemp) — Original heruntergeladen 2026-10-19 | NASA-Daten gemeinfrei (US-Gov) |
| `OGD_krimi001_KRIMI_1.csv` | Statistik Austria Open Data — „Verurteilungsstatistik seit 2012: sämtliche den Verurteilungen zugrunde liegenden Delikte nach Gerichtssprengeln" (data.statistik.gv.at, Stand 2026-06) | CC BY 4.0 |
| `OGD_krimi001_KRIMI_1_C-A10-0.csv` | Dimensions-Datei: Jahr | CC BY 4.0 |
| `OGD_krimi001_KRIMI_1_C-KRIMEA9-0.csv` | Dimensions-Datei: Gerichts-/OLG-Sprengel | CC BY 4.0 |
| `strompreise-auszug.xlsx` | **Erzeugt** aus echten Eurostat-Daten (`nrg_pc_204`, CC BY 4.0): 4 Länder × 3 Halbjahre, Band KWH2500-4999, ohne Steuern, EUR — erzeugt mit `writexl` am 2026-10-19 | CC BY 4.0 (Eurostat) |
| `betriebsdaten_licht.xlsx` | **Erzeugt** aus `assets/betriebsdaten.csv` (fiktive Lehr-Daten): 2 Messzellen durch „n. gemessen" ersetzt, Notizen-Sheet vorangestellt — erzeugt mit `writexl` am 2026-10-19 | projekt-eigen |

Hinweis zu den beiden Excel-Dateien: Sie wurden aus echten bzw.
Lehr-Daten erzeugt, damit die Excel-typischen Stolpersteine
(Standard-Sheet ≠ Daten-Sheet, Leerzeichen im Spaltennamen, Text in
Zahlenspalten) reproduzierbar sitzen. Erzeugungsskript-Ablauf
dokumentiert im Issue #37.
