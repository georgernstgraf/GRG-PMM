# 5HWIT-Lehrplan — V. Jahrgang (KM 9)

> **Klassen-Zuordnung:** `5HWIT` (generisch, deckt 5AHWIT/5BHWIT ab) ↔ **V. Jahrgang** ↔ **Kompetenzmodul 9** (umfasst beide Semester, keine Semester-Splitting)
>
> **Rechtsgrundlage:** Anlage 1.28, BGBl. II Nr. 262/2015 — Abschnitt 5 (Prozessmanagement), Höhere Lehranstalt für Wirtschaftsingenieure – Technisches Management
>
> **Quelle:** Auszug aus `lehrplan/pmm-hwit/LEHRPLAN.md` (Extrakt aus `2015-09-17_Lehrplan_TechnischesManagement.pdf`, Seiten 19–22)
>
> **Extraktionsdatum:** 2026-09-06

**Wochenstunden:** 4(2) je Semester (Übungsanteil in Klammern)

---

## V. Jahrgang — Kompetenzmodul 9

> **Überblick:** Das Kompetenzmodul 9 des Maturajahrgangs überspannt beide
> Semester und vollendet die statistische Ausbildung des Gegenstands:
> Während KM5 bis KM8 Daten auswerteten, die „einfach da" waren, lernen die
> Schülerinnen und Schüler im 9. Semester, Daten gezielt zu erzeugen —
> industrielle Versuchsmethoden (Design of Experiments) planen Versuche so,
> dass mit minimalem Versuchsaufwand maximale Information über Faktoren,
> Wechselwirkungen und Prozessoptima gewonnen wird. Parallel öffnet der
> Bereich Facility Management die zweite Säule des Jahres: technische
> Betriebsführung und Instandhaltung — das Management der Gebäude- und
> Anlageninfrastruktur, die das Kerngeschäft am Laufen hält. Das
> 10. Semester führt die Lebensdauerverteilungen aus KM6 zur
> Zuverlässigkeitsanalyse ganzer Systeme (Redundanz, Verfügbarkeit) fort
> und verbindet das Facility Management mit dem Energiemanagement
> (Energiebilanzen als Entscheidungsgrundlage). Durchgehend wird die
> R-Toolchain des IV. Jahrgangs genutzt; der Übungsanteil von 2
> Wochenstunden trägt die praktische Umsetzung.

### 9. Semester

#### Bildungs- und Lehraufgabe

Die Schülerinnen und Schüler können im

**Bereich Statistische Methoden**

- industrielle Versuchsmethoden für spezifische Aufgabenstellungen entwickeln
  und Ergebnisse beurteilen.

  > **Erläuterung:** Industrielle Versuchsmethoden — zusammengefasst als
  > Design of Experiments (DoE) — drehen die Richtung des Unterrichts um:
  > Nicht mehr vorgefundene Daten auswerten (KM5–KM8), sondern Versuche so
  > planen, dass die Daten die gesuchte Information überhaupt erst liefern.
  > Grundbegriffe sind Faktor (einstellbare Einflussgröße wie Temperatur,
  > Druck, Nachdruckzeit), Stufe (eingestellter Wert), Zielvariable
  > (gemessenes Ergebnis) sowie die drei Planungsprinzipien Randomisierung
  > (Versuchsreihenfolge zufällig wählen, damit Störgrößen neutralisiert
  > werden), Replikation (Wiederholungen für den Versuchsfehler) und
  > Blockbildung (bekannte Störeinflüsse sauber ausblenden). Vollfaktorielle
  > 2^k-Pläne testen alle Kombinationen und liefern Haupteffekte und
  > Wechselwirkungen; teilfaktorielle Pläne und Plackett-Burman-Designs
  > screenen viele Faktoren mit einem Bruchteil der Versuche — zum
  > bewerteten Preis des Confoundings, bei dem Effekte vermischt werden. Die
  > Response-Surface-Methodology (Zentrumspunkte, Central-Composite-Designs,
  > quadratische Modelle) sucht schließlich das Optimum der Zielgröße.
  > „Entwickeln" heißt, für eine konkrete Aufgabenstellung den passenden
  > Plan zu dimensionieren — etwa: Welche Spritzgussparameter liefern
  > maßhaltige Teile? „Beurteilen" heißt, Effekte mit der ANOVA-Logik aus
  > KM7 auf Signifikanz zu prüfen und Modellgüte, Optimum und Robustheit
  > (Taguchi) zu bewerten. In der Praxis ersetzt ein gutes DoE hunderte
  > Versuche des naiven „one factor at a time", das Wechselwirkungen
  > systematisch übersieht; in R mit `FrF2`, `rsm` und `lm` end-to-end
  > durchspielbar.

**Bereich Facility Management**

- die grundlegenden Aufgaben des technischen Facility Managements festlegen und
  beurteilen;

  > **Erläuterung:** Facility Management (FM) ist die koordinierte
  > Steuerung aller Sekundärprozesse rund um Gebäude, Infrastruktur und
  > Flächen — alles, was nötig ist, damit das Kerngeschäft (Fertigung,
  > Forschung, Pflege, Verwaltung) laufen kann (normativ gerahmt durch
  > DIN EN 15221 bzw. ISO 41001). Das technische FM umfasst die
  > Bereitstellung und den Betrieb der Infrastruktur: Gebäude- und
  > Anlagentechnik (Heizung, Lüftung, Klima, Sanitär, Elektro- und
  > Sicherheitstechnik, Aufzüge), Medien- und Energieversorgung, Mess-,
  > Steuer- und Regelungstechnik — organisiert nach derselben
  > Managementsystem-Logik (Prozesse, PDCA) wie in KM3. „Aufgaben
  > festlegen" heißt, für ein konkretes Objekt zu bestimmen, welche
  > technischen Leistungen in welchem Umfang und mit welchen
  > Servicelevels (Betriebsbereitschaft, Reaktionszeiten, Sicherheit)
  > erbracht werden; „beurteilen" heißt, Erfüllung und Wirtschaftlichkeit
  > zu bewerten — bis hin zur Make-or-Buy-Entscheidung zwischen
  > hauseigener Technik und externen Facility-Dienstleistern.
  > Einsatzfelder reichen vom Industrieareal über das Krankenhaus bis
  > zur Universitäts- und Verwaltungsliegenschaft; in der Praxis laufen
  > diese Aufgaben meist in CAFM-Systemen (Computer-Aided Facility
  > Management) und münden im Energiemanagement des 10. Semesters.

- Instandhaltungstätigkeiten planen und dokumentieren.

  > **Erläuterung:** Instandhaltung (nach DIN 31051) umfasst vier
  > Grundtätigkeiten: Inspektion (Zustand beurteilen), Wartung (Verschleiß
  > nach Plan begrenzen), Instandsetzung (Fehler beheben) und Verbesserung
  > (Schwachstellen beseitigen). Planen heißt, die Strategie zu wählen —
  > reaktiv (erst beim Ausfall), präventiv (zeit- oder
  > betriebsstundengesteuert), prädiktiv (zustandsbasiert über Condition
  > Monitoring, etwa Schwingungs- oder Temperatursignale) oder nach der
  > RCM-Logik (Reliability-Centered Maintenance: Maßnahmen richten sich
  > nach Ausfallfolgen und deren Beherrschbarkeit, priorisiert mit der
  > Risikobewertung aus KM4) — und daraus Instandhaltungspläne zu bauen:
  > Intervalle, Verantwortliche, Ersatzteilbevorratung, Budget.
  > Dokumentieren heißt, jede Maßnahme mit Befund, Aufwand und Ergebnis
  > festzuhalten — die Historie ist die Datenbasis für
  > Schwachstellenanalysen, Intervall-Optimierung und Kennzahlen wie MTBF
  > und Verfügbarkeit, die exakt in die Zuverlässigkeitsanalyse des
  > 10. Semesters führen. Im Beruf ist das das Auftragswesen des
  > Anlagenbetriebs (häufig in SAP PM oder CAFM-Modulen), in dem
  > Wirtschaftsingenieurinnen und -ingenieure Lebensdauerkosten gegen
  > Ausfallrisiken rechnen.

#### Lehrstoff

**Bereich Statistische Methoden:**
Planung und Beurteilung industrieller Versuchsmethoden.

> **Erläuterung (industrielle Versuchsmethoden):** Der Lehrstoff fasst den
> DoE-Zyklus als Einheit von Planung und Beurteilung: Planung bedeutet,
> Zielgröße und Verdachtsfaktoren festzulegen, das Design (voll- oder
> teilfaktoriell, Plackett-Burman, Central Composite) samt
> Stichprobenumfang, Randomisierungs- und Blockschema zu wählen und die
> Design-Matrix aufzustellen; Beurteilung bedeutet, aus den Versuchsdaten
> Effekte und Wechselwirkungen zu schätzen, mit der ANOVA-Logik aus KM7
> auf Signifikanz zu prüfen, Residuen und Modellanpassung (Krümmung,
> Lack of Fit) zu bewerten und die optimale bzw. robuste
> Faktoreinstellung abzuleiten. Der planerische Anteil ist der Hebel: Was
> vor der Datenerhebung entschieden wird, bestimmt, welche Fragen die
> Daten beantworten können — ein schlechtes Design lässt sich nachträglich
> nicht reparieren. Genau deshalb verlangt „Planung und Beurteilung" beides
> zusammen: Wer nur auswertet, ohne die Versuchsstruktur zu kennen, kann
> Wechselwirkungen nicht von Rauschen trennen. In R tragen `FrF2`
> (faktorielle Designs), `rsm` (Response Surface) und `lm`/`aov`
> (Auswertung) den kompletten Zyklus; Referenz ist NIST Kapitel 5.

**Bereich Facility Management:**
Technische Betriebsführung (Bereitstellung und Betrieb von Infrastruktur,
Instandhaltungsstrategien, Arbeitssicherheit).

> **Erläuterung (technische Betriebsführung):** Technische Betriebsführung
> ist das laufende Operieren der Gebäudetechnik und der
> Versorgungsinfrastruktur: Anlagen der TGA (Heizung, Lüftung, Klima,
> Sanitär, Elektro, Aufzüge, Sicherheitstechnik) werden über Leittechnik
> (GLT/BMS) überwacht, Störungen nach Servicelevel abgewickelt und die
> Medien- und Energieversorgung des Standortes sichergestellt — immer mit
> dem Ziel ungebrochener Betriebsbereitschaft für das Kerngeschäft. Der
> zweite Baustein sind die Instandhaltungsstrategien (reaktiv, präventiv,
> prädiktiv, RCM), die festlegen, wann und warum in die Anlagen
> eingegriffen wird. Die Arbeitssicherheit verankert die Schutzpflichten
> für die im Betrieb Tätigen: ArbeitnehmerInnenschutzgesetz (ASchG) samt
> Arbeitsstätten- und Arbeitsmittelverordnung, Gefährdungsbeurteilung der
> Arbeitsplätze, sicherer Betrieb technischer Anlagen — eine Logik, die
> schon in KM4 (Arbeits- und Maschinensicherheit) angelegt war und hier im
> Betriebsumfeld angewandt wird. Betriebsführung,
> Instandhaltungsplanung und der Einkauf technischer Dienstleistungen
> großer Liegenschaften (Industrieareale, Krankenhäuser, Universitäten,
> öffentliche Hand) sind typische Einsatzfelder für
> Wirtschaftsingenieurinnen und -ingenieure.

### 10. Semester

#### Bildungs- und Lehraufgabe

Die Schülerinnen und Schüler können im

**Bereich Statistische Methoden**

- die Zuverlässigkeit von Systemen analysieren.

  > **Erläuterung:** Zuverlässigkeit (Reliability) ist die Wahrscheinlichkeit,
  > dass ein System seine Funktion über eine geforderte Zeit unter
  > festgelegten Bedingungen erfüllt — die statistische Antwort auf „Wie
  > sicher ist das Funktionieren?". Baustein ist die Lebensdauerverteilung
  > aus KM6, insbesondere die Weibullverteilung, deren Formparameter zwischen
  > frühen Ausfällen, konstanter Zufallsphase und Verschleiß unterscheidet
  > (Badewannkurve); daraus folgen die Überlebensfunktion R(t) und die
  > Kennzahlen MTBF (mittlere Zeit zwischen Ausfällen) bzw. MTTR (mittlere
  > Reparaturzeit), die gemeinsam die Verfügbarkeit A = MTBF/(MTBF + MTTR)
  > ergeben. Neu ist die Systemebene: Einzelkomponenten werden über
  > Zuverlässigkeitsstrukturbilder (RBDs) verschaltet — in Serie
  > multiplizieren sich die Komponentenzuverlässigkeiten (jede Komponente
  > kann das ganze System lahmlegen), in Parallelstruktur wirkt Redundanz,
  > die die Systemzuverlässigkeit massiv hebt. Analytisch heißt das:
  > Ausfalldaten bestimmen (auch mit zensierten Daten, bei denen die
  > Beobachtung vor dem Ausfall endet), Verteilungen anpassen (in R
  > `fitdistrplus`, `survival`), Systemkennzahlen berechnen und
  > Schwachstellen identifizieren. Der Berufsbezug reicht von der
  > Auslegung redundanter Server-, Verfahrens- und Versorgungssysteme über
  > Verfügbarkeitsnachweise für Anlagen (Rechenzentrum, Bahnsysteme,
  > Medizintechnik) bis zur rechnerischen Fundierung der
  > Instandhaltungsintervalle aus dem 9. Semester — Zuverlässigkeitsdaten
  > sind die Rechtfertigung für Wartungsbudgets.

**Bereich Facility Management**

- Energiebilanzen erstellen und Schlussfolgerungen ableiten.

  > **Erläuterung:** Eine Energiebilanz ist die vollständige energetische
  > Input-Output-Rechnung eines Betriebs, Gebäudes oder Prozesses: Alle
  > Energieträger (Strom, Erdgas, Fernwärme, Brenn- und Kraftstoffe) werden
  > erfasst, zu End-, Nutz- und Primärenergie aufgerechnet und den
  > Verbrauchsstellen zugeordnet; was nicht in Nutzen umgesetzt wird,
  > erscheint als Verlust — Abwärme, Leckagen in Druckluftnetzen,
  > Standby-Verbräuche. Das Werkzeug stammt aus KM7: die Stoffflussanalyse,
  > jetzt für den Energieträger, visualisiert als Sankey-Diagramm.
  > „Erstellen" heißt, Messdaten und Rechnungen zu einer belastbaren Bilanz
  > zusammenzuführen — inklusive Verbrauchskennzahlen wie kWh/m²·a oder
  > kWh pro gefertigtem Stück; „Schlussfolgerungen ableiten" heißt, aus ihr
  > zu entscheiden: Einsparpotenziale priorisieren, Effizienzmaßnahmen
  > (Wärmerückgewinnung, Frequenzumrichter, Druckluftsysteme sanieren)
  > wirtschaftlich bewerten und in ein Energiemanagement nach ISO 50001
  > überführen, das Energieverbräuche laufend misst, bewertet und
  > verbessert — PDCA aus KM3, angewandt auf Energie. Das
  > Energiekostenmanagement und die Energieberatung sind klassische
  > HWIT-Einsatzfelder; Energieaudits bzw. Energiemanagementsysteme sind
  > für große Unternehmen nach dem Energieeffizienzgesetz ohnehin
  > verpflichtend.

#### Lehrstoff

**Bereich Statistische Methoden:**
Zuverlässigkeit von Systemen.

> **Erläuterung (Zuverlässigkeit von Systemen):** Der Lehrstoff führt die
> Bauteil-Statistik aus KM6 (Exponential- und Weibullverteilung,
> Badewannkurve) zur Systemanalyse zusammen: Aus Komponenten-Ausfallraten
> werden über Zuverlässigkeitsstrukturbilder Systemgrößen berechnet —
> Serienschaltungen addieren die Ausfallraten (das System fällt mit der
> schwächsten Gliedkette), Parallelschaltungen/Redundanz lassen es erst
> mit dem letzten Zweig ausfallen. Behandelt werden auch die Methoden der
> Datengewinnung: Ausfalldaten mit Zensierung auswerten, beschleunigte
> Lebensdauertests (erhöhte Belastung, um in kurzer Testzeit überhaupt
> Ausfälle zu erzeugen) und Weibull-Analyse. Betriebslich wird das
> verwendet, um Schwachstellen zu identifizieren, Redundanzbedarf zu
> begründen und die Wartungsintervalle aus dem Instandhaltungsstrang des
> 9. Semesters rechnerisch zu fundieren. In R tragen `fitdistrplus`
> (Verteilungsfit) und `survival` (zensierte Daten) die Auswertung;
> Referenz ist NIST Kapitel 8.

**Bereich Facility Management:**
Managementsysteme (Facility Management, Energiemanagement).

> **Erläuterung (Facility-Management- und Energiemanagementsysteme):**
> Beide Systeme wenden die Managementsystem-Bauweise aus KM3 (Politik,
> Ziele, Programme, Audits, PDCA) auf neue Gegenstände an: Das FM als
> Managementsystem (ISO 41001, historisch DIN EN 15221) regelt die
> Steuerung der Sekundärprozesse über definierte Leistungen, vertragliche
> Servicelevel, Leistungsdokumentation und Kennzahlen — meist unterstützt
> durch CAFM-Software. Das Energiemanagement nach ISO 50001 macht Energie
> zum gesteuerten Faktor: Energiepolitik und -ziele, Energiereview
> (Bestandsaufnahme der Verbräuche), messbare Energiekennzahlen (EnPIs),
> Maßnahmenplan und interne Audits sichern die laufende Verbesserung der
> Energieeffizienz; geführt werden kann es integriert mit dem
> Umweltmanagementsystem aus KM7/KM8. Für den Maturajahrgang schließt
> sich hier der Kreis des Gegenstands: Managementsysteme (KM3),
> Statistik (KM5–KM9) und Technik (Betriebsführung, Energie,
> Zuverlässigkeit) ergeben zusammen den integrierten Werkzeugkasten, mit
> dem Wirtschaftsingenieurinnen und -ingenieure Betriebe technisch wie
> betrieblich steuern.

---

> **Hinweis (Sprachanforderung):** V. Jahrgang (KM 9) — Niveau B2 des GER
> (Business English), siehe `lehrplan/METADATA.md`.
>
> **Hinweis (Vorwissen):** DoE und Zuverlässigkeit bauen auf KM 5 + KM 6
> (III. Jahrgang, Statistik-Grundlagen) auf — siehe
> `lehrplan/pmm-hwit/LEHRPLAN.md`.
