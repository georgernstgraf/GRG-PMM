# Semesterplan 5HWIT — Sommersemester

Prozessmanagement (PMM) — Maturafach WIT  
KM 9b (RIS BGBl. II Nr. 262/2015, Anlage 1.28, Abschnitt 5)

**Zeitmodell:** 15 Doppelstunden (Februar–April; theoretische Matura ab Anfang Mai)  
**Schwerpunkte:** Zuverlässigkeit (5 E.) · Energiemanagement (4 E.) · Prüfungsvorbereitung (3 E.) · Projekt (3 E.)  
**Werkzeug:** R / RStudio  
**Arbeitsteilung:** Strang-Trennung — Georg = Statistik-Strang mit R
(Zuverlässigkeit), Kollege = Management-Strang (Energie, Projekt);
Details siehe Abschnitt „Arbeitsteilung" am Ende.

---

| # | Thema | Halbzeit 1 (Vortrag) | Halbzeit 2 (R-Übung) | HÜ | Wer |
|---|-------|---------------------|---------------------|-----|-----|
| 1 | **Zuverlässigkeit: Grundbegriffe** | MTBF, MTTF, λ, Verfügbarkeit (A = MTBF/(MTBF+MTTR)) | `survival`-Paket, Ausfalldaten einlesen | Begriffe definieren | Georg |
| 2 | **Weibull-Verteilung** | Parameter-Schätzung, Ausfallverhalten, Badewannenkurve | `fitdistrplus`, `flexsurv::flexsurvreg()` | Weibull-Parameter schätzen | Georg |
| 3 | **Systemzuverlässigkeit** | Serien-, Parallel-, k-aus-n-Systeme, RBD | Zuverlässigkeit für Systeme berechnen | RBD für Beispielsystem | Georg |
| 4 | **Kaplan-Meier & zensierte Daten** | Rechtszensierung, `survfit()`, `ggsurvplot()` | Survival-Kurven für zensierte Daten | zensierte vs. vollständige Daten | Georg |
| 5 | **Reliability im Praxiskontext** | Fallstudie Pumpenausfälle, Badewannenkurve | Komplette Zuverlässigkeitsanalyse | Ausfallprognose | Georg |
| 6 | **Energiemanagement I** | ISO 50001, Energieaudit, Endenergieverbrauch | Energiebilanz in R rechnen und plotten | Energieverbrauch erfassen | Kollege |
| 7 | **Energiemanagement II** | EnPI, Baseline, Regression für Prognose | Multiple Regression: `lm(log(Verbrauch) ~ Temperatur + ...)` | Energieprognose | Kollege (R-Anteil: Georg als Gast) |
| 8 | **Energiemanagement III** | Lastganganalyse, Spitzenlast-Management | Lastgang plotten, Spitzen identifizieren | Lastgangprofil | Kollege |
| 9 | **Energiemanagement IV** | Wirtschaftlichkeit: Amortisation, Kapitalwert | Investitionsrechnung für Energieprojekte | Business Case | Kollege |
| 10 | **Zuverlässigkeit & Energie** | Reliability im Energiekontext (Wind/PV) | R: Ausfallmuster erneuerbarer Anlagen | Integration | Beide |
| 11 | **Projekt** | Eigenes R-Projekt: Zuverlässigkeit ODER Energieaudit | Selbstständige Arbeit | Projektabgabe | Beide (Betreuung je Strang) |
| 12 | **Prüfungsvorbereitung I** | Theorie-Wiederholung: Statistik, SPC, Prozessfähigkeit | Musterbeispiele rechnen | Übungsblatt | Beide (Georg: Statistik) |
| 13 | **Prüfungsvorbereitung II** | Theorie-Wiederholung: DOE, Zuverlässigkeit | Musterbeispiele rechnen | Übungsblatt | Beide (Georg: Statistik) |
| 14 | **Prüfungsvorbereitung III** | R-Prüfungssimulation, offene Fragen | Simulation unter Prüfungsbedingungen | — | Beide |
| 15 | **Abschluss & Maturavorbereitung** | Zusammenfassung, Ausblick, letzte Fragen | — | — | Beide |

---

**5 Statistik/R · 4 Energie · 3 Prüfung · 3 Projekt**

(KM9b war bereits korrekt auf 15 Doppelstunden gesetzt — Matura-Semester.)

---

## Arbeitsteilung Georg ↔ Kollege (Strang-Trennung)

**Georg (Statistik-Strang):** UE 1–5 (Zuverlässigkeit mit R);
in UE 10–14 jeweils der Statistik-Anteil; R-Anteil von UE 7
(EnPI-Regression, als Gast in der Kollegen-UE); R-Prüfungssimulation (UE 14).

**Kollege (Management-Strang):** UE 6–9 (Energiemanagement: ISO 50001,
Audit, EnPI, Lastgang, Wirtschaftlichkeit — klassisches
Wirtschaftsingenieur-Handwerk ohne Statistik); in UE 10–14 jeweils der
Management-Anteil; Mitbetreuung Projekt (UE 11) für Energieaudit-Themen.

**SS-Bilanz:** ca. 6–7 UE Georg vs. 5–6 UE Kollege (+ gemeinsame UE 10,
11, 14, 15) — gleicht die WS-Schieflage (ca. 10:2–3, siehe
`jg5-semesterplan-ws.md`) über das Jahr weitgehend aus.

**Schnittstellen:**
- **UE 7 (EnPI-Regression):** einzige R-Stelle im Kollegen-Block —
  Georg übernimmt die Halbzeit 2 als Gast, Kollege Kontext und HÜ.
- **UE 11 (Projekt):** Themenwahl je Strang (Zuverlässigkeit ↔
  Energieaudit), Betreuung getrennt, Abgabe-Kriterien gemeinsam.
- **Matura:** gemeinsamer Fragenpool (je 50 % pro Strang); UE 12–14 als
  geteilte Prüfungsvorbereitung; UE 15 gemeinsam.
- **Energie-Eigenmaterial:** UE 6–9 haben keinen Buch-Anker (Matrix:
  voller Eigenbedarf, nur ISO 50001 als Referenz) — Kollege braucht
  Vorlaufzeit ab WS.
