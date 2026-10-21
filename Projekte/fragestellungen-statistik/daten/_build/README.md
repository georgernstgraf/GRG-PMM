# daten/_build — Reproduktions-Skripte

Dieses Verzeichnis enthält die R-Skripte, die die kuratierten CSVs in
`daten/` aus den Rohquellen gebaut haben (Issue #36). Roh-Downloads
sind bewusst **nicht** Teil des Repos (zu groß/ Lizenz-freundlich
 nachvollziehbar) — die Skripte lesen sie aus einem lokalen Ordner.

## Ablauf zur Reproduktion

```sh
# 1) Rohmaterial beschaffen (in beliebigen Ordner, Default /tmp/opencode):
curl -fsSL -o euro2.json "https://ec.europa.eu/eurostat/api/dissemination/statistics/1.0/data/nrg_pc_204?lang=EN&format=JSON&unit=KWH&lastTimePeriod=3"
curl -fsSL -o OGD_krimi001_KRIMI_1.csv "https://data.statistik.gv.at/data/OGD_krimi001_KRIMI_1.csv"
curl -fsSL -o krimi_A10.csv "https://data.statistik.gv.at/data/OGD_krimi001_KRIMI_1_C-A10-0.csv"
curl -fsSL -o krimi_KRIMEA9.csv "https://data.statistik.gv.at/data/OGD_krimi001_KRIMI_1_C-KRIMEA9-0.csv"
curl -fsSL -o gistemp.csv "https://data.giss.nasa.gov/gistemp/tabledata_v4/GLB.Ts+dSST.csv"
curl -fsSL -o deaths.json "https://ec.europa.eu/eurostat/api/dissemination/statistics/1.0/data/demo_r_mwk_ts?lang=EN&format=JSON&unit=NR&sex=T&geo=AT"
curl -fsSL -o owid-covid-data.csv "https://raw.githubusercontent.com/owid/covid-19-data/master/public/data/owid-covid-data.csv"  # 98 MB
curl -fsSL -o hadcrut_annual.csv "https://hadleyserver.metoffice.gov.uk/hadcrut5/data/HadCRUT.5.2.0.0/analysis/diagnostics/HadCRUT.5.2.0.0.analysis.summary_series.global.annual.csv"
curl -fsSL -o arbeitslos_ilo.json "https://ec.europa.eu/eurostat/api/dissemination/statistics/1.0/data/une_rt_a?lang=EN&format=JSON&geo=AT&sex=T&unit=PC_ACT&age=Y15-74&sinceTimePeriod=2010"
# „Kuriose" Datensätze (build_data4.R):
curl -fsSL -o OGDEXT_VORNAMEN_1.csv "https://data.statistik.gv.at/data/OGDEXT_VORNAMEN_1.csv"  # 28 MB
for d in experimentr/mcgrath lme4/cake gt/pizzaplace tidyr/billboard bayesrules/spotify openintro/lego_population; do
  curl -fsSL -o "$(basename "$d").csv" "https://vincentarelbundock.github.io/Rdatasets/csv/$d.csv"
done

# 2) Skripte ausführen — Arbeitsverzeichnis: Repo-Root
Rscript Projekte/fragestellungen-statistik/daten/_build/build_data.R
Rscript Projekte/fragestellungen-statistik/daten/_build/build_data2.R
Rscript Projekte/fragestellungen-statistik/daten/_build/build_data3.R
Rscript Projekte/fragestellungen-statistik/daten/_build/build_data4.R
```

Bei abweichendem Roh-Ordner: `DS_QUELLE=/pfad/zu/rohmaterial Rscript …`.

## Skript-Übersicht

| Skript | Erzeugt | Kern-Technik |
|---|---|---|
| `build_data.R` | `strompreise-eu-haushalte.csv`, `verurteilungen-gerichtsbezirke.csv` | JSON-STAT → tidy (expand.grid über Dimensions-Level, Werte über linearen Index); OGD-Kodiertes + `C-`-Dimension-Files via `merge` |
| `build_data2.R` | `tempanomalien-global.csv`, `wochensterbefaelle-oesterreich.csv`, `covid-impfquote-vs-todesrate.csv` | GISTEMP-Preamble/`***`-Handling; Eurostat-Wochen (ein-freie-Dimension-Fall); OWID-„letzter gemeldeter Wert je Land" |
| `build_data3.R` | `tempanomalien-zwei-quellen.csv`, `covid-at-gemeldet-vs-uebersterblichkeit.csv`, `arbeitslosigkeit-at-ilo.csv` | Zwei-Quellen-Join (Basisperioden intakt lassen!); monatliche Aggregation COVID vs. Übersterblichkeit; Eurostat-JSON mit fixer Alters-Dimension |
| `build_data4.R` | `vornamen-oesterreich-top100.csv`, `schokoladenduft-buchladen.csv`, `schokoladenkuchen-bruchwinkel.csv`, `pizza-verkauf-2015.csv`, `billboard-top100-2000.csv`, `spotify-songs.csv`, `lego-preise.csv` | OGD-Dimension aggregieren + Top-100-Rang je Jahr × Geschlecht; Rdatasets-CSVs 1:1 übernehmen |

## Konvention

- Skripte sind deterministisch — ein Re-Lauf muss die CSVs byte-identisch
  erzeugen (prüfbar mit `git diff`).
- Neuer Datensatz = neues Skript oder neuer Abschnitt, dazu
  `<name>.md`-Metadaten; Einlese-Check per `Rscript` vor dem Commit.
- Revision: vor Unterrichtseinsatz die frisch-aktiven Quellen (Eurostat
  `lastTimePeriod`, OWID, HadCRUT-Versionspfad!) neu ziehen und die
  Skripte erneut laufen lassen — dann sind auch die `cat()`-Plausibilitäts-
  Werte aktuell.
