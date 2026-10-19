# arbeitslosigkeit-at-ilo.csv

- **Herkunft:** Eurostat `une_rt_a` (Unemployment rate by sex, age and
  annual), gefiltert `geo=AT, sex=T, unit=PC_ACT, age=Y15-74` —
  ILO-Konzept; Databrowser:
  https://ec.europa.eu/eurostat/databrowser/view/une_rt_a
- **Inhalt:** 16 Zeilen (2010–2025) · Spalten: `jahr, ilo_quote`
  (internationale Arbeitslosenquote, % der Erwerbspersonen 15–74)
- **Lizenz:** CC BY 4.0 (Eurostat)
- **Stand:** heruntergeladen 2026-10-19 (Werte 2025 vorläufig)
- **R-Einlesen:** `read.csv(...)` — geprüft per `Rscript` (Spanne
  4,8–6,5 %; 2025 = 5,7 %, konsistent mit Statistik Austria)
- **Nutzung:** `datensaetze-im-widerspruch.md` F-W3 (ILO-Schiene)
- **Partner-Daten:** AMS/nationale Quote (Registerarbeitslosenquote) —
  Link-Ebene in `datensaetze-im-widerspruch.md` F-W3 (AMS-Fachbegriffe,
  Monats-Übersicht, Statistik Austria); für die Konflikt-Übung
  händisch aus der AMS-Übersicht ablesen oder bei Aufgaben-Bau
  kuratieren
- **Unterrichts-Fallstricke:** `age=TOTAL` existiert in `une_rt_a` nicht
  (Alter wie Y15-74, Y15-24, …); ohne Alters-Filter erhält man Y15-24
  (Jugendarbeitslosigkeit ~10 %) — der Stolperstein ist der Lernmoment;
  Eurostat revidiert Werte nach (Fachbegriffe-Seite AMS weist explizit
  darauf hin)
