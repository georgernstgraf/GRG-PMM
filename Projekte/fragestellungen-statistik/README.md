# Fragestellungen + Datenmaterial für den Statistikunterricht

**Ziel:** Ausgehend von den Kompetenzmodulen praxisrelevante Fragestellungen
formulieren — jeweils nur dort, wo frei verfügbares Datenmaterial existiert.
Ausgabe in konkurrierende „nur-ablesen"-Beispiele; Ziel sind konkrete
Aufgaben mit echter Datenbasis — statt der bisherigen Handvoll „nur-ablesen"-Beispiele.

**Status:** erster Lauf (KM7 + KM9a, Wintersemester 2026/27). KM8/KM9b
folgen bei der SS-2027-Planung. Nicht perfekt — Arbeitsprojekt.

Issue: [#36](https://github.com/georgernstgraf/GRG-PMM/issues/36)
Erstellt: 2026-10-19

---

## Ablage

| Datei/Ordner | Inhalt |
|---|---|
| `km7.md` | Fragestellungen KM7 (4HWIT, WS) |
| `km9a.md` | Fragestellungen KM9a (5HWIT, WS) |
| `klima-klimawandel.md` | Themenfile Klima/Klimaerwärmung (Trend-Regression, lokal vs. global) |
| `corona-impfmythen.md` | Themenfile Impfungen/Corona-Mythen (Übersterblichkeit, Base-Rate, Simpson) |
| `datensaetze-im-widerspruch.md` | Themenfile konfligierende Datensätze (Praktiken-Checkliste, 4 Konflikt-Paare) |
| `kuriose-quellen.md` | Themenfile kurioser Alltag (Vornamen, Hunde, Radzählstellen, Pizza, Spotify, LEGO, Billboard, Schokolade, APIs) |
| `daten/<name>.csv` | kuratierte Datensätze |
| `daten/<name>.md` | Metadaten je Datensatz (Quelle, Lizenz, Stand, R-Einlesen) |
| `daten/_index/datasets.csv` | Rdatasets-Katalog (~3.600 Datensätze) als Suchkatalog |

## Drei Datenpfeiler

1. **Rdatasets** (<https://vincentarelbundock.github.io/Rdatasets/articles/data.html>)
   — Index von Datensätzen aus R-Paketen, jedes mit CSV + Doku + Metadaten.
   Vorteil: sofort einsetzbare kleine CSVs. Besonders `agridat` (echte
   Feldversuche → DoE!) und `AER` (Ökonomie-Mikrodaten → Tests).
2. **Statistik Austria OGD** (<https://data.statistik.gv.at>) —
   maschinenlesbare CSVs (Kriminalstatistik, VPI, Ökosteuern, …). Kodiertes
   CSV + `C-<dim>`-Dimension-Files → didaktisch wertvolle Join-Übungen.
3. **Eurostat** (<https://ec.europa.eu/eurostat>) — API
   (`…/statistics/1.0/data/<code>?lang=EN&format=JSON&…`) oder eleganter das
   [`eurostat`-R-Paket](https://cran.r-project.org/package=eurostat);
   EU-Vergleiche für Umwelt-/Energie-/Demografie-Blöcke.
4. **Our World in Data** (<https://github.com/owid/covid-19-data>) —
   kuratierte COVID-/Gesundheits-/Klimadaten (CC BY 4.0); Gesamtsatz
   98 MB → nur Länderschnitte kuratieren; Grapher-Per-Chart-CSVs sind klein.

## Format einer Fragestellung

```
### F<nr>: <Frage schüler:innenlesbar>
- **Ausgangsfrage:** …
- **Daten:** <kuratiertes CSV | Link> (+ R-Zugangsweg)
- **Aufgabenskizze:** … (mit R-Befehlsankern)
- **UE-Anker:** <Semesterplan-UE>
- **Status:** 📦 Daten im Repo | 🔗 nur Link | 🏭 Eigenmaterial nötig
```

## Ehrlichkeits-Regeln

- **🎓 Übungs-Rohmaterial bleibt roh:** Lektionen (z. B. SA-04) nutzen
  Dateien bewusst *un*-aufbereitet — Preamble, `***`, kodierte Spalten
  sind der Lernstoff. Agenten und Lehrperson kuratieren sie **nicht
  vor**; das würde die Aufgabe zerstören. (Lesson-Ordner unter
  `unterricht/` dürfen eigene `daten/`-Ordner für Schüler-Downloads
  tragen, da nur `unterricht/` auf der Lernplattform deployt wird.)
- **Beobachtungsdaten ≠ Versuchsdaten:** DoE-Fragestellungen mit
  Observationsdaten sind Schein-Fragestellungen. Entweder echte
  Versuchsdatensätze (`agridat`, gekennzeichnet „aus publiziertem Versuch")
  oder offen als 🏭 Eigenmaterial führen.
- **Lizenzen:** Rdatasets spiegelt Paket-Daten — Lizenz pro Paket prüfen
  (steht in den Doku-Links); Statistik Austria/Eurostat: CC BY 4.0
  (Namensnennung, auch im Unterricht gut vorbildlich).
- Kein Datensatz ohne `Rscript`-Einlese-Check ins Repo.
