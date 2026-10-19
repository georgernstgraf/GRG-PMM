# Thema: Datensätze im Widerspruch — statistische Praktiken vergleichen

Querverzicht: übergeordnetes Projekt-README (Konvention, Status-Legende)
in diesem Ordner.

**Die Kernfrage:** Wenn zwei Datensätze dieselbe Frage verschieden
beantworten, wer „liefert"? Die statistische Antwort: fast nie Lüge —
fast immer **unterschiedliche Praktiken**. Der Widerspruch ist deshalb
nicht ein Fehler, sondern das ehrlichste Unterrichtsmaterial, das es
gibt: Jede Differenz verweist auf eine konkrete Entscheidung hinter den
Daten.

**Recherche-Stand:** 2026-10-19

---

## Die Praktiken-Checkliste (woran Widersprüche fast immer liegen)

| Praktik | Frage, die man stellen muss | Beispiel unten |
|---|---|---|
| **Definition/Operationalisierung** | Was genau zählt als „Fall"? | F-W3 (Arbeitslosigkeit) |
| **Population/Abdeckung** | Wer ist im Nenner? Wer fehlt? | F-W3 (AKP vs. Erwerbspersonen) |
| **Erhebung** | Register (Vollerhebung) vs. Stichprobe (Befragung)? | F-W3, F-W4 |
| **Referenz/Basisperiode** | Wogegen wird gemessen? | F-W1 (Klima-Baselines) |
| **Modell vs. Registrierung** | Gemessene Zahl oder Schätzung mit Unsicherheit? | F-W2 (Übersterblichkeit) |
| **Revisionen** | Ist der aktuelle Wert schon final? | Eurostat-AKE, GDP |
| **Stichtag/Aggregation** | Monatlich, wöchentlich, gleitend? | F-W2 |
| **Messinstrument-Perspektive** | Sicht: Polizei, Gericht, Befragung? | F-W4 (Femizid-Doku) |

Der Unterrichtsgewinn: Der Widerspruch löst sich meist **nicht durch
„wer hat recht"**, sondern durch *Praktiken explizit machen* — und
gelegentlich durch Rekalibrierung (F-W1).

---

## F-W1: Zwei Temperatur-Reihen, ein Planet — GISTEMP vs. HadCRUT5

- **Ausgangsfrage:** NASA GISS meldet für 2024 +1,28 °C Anomalie, das
  Met Office Hadley Centre +1,17 °C. Widerspruch? Welcher Wert ist
  „richtig"?
- **Daten:** 📦 `daten/tempanomalien-zwei-quellen.csv` — beide Reihen
  side-by-side (GISTEMP: Basisperiode **1951–1980**; HadCRUT5: Basisperiode
  **1961–1990**, inkl. 95 %-Konfidenzband; Metadaten
  `tempanomalien-zwei-quellen.md`)
- **Aufgabenskizze:** Beide Reihen übereinander plotten → scheinbarer
  Widerspruch · Rebase auf dieselbe Basisperiode (Differenz der
  Referenzmittel verrechnen) → die Kurven kollabieren auf ~0,08 °C
  Restdifferenz · Rest analysieren: Abdeckung (Polarregionen), Methode
  (Infilled-Analysis vs. Interpolation) · Konfidenzbänder von HadCRUT5
  interpretieren — auch die Unsicherheit gehört zur Zahl
- **R:** `ggplot2`, `merge`, Basisperioden-Umrechnung mit `mean`
- **UE-Anker:** KM7 UE 4–5 (Messwert, Referenz, Unsicherheit) · Brücke
  zu `klima-klimawandel.md` F-K1
- **Status:** 📦 Daten im Repo
- **Praktiken-Pair:** Basisperiode · Abdeckung · Analyse-Algorithmus

## F-W2: „Aber es wurden ja nur X Leute gemeldet!" — COVID-Tote vs. Übersterblichkeit

- **Ausgangsfrage:** Offiziell gemeldete COVID-Tode Österreichs vs.
  Übersterblichkeit: 2020 fast deckungsgleich (7.049 gemeldet, Übersterb-
  lichkeit ≈ 8,7 % ≈ 7.100), 2022 klaffen sie auseinander (gemeldet:
  4.984, Übersterblichkeit weiterhin 10,6 %). Was misst hier wen?
- **Daten:** 📦 `daten/covid-at-gemeldet-vs-uebersterblichkeit.csv`
  (monatlich, aus OWID; COVID-Tode = gemeldete Todesfälle, Übersterb-
  lichkeit = %-Abweichung der *Gesamtsterblichkeit* vom erwarteten Wert
  [The Economist/IHME-Modell]; Metadaten
  `covid-at-gemeldet-vs-uebersterblichkeit.md`)
- **Aufgabenskizze:** Differenz je Monat plotten · Diskutieren: Todes-
  ursachen-Kodierung (wurde COVID beim Verstorbenen mitverursachend
  kodiert?) vs. All-Cause-Zählung (zählt alles) · Warum bleibt 2022 die
  Übersterblichkeit hoch, obwohl weniger gemeldete COVID-Tote? (Nach-
  wirkungen, verzögerte Pflege, Demografie — und: Baselinerfrage aus
  F-C1!) · Am Ende: „Die Zahl" existiert nicht — es gibt zwei
  statistische Praktiken mit zwei Aussagen
- **R:** `dplyr` (group_by, mutate diff), `ggplot2`
- **UE-Anker:** KM7 UE 4–5 · Brücke zu `corona-impfmythen.md` F-C1
- **Status:** 📦 Daten im Repo
- **Praktiken-Pair:** Todesursachenkodierung vs. All-Cause · Registrierung
  vs. Modell-Schätzung

## F-W3: Zwei Arbeitslosenquoten für dasselbe Land — AMS vs. ILO

- **Ausgangsfrage:** 2025 meldet das AMS-Politik-Diskurs eine nationale
  Quote von **7,4 %**, Eurostat/Statistik Austria nach ILO-Konzept
  **5,6–5,7 %** für dieselben Menschen in denselben Monaten. Widerspruch?
- **Daten:** 📦 `daten/arbeitslosigkeit-at-ilo.csv` (Eurostat `une_rt_a`,
  ILO-Konzept, 15–74 Jahre, 2010–2025; Metadaten
  `arbeitslosigkeit-at-ilo.md`) · AMS/nationale Werte: 🔗
  [AMS-Fachbegriffe](https://www.ams.at/arbeitsmarktdaten-und-medien/arbeitsmarkt-daten-und-arbeitsmarkt-forschung/fachbegriffe)
  (Registerarbeitslosenquote vs. ILO — inkl. expliziter Aussage „die
  internationale Quote ist stets niedriger"),
  [Monats-Übersicht](https://www.ams.at/content/dam/download/arbeitsmarktdaten/%C3%B6sterreich/berichte-auswertungen/001_uebersicht_aktuell.pdf)
  (beide Quoten side-by-side), [Statistik Austria](https://www.statistik.at/statistiken/arbeitsmarkt/arbeitslosigkeit/arbeitslose-arbeitssuchende)
- **Aufgabenskizze:** Praktiken-Tabelle füllen: Zähler (Register:
  beim AMS vorgemerkt; ILO: Befragung, aktiv suchend, sofort verfügbar),
  Nenner (AKP = Arbeitslose + unselbstständig Beschäftigte vs. Erwerb-
  personenschaft inkl. Selbstständige/Geringfügige) · Quote berechnen
  statt glauben · Warum ist die nationale Quote „ehrlicher" für
  Sozialpolitik und die ILO-Quote „ehrlicher" für EU-Vergleiche?
  · Revisionen diskutieren (Eurostat revidiert nach)
- **R:** `dplyr` (Berechnung), `ggplot2` (Zwei-Linien-Plot)
- **UE-Anker:** KM7 UE 1–3 (Datenverständnis), KM4-Brücke (Kennzahlen)
- **Status:** 📦 ILO im Repo · 🔗 AMS-Werte (PDF/Seite, kuratierte
  Zeitreihe bei Aufgaben-Bau)
- **Praktiken-Pair:** Definition (Register vs. Befragung) · Population/
  Nenner · Abdeckung (Schulungsteilnehmer:innen!)

## F-W4: Kriminalität — drei Sichtweisen, keine „echte Zahl"

- **Ausgangsfrage:** PKS-Anzeigen vs. Verurteilungsstatistik vs.
  Prävalenzstudie: dasselbe Phänomen, drei Messinstrumente — Zahlen
  unterscheiden sich systematisch um Größenordnungen (Anzeigendunkel-
  ziffer!). Widerspruch oder Fehler? Weder noch — drei Praktiken.
- **Daten:** 🔗 bereits im Repo verarbeitet: `daten/
  verurteilungen-gerichtsbezirke.csv` (Gerichtsperspektive) +
  `Projekte/femizid-taeter-nationalitaet.md` (Kapitel „drei Mess-
  instrumente" — PKS vs. AÖF vs. Prävalenzstudie inkl. Prävalenz-
  studie-Downloads)
- **Aufgabenskizze:** Anzeigenaufkommen (PKS-Jahresband, Link) gegen
  Verurteilungszahlen (kuratierte CSV) gegen dieselbe Ebene — je
  Deliktgruppe in Relation setzen · Erklärung Muster: welche Delikte
  haben hohe Aufklärung/Verurteilungsquote, welche nicht? ·
  „Dark Figure" als Statistik-Konzept einführen
- **R:** `dplyr`, `ggplot2`
- **UE-Anker:** KM7 UE 1–3 · Brücke zum Femizid-File
- **Status:** 🔗 (PKS-Anzeigen-Zahlen nur als PDF, kuratierte Reihe
  bei Aufgaben-Bau digitalisieren)

---

## „Welcher Datensatz ist richtig?" — Entscheidungskriterien

Wenn der Widerspruch nach Praktiken-Check bleibt (F-W1-Rest):

1. **Dokumentation:** Wer definiert transparent (Standard-Dokumentationen,
   Methode-Papers)? HadCRUT5 verweist auf ein Paper — GISTEMP auf Doku-Seiten.
2. **Unsicherheit:** Wer gibt Intervalle an? (HadCRUT5 ja — das allein
   ist schon ein Qualitätsmerkmal.)
3. **Plausibilität in sich:** Interne Konsistenz (Summen vs. Teile,
   Revisionen erklärbar).
4. **Unabhängigkeit:** Decken sich zwei *unabhängig erhobene* Reihen?
   (Übersterblichkeit bestätigt COVID-Tode unabhängig von der
   Todesursachenkodierung — genau das ist ihr Wert.)
5. **Nicht: Autorität, Popularität oder Erwartungskonformität.**
   (Klima-Leugner:innen zitieren gern die kleinere Zahl aus F-W1 — der
   Praktiken-Check entlarvt das, ohne eine Quelle als „Lüge" zu
   brandmarken.)

Popper-Note: Daten falsifizieren **Behauptungen**, nicht Quellen.
Wenn zwei Reihen sich widersprechen, ist die Behauptung „es gibt DIE
eine Zahl" das, was fällt.
