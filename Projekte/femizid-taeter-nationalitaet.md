# Femizid & Täter-Nationalität

**Ausgangsfrage:** Gibt es einen Zusammenhang zwischen der Nationalität von
Tätern und dem Anteil an Femiziden? Die Frage kam aus einer medialen Debatte
(Femizide waren wieder Thema in den Medien) — und ist methodisch ein
Lehrbuch-Fall für den Statistikunterricht.

**Recherche-Stand:** 2026-10-14

---

## 1. Der Direkt-Treffer: Parlamentsanfragen zur „Herkunft der Täter von Frauenmorden"

Die exakte Frage wurde im Nationalrat bereits parlamentarisch behandelt. Die
Anfragebeantwortungen enthalten **Rohdaten der Polizeilichen Kriminalstatistik
(PKS)** — nicht nur fertige Prozentwerte, sondern voll disaggregierte Tabellen.

### PA 18374/J (XXVII. GP, beantwortet 2024-04-17)

> **Titel:** Herkunft der Täter von Frauenmorden, Jänner bis Dezember, Jahr 2019 bis 2023
> **Beilage-PDF:** <https://www.parlament.gv.at/dokument/XXVII/AB/17838/imfname_1636158.pdf>

**Was die Beilage hergibt** (30 Seiten, Quelle: Bundesministerium für Inneres,
Bundeskriminalamt – Büro 4.3, Datenstand 02.05.2024):

- **Mord § 75 StGB, vollendet, Opfer weiblich:**
  - Anzahl Opfer und Aufklärungsstatus je Bundesland und Jahr (2019–2023)
  - Anzahl Täter und Opfer nach Beziehungsstatus: *familiäre Beziehung in
    Hausgemeinschaft* vs. *ohne Hausgemeinschaft*, je Bundesland
  - Opfer nach Altersklasse × **Nationalität** (z. B. Österreich, Syrien,
    ungeklärte Staatsangehörigkeit)
- **Mord § 75 StGB, vollendet, Tatverdächtige:** Bundesland × Geschlecht ×
  Altersklasse × **Nationalität** × Jahr — also genau das, was für die
  Ausgangsfrage gebraucht wird
- Jahreszahlen Österreich gesamt (vollendete Morde an Frauen): 2019: 39,
  2020: 31, 2021: 36, 2022: 39, 2023: 42

**Didaktischer Wert:** Die Tabellen sind so disaggregiert, dass man echte
Kontingenztafeln bauen kann (Nationalität × Altersklasse), statt fertige
Balkendiagramme abzulesen.

### PA 453/J (XXVIII. GP, beantwortet 2025-02-26)

> **Titel:** Morde und Gewaltverbrechen durch Nichtösterreicher 2024
> **Beilage-PDF:** <https://www.parlament.gv.at/dokument/XXVIII/AB/570/imfname_1679639.pdf>

**Was die Beilage hergibt:** Anzahl „fremder" Tatverdächtiger je Delikt
(§ 75 Mord, § 84 schwere Körperverletzung, § 201 Vergewaltigung, § 206,
§ 218), dazu Aufteilungen nach Aufenthaltsstatus (z. B. Asylwerber) für
2024. Ergänzt die erste Anfrage um das Jahr 2024.

### Bezugsquelle der PKS selbst

- **Polizeiliche Kriminalstatistik (PKS), Bundeskriminalamt:**
  <https://www.bundeskriminalamt.at/501/start.html>
  - Jahresbände inkl. Kapitel „Gewalt in der Privatsphäre"; seit Jänner 2024
    wird das Beziehungsverhältnis Opfer/Täter in der Kategorie
    „(Ex-)Partnerschaft" gezielt erfasst (siehe Koordinierungsstelle, unten).

---

## 2. Statistik Austria — Opferperspektive, mit echten Maschinendaten

> **Seite:** Gewalt gegen Frauen
> <https://www.statistik.at/statistiken/bevoelkerung-und-soziales/kriminalitaet-und-sicherheit/gewalt-gegen-frauen>

Die **Prävalenzstudie 2021** („Geschlechtsspezifische Gewalt gegen Frauen und
andere Formen von interpersoneller Gewalt", beauftragt von Eurostat und
Bundeskanzleramt) — Kernzahlen: 23,47 % der Frauen (18–74) erlebten
körperliche Gewalt ab dem 15. Lebensjahr, 23,75 % sexuelle Gewalt.

Konkret verwertbare Downloads:

- **Detailergebnisse als [.ods-Datei](https://www.statistik.at/fileadmin/pages/357/Ergebnisse_Gewalt_gegen_Frauen_2021.ods)**
  — direkt in R/Excel ladbar (OGD-Format!)
- **[Infografik Gewaltprävalenz (PDF)](https://www.statistik.at/fileadmin/pages/357/GBV2021_Gewaltpraevalenz_in_OEsterreich.pdf)**
- **[Studie „Geschlechtsspezifische Gewalt gegen Frauen in Österreich" (PDF, 2023)](https://www.statistik.at/fileadmin/publications/Geschlechtsspezifische-Gewalt-gegen-Frauen_2021_barrierefrei.pdf)**
- **[Standard-Dokumentation (PDF)](https://www.statistik.at/fileadmin/shared/QM/Standarddokumentationen/B_1/std_b_gbv.pdf)**
  — Lehrbuchmaterial für Erhebungsdesign: Stichprobe, Grundgesamtheit
  (N = 3 245 166 etc.), Operationalisierung
- **[Gerichtliche Kriminalstatistik 2023/2024 (PDF)](https://www.statistik.at/fileadmin/publications/Gerichtliche-Kriminalstatistik_2023-2024_barrierefrei.pdf)**
  — Verurteilungsstatistik (Justizperspektive, anders als PKS-Anzeigendaten)
- **Open Data:** <https://data.statistik.gv.at> (maschinenlesbare Tabellen)

**Wichtig für die Methodik:** Befragungs-/Opferperspektive (Prävalenz) vs.
PKS-Anzeigeperspektive vs. Verurteilungsstatistik — drei völlig unterschiedliche
Messinstrumente desselben Phänomens mit unterschiedlichen Verzerrungen.

---

## 3. AÖF-Femizidzählung — ein „echter" kleiner Rohdatensatz

> **Verein Autonome Österreichische Frauenhäuser (AÖF):**
> <https://www.aoef.at/index.php/zahlen-und-daten/femizide-in-oesterreich>

Die AÖF führen seit Jahren eigene Zählungen und veröffentlichen **jahresweise
Fall-Listen als PDF** (basierend auf Medienberichterstattung, da sie keine
laufende Einsicht in die PKS haben):

| Jahr | Liste |
|------|-------|
| 2025 | [PDF](https://www.aoef.at/images/04a_zahlen-und-daten/2025/Frauenmorde-2025_Liste-AOeF.pdf) |
| 2024 | [PDF](https://www.aoef.at/images/04a_zahlen-und-daten/2024/Frauenmorde-2024_Liste-AOeF.pdf) |
| 2023 | [PDF](https://www.aoef.at/images/04a_zahlen-und-daten/2023/Frauenmorde-2023_Liste-AOeF.pdf) |
| 2022 | [PDF](https://www.aoef.at/images/04a_zahlen-und-daten/Frauenmorde-2022_Liste-AOEF.pdf) |
| 2021 | [PDF](https://www.aoef.at/images/04a_zahlen-und-daten/Frauenmorde_2021_Liste-AOEF.pdf) |
| 2020 | [PDF](https://www.aoef.at/images/04a_zahlen-und-daten/Frauenmorde_2020_Liste-AOEF.pdf) |
| 2019 | [PDF](https://www.aoef.at/images/04a_zahlen-und-daten/Frauenmorde_2019_Liste-AOEF.pdf) |

Die laufende 2026er-Zählung wird als Tabelle direkt auf der Seite geführt
(Stand 11.10.2026: 19 mutmaßliche Femizide).

**Pro Fall erfasst:** Datum, Ort (Bezirk/Bundesland), Beziehung Opfer/Täter
(Ehemann, Ex-Partner, Lebensgefährte, Vater, Arbeitskollege …), Alter Opfer
und Täter, direkt betroffene Kinder.

**Didaktischer Wert:** ~26–77 Fälle pro Jahr — perfekt klein, um ehrliche
Statistik zu betreiben (Stichprobenschwankung, Konfidenzintervalle). Die
Schüler:innen können den Datensatz selbst aus den PDFs digitalisieren
(CSV bauen) und mit R auswerten — vom Rohmaterial bis zur Tabelle.

---

## 4. Wissenschaftliche Vertiefung & internationale Vergleichsquellen

- **BMJ-Studie:** [„Untersuchung Frauenmorde – eine qualitative und quantitative
  Analyse"](https://www.bmj.gv.at/dam/bmvrdjgvat/content/service/publikationen/Untersuchung-Frauenmorde-%E2%80%93-eine-qualitative-und-quantitative-Analyse.pdf)
  (u. a. von Birgitt Haller; behandelt Tatverdächtige, Opfer,
  Täter-Opfer-Beziehungen und die **europaweite Vergleichbarkeit** der Daten)
- **Nationale Koordinierungsstelle „Gewalt gegen Frauen":**
  <https://www.coordination-vaw.gv.at/daten.html> — Sammelstelle für
  Polizeidaten, Justizdaten, Prävalenz- und Hilfsorganisationsdaten
  (Art. 11 Istanbul-Konvention: Geschlecht, Alter, Gewaltart,
  Beziehungsverhältnis, geografische Eingrenzung als Mindeststandard)
  - Besonders lesenswert: [Beitrag zur statistischen Erfassung von Femiziden
    (12.11.2025)](https://www.coordination-vaw.gv.at/nachrichten/statistische-erfassung-von-femiziden.html)
    — erklärt, warum es keinen eigenständigen StGB-Tatbestand „Femizid" gibt
    und welche Datenfelder trotzdem ausgewertet werden können (Hate-Crime-
    Erfassung „Geschlecht" seit 2020, Beziehungsmerkmal seit 2024)
- **Eurostat:** [gender-based violence](https://ec.europa.eu/eurostat/web/gender-based-violence)
  und Tötungsdelikte nach Geschlecht (EU-vergleichbar)
- **UNODC:** Global Study on Homicide (2019) — internationale Definition
  „geschlechtsbezogene Tötungen von Frauen"
- **EIGE** (Europäisches Institut für Gleichstellungsfragen):
  [Arbeitsdefinition Femizid und Erfassung in Österreich (PDF)](https://eige.europa.eu/sites/default/files/documents/20211560_pdf_mh0121100den_002.pdf)

---

## 5. Methodik-Kapitel — die Fallstricke ALS Unterrichtsstoff

Gerade diese Frage ist methodisch ein Lehrbuch-Fall. Die Fallstricke sind
nicht Störgrößen, sondern der eigentliche Lehrstoff:

### 5.1 Das Nennerproblem

„X % der Täter hatten Staatsangehörigkeit Y" ist ohne den Anteil von Y an der
Bevölkerung (bzw. besser: an der männlichen Bevölkerung in den Täter-Altersklassen)
bedeutungslos. Unterrichtsanschluss: Relative Risiken, standardisierte Raten,
Kontingenztafeln richtig lesen.

### 5.2 Kleine n — Stichprobenschwankung

Bei 26–42 vollendeten Morden an Frauen pro Jahr sind die Konfidenzintervalle
riesig: Jahres-zu-Jahres-Vergleiche („2023 um 3 mehr als 2022!") sind meist
Rauschen. Unterrichtsanschluss: Binomialmodell, Konfidenzintervalle handfest
erleben („Wie groß müsste die Fallzahl sein, damit ein Jahresunterschied von
3 Aussagekraft hat?").

### 5.3 Konfundierung & Simpson-Paradox

Alter, Urbanisierung und sozioökonomischer Status korrelieren mit der
Nationalität. Aggregierte vs. stratifizierte Auswertungen können in
entgegengesetzte Richtungen zeigen. Die PKS-Beilage liefert genau die
Alters-Gliederung, um das vorzuführen. Unterrichtsanschluss:
Simpson-Paradox mit echten Daten.

### 5.4 Operationalisierung — „Was misst die Messung?"

„Femizid" ist in Österreich **kein** Straftatbestand; Tötungen von Frauen
fallen unter das geschlechtsneutrale Delikt Mord (§ 75 StGB). PKS-Zählung
(Anzeigendaten), AÖF-Zählung (Medienberichte) und Prävalenzstudie (Befragung)
messen drei verschiedene Konstrukte — mit unterschiedlichen Abdeckungen und
Verzerrungen. Unterrichtsanschluss: Drei Messinstrumente, ein Phänomen,
drei Ergebnisse — warum?

### 5.5 Erhebung als Prozess

Parlamentsanfrage → PKS → Statistik Austria → NGO-Zählung: dieselbe Realität
wird viermal unterschiedlich in Zahlen gegossen. Unterrichtsanschluss: Wer
erhebt was, warum, mit welchem Interesse?

### 5.6 Sensibilität im Unterricht

Das Thema ist medial hochaufgeladen und betrifft reale Betroffene. Als
Lektion funktioniert es am besten, wenn der rote Faden die **Methode** ist
(„Wie kommt man von der Schlagzeile zu einer belastbaren Aussage?") und nicht
die Schlagzeile selbst. Kein Fallbeispiel identifizierbar machen; Debatte
nicht als Stimmungs-Abstimmung, sondern als Datenanalyse führen. Die AÖF
veröffentlicht dazu eigene [Berichtsleitlinien](https://www.aoef.at/index.php/presse/verantwortungsvoll-berichten).

---

## 6. Unterrichtsanschluss (Ideen-Pool)

| Idee | Anknüpfung |
|------|-----------|
| „Kontingenztafeln & relative Risiken" — Auswertung der PKS-Beilage | KM4/KM5 |
| „Kleine n und Konfidenzintervalle" — Jahresvergleiche an den AÖF-Listen | KM5 |
| „Drei Messinstrumente" — Operationalisierung anhand PKS vs. AÖF vs. Prävalenzstudie | KM4 |
| „Vom PDF zur CSV" — AÖF-Jahresliste selbst digitalisieren und in R auswerten | KM7 (R) |

Bau einer konkreten Lesson dann über den globalen `create-lesson`-Skill
(Bestellformat `KM/Teil-KM + Ziel-UE + Thema`), Ablage unter `unterricht/`.
