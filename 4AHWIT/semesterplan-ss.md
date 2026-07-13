# Semesterplan 4AHWIT — Sommersemester

Prozessmanagement (PMM) — Maturafach WIT  
KM 8 (RIS BGBl. II Nr. 262/2015, Anlage 1.28, Abschnitt 5)

**Zeitmodell:** 15 Doppelstunden (1 DS/Woche)  
**Schwerpunkte:** SPC (6 UE) · Prozessfähigkeit (4 UE) · Umwelt & IMS (3 UE) · Abschluss (2 UE)  
**Werkzeug:** R / RStudio

---

## UE 1–6: SPC (Statistische Prozesslenkung)

| UE | Thema | Bemerkung |
|----|-------|-----------|
| 1 | **SPC-Prinzipien & Variablenkarten** | Shewhart, Common/Special Cause, `qcc()`; x̄-R & x̄-s-Karte |
| 2 | **Einzelwert- & attributive Karten** | I-MR; p-, np-, c-, u-Karte in `qcc` |
| 3 | **Regelkarten-Performance & Mustererkennung** | OC/ARL (Average Run Length), Western-Electric- & Nelson-Regeln, `runs.test()` |
| 4 | **CUSUM & EWMA** | Empfindliche Karten für kleine Shifts; `qcc(type="cusum")`, `qcc(type="ewma")` |
| 5 | **SPC-Spezialfälle** | Multivariate T²-Karte (`mqcc`), Short-Run-SPC, Box-Cox-Transformation für nicht-normalverteilte Daten |
| 6 | **SPC-Werkzeuge & Dashboard** | RMarkdown, `flexdashboard`; Automatisierte Regelkarten-Dashboards |

## UE 7–10: Prozessfähigkeit

| UE | Thema |
|----|-------|
| 7 | **Cp/Cpk & Pp/Ppk** | Toleranz vs. Streuung, `SixSigma`-Paket; kurz- vs. langfristige Streuung |
| 8 | **Maschinenfähigkeit & Cpm** | Cm/Cmk-Abgrenzung; Cpm (Taguchi-Loss, Zielwert-basierte Fähigkeit) |
| 9 | **Nicht-normalverteilte Fähigkeit & MSA** | Quantil-Methode, Johnson-Transformation (`fitdistrplus`); Gage R&R (`SixSigma::ss.rr()`) |
| 10 | **Fähigkeitsbericht** | Nach ISO 22514; vollständiger Bericht in RMarkdown |

## UE 11–13: Umwelt & integrierte Systeme

| UE | Thema |
|----|-------|
| 11 | **Umweltrecht & ISO 14001 Planung** | UVP-G, AWG 2002, WRG 1959; Umweltaspekte, bindende Verpflichtungen, Signifikanz |
| 12 | **ISO 14001 Umsetzung & Umweltkennzahlen** | Umweltprogramm, Audit, Management Review; EnPI, EMAS, Reporting-Dashboards |
| 13 | **Integrierte Managementsysteme & MFCA** | ISO 9001+14001 High Level Structure; Materialflusskostenrechnung nach ISO 14051 |

## UE 14–15: Abschluss

| UE | Thema |
|----|-------|
| 14 | **Fallstudie**: SPC + Prozessfähigkeit + ISO 14001-Audit (durchgängig) |
| 15 | **Semesterabschluss & Leistungsfeststellung** |

---

**Schwerpunkte:** 10 UE Statistik/R · 3 UE Umwelt/IMS · 2 UE Abschluss

(Überarbeitet 2026-07 — korrigiert auf 15 Doppelstunden, 1 DS/Woche, zuvor fälschlich „30 Doppelstunden (4 h/Woche)" angenommen.)
