# 4HWIT-Lehrplan — IV. Jahrgang (KM 7 + KM 8)

> **Klassen-Zuordnung:** `4HWIT` (generisch, deckt 4AHWIT/4BHWIT ab) ↔ **IV. Jahrgang** ↔ **Kompetenzmodul 7 + Kompetenzmodul 8**
>
> **Rechtsgrundlage:** Anlage 1.28, BGBl. II Nr. 262/2015 — Abschnitt 5 (Prozessmanagement), Höhere Lehranstalt für Wirtschaftsingenieure – Technisches Management
>
> **Quelle:** Auszug aus `lehrplan/pmm-hwit/LEHRPLAN.md` (Extrakt aus `2015-09-17_Lehrplan_TechnischesManagement.pdf`, Seiten 19–22)
>
> **Extraktionsdatum:** 2026-09-06

**Wochenstunden:** 4(1) je Semester (Übungsanteil in Klammern)

---

## IV. Jahrgang

### 7. Semester — Kompetenzmodul 7

> **Überblick:** KM7 ist das Herzstück der statistischen Qualitätssicherung
> und zugleich der Einstieg des IV. Jahrgangs. Zwei Fragen stehen im
> Zentrum: „Ist der Unterschied echt — oder Zufall?" (statistische Tests)
> und „Nehmen wir diese Lieferung an — oder nicht?"
> (Annahmestichprobenprüfung). Flankierend eröffnet der Bereich
> Umweltmanagement die betriebliche Umweltsicht (Umweltprüfung,
> Stoffflussanalyse, Ökobilanz). In der Unterrichtspraxis der 4HWIT kommt
> hier zudem die R-Toolchain ins Spiel — Einlesen, Transformieren,
> Visualisieren nach R4DS —, die ab diesem Jahrgang durchgehend genutzt
> wird.

#### Bildungs- und Lehraufgabe

Die Schülerinnen und Schüler können im

**Bereich Statistische Methoden**

- Daten mit statistischen Tests analysieren;

  > **Erläuterung:** Ein statistischer Test ist ein formalisiertes
  > Entscheidungsverfahren für die Frage „Ist das beobachtete Muster in
  > den Daten echt, oder kann es Stichproben-Zufall sein?". Man stellt
  > eine Nullhypothese H0 (etwa: „beide Maschinen füllen im Mittel
  > dasselbe") gegen eine Alternative H1, fixiert ein Signifikanzniveau α
  > (üblich 0,05) und berechnet aus den Daten den p-Wert — die
  > Wahrscheinlichkeit, bei wahrer H0 ein mindestens ebenso extremes
  > Ergebnis zu beobachten; ist er klein, wird H0 verworfen. Zentral sind
  > die beiden Fehlerarten (H0 zu Unrecht verwerfen = Fehler 1. Art; eine
  > echte Differenz übersehen = Fehler 2. Art) und ihre Steuerung über
  > Stichprobenumfang und Effektstärke. Das Instrumentarium reicht vom
  > t-Test (Mittelwertsvergleich, gepaart oder ungepaart) über den
  > χ²-Test (Anteile, Häufigkeiten) bis zur einfaktoriellen ANOVA
  > (mehrere Gruppen), samt nichtparametrischer Alternativen wie Wilcoxon
  > und Kruskal-Wallis. Im Beruf verifiziert damit eine
  > Qualitätsingenieurin Maschinenvergleiche, Prozessänderungen oder
  > Prüfmittelabweichungen, bevor Geld fließt — in R mit `t.test`,
  > `chisq.test`, `aov` und `TukeyHSD`.

- geeignete Stichprobenprüfungen auswählen und anwenden.

  > **Erläuterung:** Die Annahmestichprobenprüfung ist das industrielle
  > Standardverfahren, wenn Vollprüfung unmöglich oder unwirtschaftlich
  > ist: Aus einer Lieferung wird nach festem Prüfplan eine Stichprobe
  > vom Umfang n gezogen, geprüft und anhand einer Annahmezahl c
  > entschieden — annehmen oder rügen. Attributive Prüfung zählt
  > fehlerhafte Einheiten (Attributprüfung nach ISO 2859), variables
  > Prüfen misst Messwerte (Variablenprüfung nach ISO 3951, k-Methode).
  > Der verhandelte Kern jeder Spezifikation ist das AQL (Acceptable
  > Quality Limit): das Qualitätsniveau, das gerade noch fast immer
  > angenommen wird — ein Risikoausgleich zwischen Produzentenrisiko
  > (gute Lieferung fälschlich zurückgewiesen) und Konsumentenrisiko
  > (schlechte angenommen). Die OC-Kurve macht die Güte eines Plans
  > sichtbar: Annahmewahrscheinlichkeit in Abhängigkeit von der wahren
  > Qualität der Lieferung. Klassischer Einsatzort ist die
  > Wareneingangskontrolle in der Fertigung; auch Endkontrolle und
  > Lieferantenbewertung laufen über solche Pläne — in R mit dem Paket
  > `AcceptanceSampling` nachvollziehbar.

**Bereich Umweltmanagement**

- die grundlegenden Anforderungen des betrieblichen Umweltmanagements erkennen
  sowie Stoffflussanalysen und Ökobilanzen erstellen.

  > **Erläuterung:** Betriebliches Umweltmanagement heißt, die
  > Umweltaspekte eines Betriebs (Emissionen, Abfälle, Energie- und
  > Stoffeinsätze) systematisch zu erfassen, zu bewerten und in ein
  > geregeltes System aus Politik, Zielen, Programm und Audits zu
  > überführen — die ISO 14001 (bzw. EMAS als EU-Variante) definiert die
  > Anforderungen daran. Die Stoffflussanalyse ist die quantitative
  > Basis: Alle Material- und Energieströme eines Betriebs werden als
  > Input-Output-Bilanz erfasst und visualisiert (z. B. als
  > Sankey-Diagramm), wodurch Verluste und Kreislaufpotenziale sichtbar
  > werden. Die Ökobilanz (Life Cycle Assessment nach ISO 14040) weitet
  > den Rahmen auf den gesamten Lebensweg eines Produkts —
  > Rohstoffgewinnung, Herstellung, Nutzung, Entsorgung — und übersetzt
  > ihn in Wirkungskategorien wie den CO2-Fußabdruck. Für
  > Wirtschaftsingenieurinnen und -ingenieure ist das eine Kernkompetenz:
  > Sie können technische Ströme messen und rechnen und müssen sie
  > zugleich betrieblich und rechtlich einordnen.

#### Lehrstoff

**Bereich Statistische Methoden:**
Statistische Tests, Annahmestichprobenprüfung.

> **Erläuterung (Statistische Tests und Annahmeprüfung):** Der Lehrstoff
> verdichtet die beiden urteilenden Verfahren des Moduls auf zwei Stichworte.
> „Statistische Tests" meint die Hypothesentest-Logik: eine Nullhypothese H0
> („kein Unterschied") gegen eine Alternative H1 stellen, vorab ein
> Signifikanzniveau α als akzeptiertes Risiko eines Fehlers 1. Art fixieren
> und über den p-Wert entscheiden, ob ein beobachteter Unterschied echt oder
> Stichproben-Zufall ist — in der Qualitätssicherung angewendet als t-Test
> für Mittelwertsvergleiche (zwei Maschinen, zwei Lose, vor/nach einer
> Prozessänderung) und als χ²-Test für Anteile und Häufigkeiten (Ausschuss
> vor/nach, Fehlerarten). Die Annahmestichprobenprüfung ist die normierte
> Sonderform für das Lieferurteil: AQL-Prüpläne nach ISO 2859 (attributiv)
> bzw. ISO 3951 (variabel) legen Stichprobenumfang n und Annahmezahl c so
> fest, dass eine Lieferung definierter Qualität mit hoher Wahrscheinlichkeit
> angenommen wird — das Standardwerkzeug der Wareneingangs- und Endkontrolle
> der Fertigung und die Datenbasis jeder Lieferantenbewertung. Beide
> Verfahren bauen auf den Vertrauensbereichen aus KM6 auf und laufen im
> Jahrgang in R (`t.test`, `chisq.test`, Paket `AcceptanceSampling`);
> KM8 führt sie mit der Prozesslenkung vom punktuellen Urteil zur laufenden
> Überwachung weiter.

**Bereich Umweltmanagement:**
Grundlagen der betrieblichen Umweltprüfung, Stoffflussanalyse und Ökobilanzen,
Anforderungen an Umwelt-, Ressourcen- und Abfallmanagement.

> **Erläuterung (Umweltprüfung und Ökobilanz):** Der Lehrstoff versammelt die
> analytischen Werkzeuge des betrieblichen Umweltschutzes und die
> Rahmenanforderungen, in denen sie eingesetzt werden. Die betriebliche
> Umweltprüfung ist die Initialanalyse eines Umweltmanagementsystems nach
> EMAS bzw. ISO 14001: Umweltaspekte (Emissionen, Abfälle, Energie- und
> Stoffeinsätze) erfassen, signifikante Aspekte bewerten und daraus
> Umweltziele samt Programm ableiten — die erste Aufgabe, der sich
> Umweltbeauftragte im Betrieb und in Zertifizierungsaudits stellen. Die
> Stoffflussanalyse macht den Betrieb als Input-Output-Bilanz seiner
> Material- und Energieströme rechenbar (visualisiert etwa im
> Sankey-Diagramm): Verluste, Kreislauf- und Reststoffpotenziale werden
> sichtbar — die Grundlage für Reststoffmanagement und Energieaudits. Die
> Ökobilanz (Life Cycle Assessment nach ISO 14040) weitet die Sicht auf den
> gesamten Lebensweg eines Produkts — Rohstoffgewinnung, Herstellung,
> Nutzung, Entsorgung — und überführt ihn in Wirkungskategorien wie den
> Product Carbon Footprint; sie wird zunehmend zum Kriterium der
> Lieferantenbewertung und der Nachhaltigkeitsberichterstattung. Die
> „Anforderungen an Umwelt-, Ressourcen- und Abfallmanagement" bezeichnen
> die System- und Rechtslage dafür: geordnete Abfalltrennung mit Bilanz-
> und Nachweispflichten, sparsamen Ressourceneinsatz, dokumentierte
> Verpflichtungen — vertieft in KM8 (Umweltrecht und Methoden) und im
> Energiemanagement des V. Jahrgangs.

### 8. Semester — Kompetenzmodul 8

> **Überblick:** KM8 wendet den statistischen Apparat auf den laufenden
> Betrieb an: Während KM7 punktuell urteilt („Ist der Unterschied echt?",
> „Nehmen wir die Lieferung an?"), fragt die Statistische Prozesslenkung
> (SPC), ob ein Prozess stabil bleibt, und die Prozessfähigkeit, ob er
> seine Toleranzen nicht nur jetzt, sondern dauerhaft erfüllen kann — aus
> Stichproben werden Regelkarten, aus Testurteilen werden
> Fähigkeitskennzahlen und Eingriffsentscheidungen. Der Bereich
> Umweltmanagement vertieft den KM7-Einstieg (Stoffflussanalyse, Ökobilanz)
> um das Umweltrecht und die Werkzeuge und Methoden des
> Umweltmanagements, mit denen betriebliche Problemstellungen rechtssicher
> analysiert und bewertet werden. Damit endet der IV. Jahrgang mit einer
> doppelten Kompetenz — Prozesse statistisch beherrschen, ihre
> Umweltauswirkungen managen —, auf der das Maturajahr mit Versuchsplanung,
> Zuverlässigkeit und Facility Management aufbaut.

#### Bildungs- und Lehraufgabe

Die Schülerinnen und Schüler können im

**Bereich Statistische Methoden**

- statistische Merkmalswerte von Produkten und Prozessen mit geeigneten Methoden
  analysieren sowie daraus betrieblich relevante Beurteilungen und Maßnahmen
  ableiten.

  > **Erläuterung:** Statistische Merkmalswerte sind die gemessenen oder
  > gezählten Qualitätseigenschaften von Produkten und Prozessen —
  > Durchmesser, Füllmenge, Druck, Ausschussanteil —, wie sie ab KM5 als
  > streuende Zufallsgrößen behandelt werden. Die Statistische Prozesslenkung
  > (SPC) setzt darauf die Laufzeitüberwachung: In regelmäßigen Stichproben
  > werden Lage und Streuung in Regelkarten (Shewhart-Karten, etwa x̄-s- oder
  > p-Karte) mit Warngrenzen und Eingriffsgrenzen verfolgt; ein Punkt
  > außerhalb der Grenzen oder ein auffälliges Muster (Trend, Punktefolge auf
  > einer Seite) signalisiert eine Sonderursache — Werkzeugverschleiß,
  > anderes Material, Bedienfehler —, die von der unvermeidlichen
  > Zufallsstreuung getrennt werden muss. Die Prozessfähigkeit vergleicht
  > dann die natürliche Streuung des stabilen Prozesses mit dem
  > Toleranzband: Die Indizes Cp (potenzielle Fähigkeit) und Cpk
  > (tatsächliche Fähigkeit inklusive Mittellage) sagen mit Werten ab 1,33
  > (branchenübliches Minimum), ob die Toleranzen künftig gehalten werden.
  > „Betrieblich relevante Beurteilungen und Maßnahmen ableiten" heißt: aus
  > Kartenbild und Kennzahlen entscheiden — nachregeln, Anlage stillsetzen,
  > Ursachenanalyse starten, den Fertigungsprozess freigeben oder
  > 100 %-Prüfung verhängen. Solche Nachweise (Regelkarten,
  > Fähigkeitsanalysen) verlangen Automobil-Normen wie die IATF 16949 von
  > Zulieferern; in R wird das Modul mit dem Paket `qcc` umgesetzt (Karten
  > zeichnen, Grenzen setzen, Capability berechnen).

**Bereich Umweltmanagement**

- betriebliche Problemstellungen mit Methoden des Umweltmanagements analysieren
  und bewerten.

  > **Erläuterung:** Während KM7 das Umweltmanagement konzeptionell öffnet
  > (Anforderungen der ISO 14001 bzw. EMAS, Stoffflussanalyse, Ökobilanz),
  > wendet KM8 es auf konkrete betriebliche Fälle an — ein
  > lösemittelemittierender Lackierbetrieb, eine problematische Abfallfraktion,
  > ein energieintensiver Prozess. „Analysieren" läuft über die
  > Input-Output-Sicht: Energie-, Material- und Abfallströme erfassen und als
  > Stoffflussbilanz (Sankey-Diagramm) sichtbar machen. „Bewerten" braucht
  > zwei Maßstäbe: das Umweltrecht — in Österreich etwa Gewerbeordnung mit
  > Immissionsschutz für Anlagen, Abfallwirtschaftsgesetz mit
  > Abfallverzeichnis und Nachweispflichten, Wasserecht, Chemikalien- und
  > Stoffrecht (REACh) — und die Werkzeuge des Umweltmanagements:
  > Signifikanzbewertung der Umweltaspekte, Umweltkennzahlen,
  > Umweltprogramm mit Maßnahmen, Verantwortlichen und Terminen. Im Beruf
  > ist das der Arbeitsalltag einer Umweltmanagementbeauftragten: das
  > Register der rechtlichen Umweltverpflichtungen führen, Aspekte bewerten,
  > den Umweltbericht für eine EMAS-Zertifizierung aufbereiten — und dabei
  > Prozess-, Kennzahlen- und Statistikkompetenz aus den früheren Modulen
  > (Prozesslandkarte KM3, Kennzahlen KM4, Verteilungen KM5/KM6)
  > kombinieren.

#### Lehrstoff

**Bereich Statistische Methoden:**
Statistische Prozesslenkung, Prozessfähigkeit.

> **Erläuterung (Statistische Prozesslenkung und Prozessfähigkeit):** Die
> statistische Prozesslenkung (SPC) überwacht Prozesse laufend über
> Stichproben in Regelkarten: Für variable Merkmale verfolgen X̄- und s-/R-
> Karten Lage und Streuung, für attributive Merkmale zählen p-, np-, c-
> oder u-Karten fehlerhafte Einheiten bzw. Fehler; die Eingriffsgrenzen
> werden aus der natürlichen Streuung (±3σ) so gesetzt, dass nur echte
> Signale zum Eingreifen führen. Interpretationsregeln (Nelson- bzw.
> Western-Electric-Regeln) machen auch Muster sichtbar — Trend, Reihe auf
> einer Seite, Punktefolge nahe der Grenze —, bevor Teile außerhalb der
> Toleranz gefertigt sind. Die Prozessfähigkeit quantifiziert das
> Verhältnis von Toleranzband zu Prozessstreuung: Cp misst die potenzielle,
> Cpk die tatsächliche Fähigkeit unter Berücksichtigung der Mittellage.
> In der Automobilindustrie kommen Maschinenfähigkeitsuntersuchungen
> (Cm/Cmk) und die Prüfmittelfähigkeit (MSA — erst ein taugliches
> Messsystem macht Merkmalswerte vertrauenswürdig) als
> Freigabevoraussetzung dazu. In R deckt das Paket `qcc` beide Stränge
> ab; Referenzlektüre ist NIST Kapitel 6.

**Bereich Umweltmanagement:**
Umweltrecht, Werkzeuge und Methoden des Umweltmanagements.

> **Erläuterung (Umweltrecht und Methoden des Umweltmanagements):** Der
> Lehrstoff verbindet zwei Stränge: das Umweltrecht — die für Betriebe
> unmittelbar geltenden Vorschriften und Pflichten (Anlagen- und
> Immissionsschutz über die Gewerbeordnung, Abfallwirtschaftsrecht mit
> Abfallverzeichnis-, Nachweis- und Bilanzpflichten, Wasserecht,
> Chemikalien- und Stoffrecht) — und die Werkzeuge und Methoden des
> Umweltmanagements: Umweltprüfung und Register der
> Umweltverpflichtungen, Signifikanzbewertung der Umweltaspekte,
> Stoffflussanalyse, Umweltkennzahlen, Ökobilanz und Maßnahmenprogramme.
> Die Methode ist dabei immer dieselbe: Problemstellung rechtlich
> einordnen, mit den Werkzeugen quantifizieren, bewerten (Signifikanz,
> Kosten, Risiko) und ein dokumentiertes Vorgehen ableiten — der
> PDCA-Zyklus aus KM3, angewandt auf den Umweltgegenstand. Diese
> Kombination aus technischem Messen und rechtlichem Bewerten ist der
> Kern des HWIT-Berufsbilds: Umweltbeauftragte und EMAS-Verantwortliche
> müssen Anlagen und Stoffströme verstehen und zugleich
> Behördenauflagen, Genehmigungslagen und Berichtspflichten korrekt
> handhaben; die vertiefte Energie- und Abfallthematik läuft im
> V. Jahrgang beim Energiemanagement weiter.

---

> **Hinweis (Sprachanforderung):** IV. Jahrgang (KM 7+8) — Niveau B1+ des GER
> (Business English), siehe `lehrplan/METADATA.md`.
