# Semesterplan 4AHWIT — Wintersemester

Prozessmanagement (PMM) — Maturafach WIT  
KM 7 (RIS BGBl. II Nr. 262/2015, Anlage 1.28, Abschnitt 5)

**Zeitmodell:** 30 Doppelstunden (4 h/Woche)  
**Schwerpunkte:** Statistische Tests (23 E.) · Grundlagen Umweltmanagement (5 E.) · Fallstudie (2 E.)  
**Werkzeug:** R / RStudio

---

## Block A: R-Grundlagen & Deskriptive Statistik (1–5)

| # | Thema | Halbzeit 1 (Vortrag) | Halbzeit 2 (R-Übung) | HÜ |
|---|-------|---------------------|---------------------|-----|
| 1 | **R-Einführung & RStudio** | Installation, Workspace, Packages, `?`, `??` | Erste Schritte: `c()`, `seq()`, `rep()`, Vektorrechnung | R + RStudio installieren |
| 2 | **Datenstrukturen in R** | Vektoren, Matrizen, Dataframes, Lists, Factors | `data.frame()`, `matrix()`, `list()`, `factor()` | `mtcars`-Datensatz inspizieren |
| 3 | **Daten einlesen & bereinigen** | `read.csv()`, `dplyr::filter()`, `mutate()`, `select()` | CSV-Datei einlesen, Spalten filtern, neue berechnen | NA-Werte mit `na.omit()` behandeln |
| 4 | **Deskriptive Statistik** | `summary()`, `mean()`, `sd()`, `var()`, `quantile()` | `iris`-Datensatz: deskriptive Auswertung | `group_by()` + `summarise()` |
| 5 | **Visualisierung I** | `ggplot2`: Histogramm, Boxplot, Scatterplot, `facet_wrap()` | Desktiptive Grafiken für `diamonds`-Datensatz | eigene Grafik für `mpg` |

## Block B: Wahrscheinlichkeiten & Verteilungen (6–9)

| # | Thema | Halbzeit 1 (Vortrag) | Halbzeit 2 (R-Übung) | HÜ |
|---|-------|---------------------|---------------------|-----|
| 6 | **Normalverteilung** | Dichte, Verteilungsfunktion, Q-Q-Plot | `qqnorm()`, `shapiro.test()` | Shapiro-Wilk-Interpretation |
| 7 | **t-Verteilung, χ², F-Verteilung** | Freiheitsgrade, Anwendungsbereiche | `dt()`, `pt()`, `qt()` — Verteilungen plotten | Aufgabenblatt zu Verteilungen |
| 8 | **Binomial- & Poisson-Verteilung** | Zähldaten, `dbinom()`, `ppois()` | Anwendung auf Fehlerdaten | Fehlerwahrscheinlichkeiten berechnen |
| 9 | **Visualisierung II** | `ggplot2`-Advanced: Themes, Scales, `patchwork` | Dashboards mit mehreren Plots | Dashboard für eigenen Datensatz |

## Block C: Statistische Tests (10–17)

| # | Thema | Halbzeit 1 (Vortrag) | Halbzeit 2 (R-Übung) | HÜ |
|---|-------|---------------------|---------------------|-----|
| 10 | **t-Test: Einstichprobe** | Hypothesenformulierung, `t.test()`, p-Wert | `iris`-Daten: t-Test gegen Sollwert | p-Wert interpretieren |
| 11 | **t-Test: Zweistichprobe & gepaart** | Homoskedastizität, `var.test()`, Welch-Korrektur | Zwei Produktionschargen vergleichen | Testprotokoll schreiben |
| 12 | **Effektstärke & Power-Analyse** | `cohen.d()`, `pwr`-Paket, α, β, Power | `pwr.t.test()` für Stichprobenumfang | Power-Kurve plotten |
| 13 | **χ²-Test: Unabhängigkeit** | Kontingenztafeln, `chisq.test()`, `fisher.test()` | Fehlerdaten auf Unabhängigkeit prüfen | `assocstats()` für Cramérs V |
| 14 | **χ²-Test: Anpassungstest** | Erwartete vs. beobachtete Häufigkeiten | Verteilungstest mit `chisq.test()` | Anpassungstest dokumentieren |
| 15 | **ANOVA: Einfaktoriell** | `aov()`, `summary()`, `TukeyHSD()` | Maschineneinstellungen vergleichen | Effektgröße η² berechnen |
| 16 | **Nichtparametrische Tests** | Wilcoxon, Mann-Whitney-U, Kruskal-Wallis | `wilcox.test()`, `kruskal.test()` | parametrisch vs. nichtparametrisch |
| 17 | **Multiple Tests & Korrektur** | Bonferroni, Holm, BH, Familywise Error Rate | `p.adjust()` auf mehrere Vergleiche | Fehler 1. Art erklären |

## Block D: Annahmestichprobenprüfung (18–23)

| # | Thema | Halbzeit 1 (Vortrag) | Halbzeit 2 (R-Übung) | HÜ |
|---|-------|---------------------|---------------------|-----|
| 18 | **Grundlagen der Stichprobenprüfung** | AQL, LTPD, Produzenten-/Konsumentenrisiko | OC-Kurve per Hand zeichnen | Begriffe definieren |
| 19 | **OC-Kurven** | Operating Characteristic, Einfluss von n und c | OC-Kurven in R plotten | OC-Kurven-Familie |
| 20 | **Einfache Stichprobenpläne** | ISO 2859, `AcceptanceSampling`-Paket | Stichprobenplan entwerfen | AQL-Tabelle lesen |
| 21 | **Doppelte & multiple Pläne** | Reduzierte Prüfung, Switching Rules | Doppelten Stichprobenplan rechnen | Switching-Rules skizzieren |
| 22 | **Variable Stichprobenprüfung** | ISO 3951, σ-bekannt vs. σ-unbekannt | Variablen-Prüfplan in R | k-Methode anwenden |
| 23 | **Praxis Stichprobenprüfung** | Wareneingangsdaten, Plan entwerfen | Komplette Prüfplan-Erstellung | Prüfplan dokumentieren |

## Block E: Umweltmanagement (24–28)

| # | Thema | Halbzeit 1 (Vortrag) | Halbzeit 2 (R-Übung) | HÜ |
|---|-------|---------------------|---------------------|-----|
| 24 | **Betriebliche Umweltprüfung** | Umweltaspekte, Bewertungskriterien, Signifikanz | Aspekte eines Beispielbetriebs identifizieren | Checkliste Umweltaspekte |
| 25 | **Stoffflussanalyse** | Systemgrenzen, Materialbilanzen | Sankey-Diagramm mit `networkD3` | Stofffluss für Teilprozess |
| 26 | **Ökobilanz I (LCA)** | Goal & Scope, Life Cycle Inventory | Daten sammeln, Bilanzgrenzen definieren | Inventory-Tabelle |
| 27 | **Ökobilanz II** | Impact Assessment, Interpretation | Ökobilanz rechnen, Ergebnis plotten | Auswertung dokumentieren |
| 28 | **Abfall- & Ressourcenmanagement** | Kreislaufwirtschaft, Abfallhierarchie, Recycling | Abfallbilanz in R | Abfallkonzept skizzieren |

## Block F: Abschluss (29–30)

| # | Thema |
|---|-------|
| 29 | **Fallstudie**: Statistischer Test + Stichprobenprüfung + Umweltbilanz (durchgängig) |
| 30 | **Semesterabschluss & Leistungsfeststellung** |

---

**23 Statistik/R · 5 Umwelt · 2 Projekt**
