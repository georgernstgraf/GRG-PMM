# covid-impfquote-vs-todesrate.csv

- **Herkunft:** Our World in Data (`owid/covid-19-data` GitHub-Repo,
  `public/data/owid-covid-data.csv`, 98 MB) — kuratiert auf 45 Länder
  (EU27 + CH, GBR, USA, CAN, AUS, JPN, KOR, ISR, ZAF, BRA, ARG, CHL,
  MEX, COL, TUR, RUS, UKR, IND, CHN)
- **Pro Land:** **letzter gemeldeter Wert ≤ 2023-12-31** je Spalte
  (`stichtag_impfquote` nennt das Datum; Österreich meldete ab
  Mitte 2023 keine Impfquoten mehr → dort 2023-06-30)
- **Inhalt:** Spalten: `iso_code, location, population, gdp_per_capita,
  life_expectancy, stichtag_impfquote, total_deaths_per_million,
  total_cases_per_million, people_vaccinated_per_hundred,
  people_fully_vaccinated_per_hundred, total_boosters_per_hundred`
- **Lizenz:** CC BY 4.0 (Our World in Data); Rohquellen: WHO, national
  Gesundheitsbehörden — Zitierweise im Repo-README je Land
- **Stand:** heruntergeladen 2026-10-19 (Datensatz bis Ende 2024+)
- **R-Einlesen:** `read.csv(...)` — geprüft per `Rscript` (45 Zeilen;
  Spanne Impfquote 31,8–95,6 %, Todesrate 82–5.657/Mio)
- **Nutzung:** `corona-impfmythen.md` F-C2 (ökologischer Vergleich +
  Konfundierung)
- **Unterrichts-Fallstricke:** Stichdaten variieren je Land (Spalte
  `stichtag_impfquote`); ökologischer Fehlschluss — der Ländervergleich
  widerlegt, misst aber keine Impfwirkung; Konfundierung über
  `gdp_per_capita`/`life_expectancy` im Satz mitgeliefert, um sie
  *sichtbar* zu machen
