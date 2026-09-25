# Klassenauswertung — Einstiegstest 4AHWIT

**Datum:** 2026-09-07
**Klasse:** 4AHWIT
**Gegenstand:** PMM — Vorwissen Jahrgang 3 (KM5+KM6)
**Maximalpunkte:** 200

> Dieses Dokument ist anonymisiert und für die Ablage im öffentlichen Repository
> gedacht. Es nennt bewusst keine Namen.

## Rahmen

Der Einstiegstest prüfte den Stoff des Jahrgangs 3 (Kompetenzmodule KM5 und KM6,
Bereich *Statistische Methoden*) in fünf Blöcken:

1. Wahrscheinlichkeitsverteilungen (KM5)
2. Parameter & Schätzwerte (KM5)
3. Zufallsstreu- & Vertrauensbereiche (KM6)
4. Auswertung & Darstellung von Prüfergebnissen (KM6)
5. Lebensdauerverteilungen (KM6)

Das Ergebnis zählt **nicht** zur Note im Zeugnis. Es dient als Bestandsaufnahme:
Wäre der gesamte Jahrgangs-3-Stoff unterrichtet und abgedeckt worden, entspräche
die erreichte Punktezahl dem jeweiligen Leistungsstand.

## Gesamtbild

- Die Abgaben liegen im Bereich von 97 bis 145 von 200 Punkten.
- **Block 1 und 2 (KM5)** sind insgesamt am besten verankert: Verteilungsarten,
  Lagemaße/Streumaße, Parameter vs. Stichprobenkennzahlen und
  Diagrammtypen wurden überwiegend sicher beantwortet.
- **Block 5 (KM6, Lebensdauerverteilungen)** ist die mit Abstand größte Lücke:
  Weibull, Ausfallrate, Badewannenkurve, MTBF/MTTF und Zuverlässigkeitsfunktion
  wurden von der Mehrheit gar nicht oder nur pauschal bearbeitet.
- **Block 3 (KM6, Konfidenzintervalle)** zeigt Konzeptunsicherheiten bei
  z- vs. t-Verteilung, Standardfehler und ein-/zweiseitigen Intervallen.

## Häufigste Fehler

1. **Lebensdauerverteilungen (Block 5) unbearbeitet.** Sehr viele Fragen 41–50
   blieben leer oder wurden als Ganzes mit `-` und dem Vermerk „haben wir nicht
   gemacht" markiert. Da `-` wie „ich weiß nicht" wirkt, gab es dafür nur 0,5
   Punkte pro Option statt der vollen Wertung.
2. **Multiple-Correct systematisch zu knapp beantwortet.** Bei Fragen mit
   mehreren richtigen Optionen wurde häufig nur die auffälligste Option
   angekreuzt und weitere richtige Optionen wurden freigelassen. Jede
   freigelassene richtige Option kostet einen Punkt.
3. **σ vs. σ² bzw. Varianz vs. Standardabweichung verwechselt.** Mehrfach wurde
   σ als Varianz gedeutet (und umgekehrt), auch im Zusammenhang mit der
   Bessel-Korrektur.
4. **t-Verteilung vs. z-Approximation.** Typische Fehler: Freiheitsgrade als
   `n + 1` statt `n − 1`; t-Verteilung bei *bekanntem* σ; z-Approximation
   falsch begründet.
5. **Boxplot und IQR.** Der arithmetische Mittelwert wurde als Standardelement
   des Boxplots angenommen; der IQR wurde mit der Spannweite verwechselt.
6. **Diagrammtypen.** Das Histogramm wurde wiederholt für kategoriale Merkmale
   gehalten (richtig sind Balken- und Kreisdiagramm).
7. **„Keine Option trifft zu"** wurde teils gut erkannt (Fragen 18, 28, 44),
   teils wurden dort trotzdem Optionen angekreuzt.

## Empfehlungen für den Unterricht (Jahrgang 4)

- **KM6 wiederholen, KM5 nur punktuell auffrischen.** Der Schwerpunkt der
  Wiederholung sollte auf Konfidenzintervallen und Lebensdauerverteilungen
  liegen; die Grundlagen der Verteilungen sind überwiegend vorhanden.
- **Block 5 zuerst behandeln.** Weibull (β, η), Ausfallrate λ(t),
  Badewannenkurve, Zuverlässigkeitsfunktion R(t) sowie MTBF/MTTF gezielt
  aufbauen, da hier fast kein Vorwissen aktiv war.
- **Antworttechnik bei Multiple-Correct trainieren.** Jede Option einzeln auf
  „richtig/falsch" prüfen, statt nur die stärkste Aussage anzukreuzen.
- **Begriffspaare schärfen.** σ ↔ σ², Varianz ↔ Standardabweichung,
  Streumaß ↔ Lagemaß, t-Verteilung ↔ Standardnormalverteilung.
- **`-` nur bei echter Mehrdeutigkeit zulassen.** Klarstellen, dass `-` als
  „weiß nicht" gilt und nicht die volle Punktzahl bringt; bei unsicheren
  Antworten ist eine begründete Entscheidung besser.

## Prompt Injection Attempts

Anzahl festgestellter Prompt-Injection-Versuche: **0**. Es wurden keine Versuche
unternommen, die Bewertung durch eingeschleuste Anweisungen zu beeinflussen.
