# Semesterplan 5AHWIT — Sommersemester

Prozessmanagement (PMM) — Maturafach WIT  
KM 9b (RIS BGBl. II Nr. 262/2015, Anlage 1.28, Abschnitt 5)

**Zeitmodell:** 15 Doppelstunden (Februar–April; theoretische Matura ab Anfang Mai)  
**Schwerpunkte:** Zuverlässigkeit (5 E.) · Energiemanagement (4 E.) · Prüfungsvorbereitung (3 E.) · Projekt (3 E.)  
**Werkzeug:** R / RStudio

---

| # | Thema | Halbzeit 1 (Vortrag) | Halbzeit 2 (R-Übung) | HÜ |
|---|-------|---------------------|---------------------|-----|
| 1 | **Zuverlässigkeit: Grundbegriffe** | MTBF, MTTF, λ, Verfügbarkeit (A = MTBF/(MTBF+MTTR)) | `survival`-Paket, Ausfalldaten einlesen | Begriffe definieren |
| 2 | **Weibull-Verteilung** | Parameter-Schätzung, Ausfallverhalten, Badewannenkurve | `fitdistrplus`, `flexsurv::flexsurvreg()` | Weibull-Parameter schätzen |
| 3 | **Systemzuverlässigkeit** | Serien-, Parallel-, k-aus-n-Systeme, RBD | Zuverlässigkeit für Systeme berechnen | RBD für Beispielsystem |
| 4 | **Kaplan-Meier & zensierte Daten** | Rechtszensierung, `survfit()`, `ggsurvplot()` | Survival-Kurven für zensierte Daten | zensierte vs. vollständige Daten |
| 5 | **Reliability im Praxiskontext** | Fallstudie Pumpenausfälle, Badewannenkurve | Komplette Zuverlässigkeitsanalyse | Ausfallprognose |
| 6 | **Energiemanagement I** | ISO 50001, Energieaudit, Endenergieverbrauch | Energiebilanz in R rechnen und plotten | Energieverbrauch erfassen |
| 7 | **Energiemanagement II** | EnPI, Baseline, Regression für Prognose | Multiple Regression: `lm(log(Verbrauch) ~ Temperatur + ...)` | Energieprognose |
| 8 | **Energiemanagement III** | Lastganganalyse, Spitzenlast-Management | Lastgang plotten, Spitzen identifizieren | Lastgangprofil |
| 9 | **Energiemanagement IV** | Wirtschaftlichkeit: Amortisation, Kapitalwert | Investitionsrechnung für Energieprojekte | Business Case |
| 10 | **Zuverlässigkeit & Energie** | Reliability im Energiekontext (Wind/PV) | R: Ausfallmuster erneuerbarer Anlagen | Integration |
| 11 | **Projekt** | Eigenes R-Projekt: Zuverlässigkeit ODER Energieaudit | Selbstständige Arbeit | Projektabgabe |
| 12 | **Prüfungsvorbereitung I** | Theorie-Wiederholung: Statistik, SPC, Prozessfähigkeit | Musterbeispiele rechnen | Übungsblatt |
| 13 | **Prüfungsvorbereitung II** | Theorie-Wiederholung: DOE, Zuverlässigkeit | Musterbeispiele rechnen | Übungsblatt |
| 14 | **Prüfungsvorbereitung III** | R-Prüfungssimulation, offene Fragen | Simulation unter Prüfungsbedingungen | — |
| 15 | **Abschluss & Maturavorbereitung** | Zusammenfassung, Ausblick, letzte Fragen | — | — |

---

**5 Statistik/R · 4 Energie · 3 Prüfung · 3 Projekt**

(KM9b war bereits korrekt auf 15 Doppelstunden gesetzt — Matura-Semester.)
