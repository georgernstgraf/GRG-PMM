# Thema: Impfungen & Corona-Verschwörungsmythen

Querverzicht: übergeordnetes Projekt-README (Konvention, Status-Legende)
in diesem Ordner. Ziel dieses Files: **nicht** die Debatte als
Stimmungsabstimmung führen, sondern zeigen, welche Mythen mit
amtlichen Daten *statistisch beantwortbar* sind — und welche Fragen
man Daten allein nicht beantworten kann (dorthin gehört die
Ehrlichkeits-Abschnitt unten).

**Recherche-Stand:** 2026-10-19

---

## Der methodische Rahmen

Corona-Mythen sind ein Lehrbuch-Fall für genau die Werkzeuge aus KM7:
Kontingenztafeln, Raten vs. Absolute Zahlen, Konfundierung,
Simpson-Paradox, Übersterblichkeit als „indirektes" Maß. Der rote
Faden der Lektion: **„Wie würde die Zahl aussehen, wenn der Mythos
stimmen würde — und wie sieht sie wirklich aus?"**

---

## F-C1: „Das Virus ist harmlos / die Pandemie war inszeniert" — Übersterblichkeit

- **Ausgangsfrage:** Wenn COVID „nur eine Grippe" wäre: dürfte die
  Gesamtsterblichkeit springen? Die Wochensterbefälle Österreichs
  (2000–2026) beantworten das ohne jede Diagnose-Definition — man zählt
  Leichen, nicht Testergebnisse.
- **Daten:** 📦 `daten/wochensterbefaelle-oesterreich.csv` (Eurostat
  `demo_r_mwk_ts`, AT 2000–W32/2026; Metadaten
  `wochensterbefaelle-oesterreich.md`)
- **Aufgabenskizze:** Baseline: Mittel + Band je Kalenderwoche über
  2015–2019 (oder 2000–2019) · 2020/21 einzeichnen — sichtbarer Sprung
  · „Erwartete vs. beobachtete Tote" zählen · Übersterblichkeit als
  Prozent · Jahresaggregat: 2019 = 81.557 → 2020 = 91.196 Sterbefälle
  (+11,8 %) · Diskussion: warum sind 2022+ auch erhöht (Nachbeben,
  Demografie — Baselinerfragen!)
- **R:** `dplyr` (group_by, Kalenderwoche), `ggplot2` (Ribbon-Band)
- **UE-Anker:** KM7 UE 4–5 (Erwartungswerte, Intervalle), UE 1–3 (EDA)
- **Status:** 📦 Daten im Repo
- **Was der Mythos stattdessen behauptet** („Falschpässe",
  „registrierte statt gestorbene"): hier endet die Statistik und beginnt
  die Evidenzprüfung — siehe Ehrlichkeit unten.

## F-C2: „Die Impfung nutzt nichts / tötet mehr als sie rettet"

- **Ausgangsfrage (ökologisch):** Länder mit hoher Impfquote — haben die
  weniger COVID-Tote? 45-Länder-Schnitt: Bulgarien (~32 % geimpft)
  5.657 Tote/Mio vs. Österreich (~77 %) 2.486, UK/Portugal über 3.000
  bei >90 % — der Zusammenhang ist **nicht** sauber monoton, und genau
  das ist der Lernmoment.
- **Daten:** 📦 `daten/covid-impfquote-vs-todesrate.csv` (OWID, Stichtag
  Ende 2023 bzw. letzter Meldewert je Land; Metadaten
  `covid-impfquote-vs-todesrate.md`)
- **Aufgabenskizze:** Streudiagramm Impfquote × Todesrate · Korrelation
  schätzen, Ausreißer identifizieren · **Dann die Kippfrage:** Warum
  sind reiche Länder mit hoher Impfquote auch alt und reiseintensiv?
  Konfundierung, ökologischer Fehlschluss · Motto: Länder-Vergleiche
  können eine These *widerlegen* (schon die Richtung fehlt), aber sie
  können die Wirkung nicht *messen* — dafür braucht es innerhalb-Land-
  Vergleiche nach Impfstatus
- **R:** `ggplot2` (geom_point, geom_smooth), `cor.test`
- **UE-Anker:** KM7 UE 6–7 (Korrelation/Assoziation vs. Kausalität),
  Anknüpfung an Femizid-Doku (Kapitel „Konfundierung & Simpson")
- **Status:** 📦 Daten im Repo

### Innerhalb-Land: Death Rates nach Impfstatus

- **Daten:** 🔗 OWID-Artikel [„How do death rates from COVID-19 differ
  between people who are vaccinated and those who are not?"](https://ourworldindata.org/covid-deaths-by-vaccination)
  mit amtlichen Raten-Daten der **USA (CDC)**, **England (ONS)** und
  der **Schweiz (BAG)**; Roh-CSVs im OWID-Grapher:
  `united-states-rates-of-covid-19-deaths-by-vaccination-status`,
  `england-covid-19-mortality-rate-by-vaccination-status` (beide
  verifiziert, 200; Charts nicht weiter gepflegt seit 8/2023)
- **Unterrichtskern:** der Artikel ist selbst eine Base-Rate-Fehlschluss-
  Mini-Lektion („Die Hälfte der Toten war geimpft!" — was fehlt, ist der
  Nenner). Die rohen Grapher-CSVs erlauben es, die Rate-Berechnung
  selbst nachzubauen.
- **Status:** 🔗 nur Link

## F-C3: „Geimpfte sterben öfter" — Simpson-Paradox mit echten Daten

- **Ausgangsfrage:** Rohzahlen: mehr Tote unter Geimpften (weil mehr und
  ältere Menschen geimpft sind). Stratifiziert nach Alter kehrt sich der
  Effekt um — das Simpson-Paradoxon mit amtlichen Daten, nicht mit
  erfundenen Zahlen.
- **Daten:** 🔗 dieselben OWID/CDC/ONS-Quellen wie oben (altersspezifische
  Raten); alternativ altersstratifizierte Österreich-Daten
  (BMSGPK/AGES-Berichte) — bei Aufgaben-Bau kuratieren
- **Aufgabenskizze:** Raten je Impfstatus + Altergruppe berechnen ·
  aggregierte vs. stratifizierte Tabelle nebeneinander · identisches
  Muster wie in der Femizid-Doku (Kapitel 5.3) — Doppelung bewusst:
  zwei völlig verschiedene Kontexte, ein Strukturfehler
- **UE-Anker:** KM7 UE 7 (χ²/Kontingenz), UE 8
- **Status:** 🔗 nur Link

---

## Ehrlichkeit: Was Statistik hier leisten kann — und was nicht

1. **Beantwortbar mit den obigen Daten:** Gibt es Übersterblichkeit
   (ja/nein, Größe)? Korreliert Impfquote auf Länderebene mit Mortalität
   (ja, mit Konfundierungs-Vorbehalten)? Ist „die Hälfte der Toten war
   geimpft" ein schlüssiges Argument (nein — Base-Rate)?
2. **Nur mit Studien-Level-Evidenz** (Impfstoff-Überwachung, Autopsie-
   Register, RCTs): Einzelne Todesfälle kausal zuordnen; Nebenwirkungs-
   Raten präzise quantifizieren. Diese Ebene gehört nicht in die DS,
   aber die *Abgrenzung* gehört in die DS.
3. **Nicht beantwortbar, sondern Motiv-/Absichtsfragen** („war inszeniert"):
   Statistik kann Widersprüche zwischen Behauptung und Daten zeigen, aber
   Absichten beweist sie nicht. Wer das nicht trennt, macht dieselbe
   Kategorie-Verwechslung wie der Mythos.

Unterrichtshinweis: gleicher Stil wie die Femizid-Doku (Kapitel 5.6) —
rote Faden ist die Methode, nicht die Schlagzeile; Schüler:innen mit
Impfskepsis nicht als Feindbild behandeln, sondern als Zielgruppe der
Methodik.

## Quellen

| Quelle | Was | Status |
|---|---|---|
| Eurostat `demo_r_mwk_ts` (Databrowser: <https://ec.europa.eu/eurostat/databrowser/view/demo_r_mwk_ts>) | Wochensterbefälle AT/EU | 📦 kuratiert (AT) |
| OWID COVID-Datensatz (<https://github.com/owid/covid-19-data>, CSV `public/data/owid-covid-data.csv`) | Fälle, Tode, Impfquoten je Land/Tag | 📦 Schnitt (45 Länder) |
| OWID-Artikel <https://ourworldindata.org/covid-deaths-by-vaccination> | Death rates nach Impfstatus (US/England/CH), Base-Rate-Erklärung | 🔗 |
| OWID-Artikel <https://ourworldindata.org/covid-vaccinations> | Impfdaten global, Methodik/Denominatoren | 🔗 |
| US CDC / England ONS (via OWID-Grapher) | alters- und status-spezifische Todesraten | 🔗 |
| OWID Excess-Mortality-Datensatz (im `owid-covid-data.csv` enthalten: `excess_mortality_*`) | Estimated excess deaths | 🔗 (im Gesamtsatz) |

Konflikt-Übung „gemeldete COVID-Tode vs. Übersterblichkeit" (monatlich
kuratiert): [`datensaetze-im-widerspruch.md`](datensaetze-im-widerspruch.md) F-W2.
