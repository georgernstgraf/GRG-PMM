# KM9a — Fragestellungen mit Datenmaterial

**KM9a:** Industrielle Versuchsmethoden — DoE/RSM + Facility Management
(5HWIT, WS)
**Semesterplan:** `lehrplan/pmm-hwit/jg5-semesterplan-ws.md`
**Steckbrief:** `lehrplan/kompetenzmodule/km9a.md`
**Konvention/Status-Legende:** siehe `README.md` in diesem Ordner.

> **Ehrliche Grundlinie:** DoE braucht *geplante* Versuche. Öffentliche
> Beobachtungsdaten (Statistik Austria, Eurostat) sind dafür keine
> Quelle — hier dafür sorgen echte, publizierte Versuchsdatensätze
> (`agridat`, gekennzeichnet) oder klar markiertes Eigenmaterial.
> Öffentliche Daten fließen in den FM/Energie-Teil.

| Block | Eignung offener Daten |
|---|---|
| UE 1–9 DoE (voll-/teilfaktoriell, Blöcke) | ⭐⭐⭐ via `agridat`-Versuchsdaten |
| UE 10 RSM | ⭐ (knapp — siehe F6) |
| Workshops (UE 7/UE 11) | nutzt dieselben Datensätze |
| FM/Energie-Teil | ⭐⭐⭐ Eurostat `nrg_*` / OGD |

---

## UE 2–3: Vollfaktorielle Pläne

### F1: Bohnen-Faktorexperiment 2×2×2×2 — die komplette Effekttabelle

- **Ausgangsfrage:** Vier Faktoren (je 2 Stufen) an 32 Parzellen: welche
  Haupteffekte und Wechselwirkungen bestimmen den Ertrag?
- **Daten:** 📦 `daten/cochran-factorial.csv` (aus `agridat::cochran.factorial`,
  klassisches 2⁴-Faktorexperiment Bohnen; Metadaten `cochran-factorial.md`)
- **Aufgabenskizze:** `lm(yield ~ d * n * p * k)` → Effekttabelle ·
  Interaktionsplots (`interaction.plot`) · Haupteffekte lesen und
  wirtschaftlich interpretieren (d = Dung, n = Nitrochalk, p = Phosphor,
  k = Kalium) · Vergleich mit Daniel-Plot (`FrF2::DanielPlot`)
- **R:** `lm`, `FrF2`, `interaction.plot`
- **UE-Anker:** UE 2 (Vollfaktoriell I), UE 3 (Wechselwirkungen)
- **Status:** 📦 Daten im Repo

### F2: Vier-Faktor-Versuch Triticale — Varianten-Übung

- **Ausgangsfrage:** Gleiche Werkzeuge, anderer Versuch (54 Beobachtungen,
  4 Faktoren): Konsolidierung durch Wiederholung mit neuem Datensatz.
- **Daten:** 🔗 `agridat::besag.triticale` — CSV kann bei Bedarf aus dem
  Index gezogen werden (`grep besag.triticale daten/_index/datasets.csv`)
- **Aufgabenskizze:** wie F1, zusätzlich Modellreduktion (nichtsignifikante
  Interaktionen entfernen)
- **UE-Anker:** UE 3–4
- **Status:** 🔗 via Index verfügbar

---

## UE 5: Teilfaktorielle Pläne

### F3: 1/3-Teilfaktor 3⁵ am Zuckerrohr — Confounding hautnah

- **Ausgangsfrage:** Fünf Faktoren à 3 Stufen, aber nur 81 statt
  243 Kombinationen: Was kann man noch schätzen, was ist vermischt?
- **Daten:** 📦 `daten/chinloy-fractionalfactorial.csv` (aus
  `agridat::chinloy.fractionalfactorial`; Metadaten
  `chinloy-fractionalfactorial.md`)
- **Aufgabenskizze:** Design-Matrix inspizieren (Faktoren `n, p, k, b, m`
  à 3 Stufen) · `lm(yield ~ n*p*k*b*m)` und `alias()` zeigen, welche
  Effekte kollidieren · Vergleich: Was hätte der Vollplan gekostet
  (243 statt 81 Parzellen)? · Half-/Quartnormal-Plot
- **R:** `lm`, `alias`, `FrF2::DanielPlot`
- **UE-Anker:** UE 5 (Teilfaktoriell)
- **Status:** 📦 Daten im Repo

---

## UE 6: Blöcke & Screening

### F4: Lateinisches Quadrat bei der Probenahme — Operator-Bias

- **Ausgangsfrage:** Sechs Weizenplots werden von sechs Operator:innen
  gemessen (`diff` = gemessene − wahre Höhe), angeordnet als 6×6-
  Latin-Square: Wie viel Messfehler macht die Person (Operator), wie
  viel der Plot und wie viel die Mess-Sequenz?
- **Daten:** 📦 `daten/cochran-latin.csv` (aus `agridat::cochran.latin`;
  Metadaten `cochran-latin.md`)
- **Aufgabenskizze:** `aov(diff ~ operator + row + col)` vs.
  `aov(diff ~ operator)` — Block-Terme wegnehmen und vergleichen ·
  Operator-Mittelwerte interpretieren (systematischer Bias?) ·
  Diskussion: Randomisierung vs. Blocking
- **R:** `aov`, `model.tables`
- **UE-Anker:** UE 6 (Blockfaktoren)
- **Status:** 📦 Daten im Repo

### F5: Strip-Split-Plot Gerste — „mehrstufiger Fehler-term"

- **Ausgangsfrage:** Dünger × Kalzium × Boden in Strip-Split-Plot-Struktur:
  Warum sind hier die Standard-F-Werte *falsch*, wenn man die
  Randomisierung ignoriert?
- **Daten:** 📦 `daten/cox-stripsplit.csv` (aus `agridat::cox.stripsplit`;
  Metadaten `cox-stripsplit.md`)
- **Aufgabenskizze:** Datenstruktur lesen (`rep` × `soil` Strip, `fert`
  vertikale Streifen, `calcium` Subplots) · richtige Fehlerterme
  (`aov(yield ~ fert*calcium*soil + Error(...))`) diskutieren ·
  Vergleich mit naivem `lm` · Unterrichtspunkt: Design schreibt die
  Analyse vor
- **R:** `aov` mit `Error()`, `agricolae`-Paket optional
- **UE-Anker:** UE 6 (Split-Plot-Idee)
- **Status:** 📦 Daten im Repo

*(Ergänzend verfügbar, nicht kuratiert: `brandt.switchback` — Switchback
an Milchkühen, perfekt für „Umstellungseffekte & Blöcke über die Zeit"
nachdem Bedarf da ist.)*

---

## UE 8–9: Response Surface Methodology

### F6: RSM — Datenlage ehrlich bewerten

- **Ausgangsfrage:** RSM braucht gezielte sequenzielle Versuche
  (Steigungsrichtung, Zentrumspunkte, quadratisches Modell). Der
  `agridat`-Katalog hat wenige echte RSM-Datensätze; was es hat:
  z. B. `carmer.density` (nichtlineares Mais-Ertragsdichte-Modell).
- **Daten:** 🔗 `agridat::carmer.density` als Auswertungsübung (bei Bedarf
  aus dem Index ziehen); die sequenzielle RSM-Komponente bleibt 🏭
  Eigenmaterial (Klassiker: `rsm`-Beispiel `chemical`/`carbon` aus dem
  Paket — als „Nachbau mit bekannten Daten" ehrlich deklariert)
- **UE-Anker:** UE 8–9
- **Status:** 🔗 + 🏭 Kombination

---

## FM-/Energie-Teil (Lehrplan-Bereich 2)

### F7: Strompreise Europa — FM-Energie-Grundlage

- **Ausgangsfrage:** identische Datenbasis wie KM7-F1
  (`daten/strompreise-eu-haushalte.csv`), hier aus FM-Sicht: Energie-
  beschaffungsrelevante Preisunterschiede, Verteilung, AT-Position.
- **Aufgabenskizze:** EDA + Gruppenvergleiche (t-Test KM7-Recap) ·
  Anschluss-Frage für Facility Management: Was bedeutet Preisvolatilität
  für Energiebeschaffung/Contracting?
- **UE-Anker:** FM-Block
- **Status:** 📦 Daten im Repo (geteilt mit KM7-F1)

### F8: Energiebilanzen & Energiekennzahlen EU-weit

- **Ausgangsfrage:** Energieintensität, Verbrauch nach Sektoren:
  Ländervergleiche als Übungsfeld für Energiebilanzen (Lehrplan KM9b-
  Vorläufer).
- **Daten:** 🔗 Eurostat `nrg_*`-Familie via
  [`eurostat`-Paket](https://cran.r-project.org/package=eurostat)
  (z. B. `nrg_bal_s`, `ten00125`); Databrowser:
  <https://ec.europa.eu/eurostat/databrowser/view/nrg_bal_s>
- **Aufgabenskizze:** Datenzugang üben (get/label/search des Pakets) ·
  Sankey der Energieflüsse (`networkD3`) als FM-Anschluss
- **UE-Anker:** FM-Block · Brücke zu KM9b (Energiemanagement, SS)
- **Status:** 🔗 nur Link (API-Zugang, nicht kuratiert)

*(Statistik Austria: Energiebilanzen/-daten sind im OGD-Portal nicht
vertreten — STATcube braucht Lizenz. Eigenmaterial-Kandidat für die
FM-UE, siehe Ressourcen-Matrix.)*

---

## Workshops (UE 7 und 11)

Nutzen dieselben Datensätze: **Workshop I** = kompletter Zyklus an
F1 (Plan nachstellen → Auswerten → Berichten); **Workshop II** (im
Semesterplan als geführtes Experiment mit `optFederov`) — Datengrundlage
bleibt 🏭 Eigenmaterial (eigene Schüler-Messung), der Berichts-Teil kann
an F1/F3 üben.

## Verweise

- Rdatasets-Katalog: `daten/_index/datasets.csv`
- Eurostat-Databrowser: <https://ec.europa.eu/eurostat/databrowser/>
- Statistik Austria OGD-Katalog:
  <https://data.statistik.gv.at/web/catalog.jsp>
